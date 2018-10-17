<template lang="pug">
  v-container
    div.my-5.by-5
    v-flex.mt-5.bt-5(xs12)
      div.text-xs-center
        h2.my-3.display-1 {{ data.title}}
        span.body-2.font-weight-light  发布时间：
          slot.font-weight-bold {{ data.create_at }} &nbsp;&nbsp;&nbsp;&nbsp;
          slot 阅读量：
          slot.font-weight-bold {{ data.click }}
    v-flex.my-3(xs12 md8 offset-md2)
      v-divider
    v-flex(xs12 md6 offset-md3)
      div(v-html="data.content")
</template>
<script>
import api from '~/api'
export default {
  layout: 'home',
  async asyncData ({ params }) {
    const guid = params.guid
    const res = await api.article.read(guid)
    if (res.code === 200) {
      console.log(res.data)
      return {
        data: res.data
      }
    }
  },
  head () {
    return {
      title: this.data.title + ' - Walnutech'
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
