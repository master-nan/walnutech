<template lang="pug">
v-container
  v-container.elevation-2.my-3
    v-flex.mb-5(xs12)
      div.text-xs-center
        h2.display-1 {{ data.title }}
        em.font-weight-light(v-if="data.description") {{ data.description }}
        //- span.body-2.font-weight-light  发布时间：
        //- span.font-weight-medium {{ data.create_at }} &nbsp;&nbsp;&nbsp;&nbsp;
        //- span.body-2.font-weight-light 阅读量：
        //- span.font-weight-medium {{ data.click }}
      //- v-divider
    v-layout(row wrap)
      v-flex(xs12 md2 offset-md1 fixed)
        v-layout(row wrap align-center)
          v-flex.text-xs-center(xs10)
            div.mb-1.subheading.font-weight-light — {{ $t('article.time') }} —
            div.mb-3.font-weight-medium(style="color:#00B0FF") {{ data.create_at }}
            div.mb-1.subheading.font-weight-light — {{ $t('article.click') }} —
            div.mb-3.font-weight-medium(style="color:#00B0FF") {{ data.click }}
            div.mb-1.subheading.font-weight-light — {{ $t('article.author') }} —
            div.font-weight-medium(style="color:#00B0FF") {{ data.nickname }}
          v-flex(xs2 style="height:200px")
            v-divider(vertical)
      v-flex(xs12 md7)
        div.mb-4(v-html="data.content")
    v-flex(xs12)
      v-divider
    v-layout(row wrap)
      v-flex.mt-3(xs12 md5)
        v-card.subheading.pa-3 {{ $t('article.last') }}:&nbsp;&nbsp;
          span.body-1
      v-flex.mt-3(xs12 md5 offset-md2)
        v-card.subheading.pa-3 {{ $t('article.next') }}:&nbsp;&nbsp;
          span.body-1
</template>
<script>
import api from '~/api'
export default {
  layout: 'detail',
  async asyncData ({ params }) {
    const guid = params.guid
    const res = await api.article.read(guid)
    if (res.code === 200) {
      return {
        data: res.data
      }
    }
  },
  head () {
    const keywords = this.data.keywords ? (this.data.keywords + ', walnutech, master-nan') : 'walnutech, master-nan'
    const description = this.data.description ? this.data.description : this.data.content.substr(0, 50)
    return {
      title: this.data.title + ' - Walnutech',
      meta: [
        { name: 'keywords', content: keywords },
        { hid: 'description', name: 'description', content: description }
      ]
    }
  },
  data () {
    return {
      data: []
    }
  },
  methods: {
  }
}
</script>
