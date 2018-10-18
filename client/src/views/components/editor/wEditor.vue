<template>
    <div>
        <div ref="editor" style="text-align:left"></div>
    </div>
</template>

<script>
import E from 'wangeditor'
import util from '@/utils'
import api from '@/api'

export default {
  name: 'editor',
  props: ['content'],
  data () {
    return {
      editorContent: '',
      pro: null
    }
  },
  methods: {
    initEditor () {
      var editor = new E(this.$refs.editor)
      this.pro = editor
      editor.customConfig.onchange = (html) => {
        this.editorContent = html
      }
      // 粘贴文本过滤掉图片
      // editor.customConfig.pasteIgnoreImg = true
      editor.customConfig.zIndex = 100
      // 显示上传图片tab
      editor.customConfig.uploadImgServer = api.upload.img()
      // 单次最大上传数量
      editor.customConfig.uploadImgMaxLength = 1
      // 隐藏网络图片tab
      editor.customConfig.showLinkImg = false
      // 设置上传header
      editor.customConfig.uploadImgHeaders = {
        'Accept': 'text/x-json'
      }
      editor.customConfig.uploadFileName = 'file'
      editor.customConfig.customAlert = function (info) {
        util.message(info, 'error')
      }
      editor.customConfig.uploadImgHooks = {
        before: function (xhr, editor, files) {
          // 图片上传之前触发
          // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象，files 是选择的图片文件

          // 如果返回的结果是 {prevent: true, msg: 'xxxx'} 则表示用户放弃上传
          // return {
          //     prevent: true,
          //     msg: '放弃上传'
          // }
        },
        success: function (xhr, editor, result) {
          // 图片上传并返回结果，图片插入成功之后触发
          // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象，result 是服务器端返回的结果
        },
        fail: function (xhr, editor, result) {
          // 图片上传并返回结果，但图片插入错误时触发
          // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象，result 是服务器端返回的结果
        },
        error: function (xhr, editor) {
          // 图片上传出错时触发
          // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象
        },
        timeout: function (xhr, editor) {
          // 图片上传超时时触发
          // xhr 是 XMLHttpRequst 对象，editor 是编辑器对象
        },
        customInsert: function (insertImg, result, editor) {
          if (result.data.status === 'success') {
            // var url = config.imgUrl + result.data.result.file
            // insertImg(url)
          } else {
            util.message('上传失败', 'error')
          }
          // result 必须是一个 JSON 格式字符串！！！否则报错
        }
      }
      editor.create()
      editor.txt.html(this.content)
    },
    pushContent (val) {
      this.$emit('setContent', this.editorContent)
    }
  },
  mounted () {
    this.initEditor()
  },
  watch: {
    content (val) {
      this.content = val
      this.editorContent = this.content
      this.pro.txt.html(this.content)
    }
  }
}
</script>
