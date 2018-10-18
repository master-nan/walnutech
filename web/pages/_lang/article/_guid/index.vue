<template lang="pug">
  v-container.elevation-2.mb-5
    v-flex.mb-5(xs10 offset-xs1)
      div.text-xs-center
        h2.my-3.display-1 {{ data.title }}
        em.font-weight-light(v-if="data.description") {{ data.description }}
        //- span.body-2.font-weight-light  发布时间：
        //- span.font-weight-medium {{ data.create_at }} &nbsp;&nbsp;&nbsp;&nbsp;
        //- span.body-2.font-weight-light 阅读量：
        //- span.font-weight-medium {{ data.click }}
      //- v-divider
    v-layout(row wrap)
      v-flex(xs2 md2 offset-md1 fixed)
        v-layout(row wrap align-center)
          v-flex.text-xs-center(xs10)
            div.mb-1.subheading.font-weight-light — 发布时间 —
            div.mb-3.font-weight-medium(style="color:#00B0FF") {{ data.create_at }}
            div.mb-1.subheading.font-weight-light — 阅读量 —
            div.mb-3.font-weight-medium(style="color:#00B0FF") {{ data.click }}
            div.mb-1.subheading.font-weight-light — 发布者 —
            div.font-weight-medium(style="color:#00B0FF") {{ data.nickname }}
          v-flex(xs2 style="height:200px")
            v-divider(vertical)
      v-flex(xs11 md7)
        div(v-html="data.content")
      v-flex(xs12)
        v-divider
      v-flex(xs12)
        div aaa
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
