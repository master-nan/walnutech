<template lang="pug">
  v-container
    v-layout(row wrap)
      v-flex(mr-2 xs12 sm6 md2)
        v-select(height="1" :items="items" label="状态" outline item-text="title" item-value="value" clearable v-model="list.status")
      v-flex(xs1 sm1 md1)
        v-btn(fab dark color="primary" @click='handleFilter')
          v-icon(dark) search
    v-card.mt-4(:class="{'pb-2':count}")
      div.pl-3
        div.font-weight-medium.display-1.py-4 {{ 'Article'|i18nName('TableTitle',self) }}
      v-divider
      div
        v-btn.info.z-index-1(fab absolute top right dark @click.stop="add")
          v-icon add
      v-data-table.elevation-1(:loading="loading" :headers="headers" :items="data" hide-actions)
        template(slot="headerCell" slot-scope="props")
          v-tooltip(bottom)
            span(slot="activator") {{ props.header.text|i18nName('Table',self) }}
            span {{ props.header.text|i18nName('Table',self) }}
        template(slot="items" slot-scope="props")
          td {{ props.index + 1 }}
          td.text-xs-left {{ props.item.title }}
          td.text-xs-left {{ props.item.cover }}
          td.text-xs-left {{ props.item.click }}
          td.text-xs-left
            v-chip(:color="props.item.status|statusChipFilter(4)|i18nName('Tag',self)" label outline) {{props.item.status|statusFilter(4)|i18nName('Tag',self)}}
          td.justify-left
            v-btn.my-1.mr-2(fab small color="primary" dark @click="edit(props)")
              v-icon edit
            v-btn.my-1.mr-2(fab small color="error" dark @click="del(props)")
              v-icon delete
            v-btn.my-1(round style="min-width:60px" v-if="props.item.status == 1" small color="warning" @click="enable(props)")
              slot {{'Draft'|i18nName('Button',self)}}
            v-btn.my-1(round style="min-width:60px" v-else small color="success" @click="enable(props)")
              slot {{'Publish'|i18nName('Button',self)}}
        template(slot="no-data")
          v-alert(:value="true" color="error" icon="warning" outline) Sorry, no data!
      div.text-xs-center.pt-3(v-show="count > 0")
        v-pagination(v-model="list.page" :length="pages" :total-visible="5")
        v-flex(xs12 sm12 md12 pt-3) 共&nbsp;{{count}}&nbsp;条&nbsp;&nbsp;&nbsp;&nbsp;前往&nbsp;&nbsp;
          input.input.text-center(v-model="p" @blur="changePage" @keyup.enter="changePage")
          slot &nbsp;&nbsp;页
    v-dialog(v-model="show" width="750px" persistent)
      v-card
        v-card-title.headline.grey.lighten-2(primary-title) {{title}}
        v-card-text
          v-form(ref="form" v-model="valid" lazy-validation)
            v-text-field(v-model="ruleForm.title" :rules="[v => !!v || 'Title is required']" label="标题" required)
            v-flex.mt-3(xs12)
              span.d-block.my-1.subheading(style="color:#838383") 封面
              el-upload.avatar-uploader(:headers="header" name="file" accept=".jpg,.png,.jpeg" :action="path" :show-file-list="false" :on-success="handleImgSuccess" :before-upload="beforeImgUpload")
                img.avatar(v-if="imageUrl" :src="imageUrl")
                i.el-icon-plus.avatar-uploader-icon(v-else)
            v-flex(xs12)
              span.d-block.my-1.subheading(style="color:#838383") 内容
              wEditor(ref="editor" @setContent="getContent" :content="ruleForm.content")
            v-btn.mt-2.mr-2(@click="cancel" dark)
              v-icon(dark left) mdi-close-circle
              slot {{'Cancel'|i18nName('Button',self)}}
            v-btn.mt-2(:disabled="!valid" @click="submit" color="primary")
              v-icon(dark left) check_circle
              slot {{'Submit'|i18nName('Button',self)}}
    MyLoading(ref="loading")
    MyMessage(ref="message")
    MyComfirm(ref="comfirm")
</template>
<script>
import wEditor from '@/views/components/editor/wEditor'
import util from '@/utils'
import http from '@/utils/http'
import api from '@/api'
export default{
  name: 'article-index',
  data () {
    return {
      self: this,
      loading: false,
      ruleForm: {
        cover_id: null,
        title: '',
        content: ''
      },
      index: 1,
      show: false,
      valid: true,
      headers: [
        { text: 'Index', sortable: false },
        { text: 'Title', sortable: false },
        { text: 'Cover', sortable: false },
        { text: 'Click', sortable: false },
        { text: 'Status', sortable: false },
        { text: 'Action', sortable: false }
      ],
      data: [],
      list: {
        status: null,
        page: 1,
        len: 15
      },
      type: 1,
      p: 1,
      count: 0,
      items: [
        { title: '草稿', value: 0 },
        { title: '发布', value: 1 }
      ],
      title: '添加文章',
      imageUrl: '',
      path: api.upload.img()
    }
  },
  components: {
    wEditor
  },
  computed: {
    pages () {
      if (this.count == null) return 0
      return Math.ceil(this.count / this.list.len)
    },
    header () {
      return {
        'X-Requested-Token': sessionStorage.getItem('token') ? sessionStorage.getItem('token') : null
      }
    }
  },
  methods: {
    handleImgSuccess (res, file) {
      util.response(res, this)
      if (res.data) {
        this.ruleForm.cover_id = res.data.id
        this.imageUrl = URL.createObjectURL(file.raw)
      }
    },
    beforeImgUpload (file) {
      const isLt2M = file.size / 1024 / 1024 < 2
      if (file.type !== 'image/jpeg' && file.type !== 'image/jpg' && file.type !== 'image/png') {
        this.$message.error('上传头像图片只能是jpg/png/ipeg格式!')
        return false
      }
      if (!isLt2M) {
        this.$message.error('上传头像图片大小不能超过 2MB!')
        return false
      }
      return true
    },
    changePage () {
      this.p = parseInt(this.p)
      if (isNaN(this.p)) {
        this.p = 1
      }
      if (this.p > this.pages) {
        this.p = this.pages
      }
      this.list.page = this.p
    },
    add () {
      this.title = '添加文章'
      this.type = 1
      this.show = true
      this.$nextTick(() => {
        this.ruleForm.cover_id = null
        this.ruleForm.title = ''
        this.ruleForm.content = ''
        this.imageUrl = ''
        this.getContent('')
        this.$refs.form.reset()
        delete this.ruleForm.guid
      })
    },
    edit (e) {
      this.title = '编辑文章'
      this.type = 2
      this.ruleForm.guid = e.item.guid
      this.ruleForm.cover_id = e.item.cover_id
      this.ruleForm.title = e.item.title
      this.ruleForm.content = e.item.content
      this.imageUrl = e.item.cover ? (http.baseURL + e.item.cover) : ''
      this.show = true
    },
    del (e) {
      let s = this
      this.$refs.comfirm.show(
        async function () {
          let res = await api.article.del(e.item.guid)
          util.response(res, this)
          if (res.code === 200) {
            s.data.splice(e.index, 1)
            s.$refs.message.open(res.error)
          } else {
            s.$refs.message.open(res.error, 'error')
          }
          s.$refs.comfirm.close()
        },
        function () {
          s.$refs.comfirm.close()
        })
    },
    cancel () {
      this.ruleForm.content = ''
      this.$nextTick(() => {
        this.$refs.form.reset()
        this.show = false
      })
    },
    getContent (v) {
      this.ruleForm.content = v
    },
    async enable (e) {
      let data = {
        'guid': e.item.guid,
        'status': e.item.status === 1 ? 0 : 1
      }
      let res = await api.article.enable(data)
      util.response(res, this)
      if (res.code === 200) {
        e.item.status = data.status
      } else {
        this.$refs.message.open(res.error, 'error')
      }
    },
    async submit () {
      this.$refs.editor.pushContent()
      if (this.$refs.form.validate()) {
        this.$refs.loading.open()
        let res = null
        if (this.type === 1) {
          res = await api.article.save(this.ruleForm)
        } else {
          res = await api.article.update(this.ruleForm)
        }
        util.response(res, this)
        this.$refs.loading.close()
        if (res.code === 200) {
          this.$refs.message.open('操作成功', 'success')
          this.show = false
          this.getData()
        } else {
          this.$refs.message.open(res.error, 'error')
        }
      }
    },
    handleFilter () {
      if (this.loading) return
      this.getData()
    },
    async getData () {
      this.loading = true
      let res = await api.article.index(this.list)
      util.response(res, this)
      this.loading = false
      if (res.code === 200 || res.code === 204) {
        this.data = res.data
        this.count = res.count
      }
    }
  },
  mounted () {
    this.getData()
  },
  watch: {
    'list.page' (val) {
      this.p = val
      this.getData()
    }
  }
}
</script>
<style lang="less" scoped>
.v-btn{
  margin-left: 0px;
  margin-right: 0px;
  margin-top: 0px;
  margin-bottom: 0px;
}
table tr{
  th span{
    font-size:14px;
  }
  td{
    font-size:14px;
  }
}
.avatar-uploader div i{
    border: 1px dashed #d9d9d9;
    border-radius: 6px;
    cursor: pointer;
    position: relative;
    overflow: hidden;
}
.avatar-uploader .el-upload:hover {
    border-color: #409EFF;
}
.avatar-uploader-icon {
    font-size: 28px;
    color: #8c939d;
    width: 100px;
    height: 100px;
    line-height: 100px;
    text-align: center;
}
.avatar {
    width: 100px;
    height: 100px;
    display: block;
}
</style>
