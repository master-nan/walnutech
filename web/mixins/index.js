const meta = require('./meta.json')

export default {
  watch: {
    '$route' () {
      this.setMeta()
    }
  },

  created () {
    if (process.env.VUE_ENV === 'client') return

    const metaData = meta[this.$route.path] || {}

    this.$ssrContext.title = metaData.title
    this.$ssrContext.description = metaData.description
    this.$ssrContext.keywords = metaData.keywords
  },

  mounted () {
    this.setMeta()
  },

  methods: {
    setMeta () {
      if (typeof document === 'undefined') return
      const index = this.$route.path.indexOf('/' + this.$store.state.lang)
      let str = this.$route.path
      if (index > -1) {
        str = this.$route.path.substr(this.$store.state.lang.length + 1, this.$route.path.length)
      }
      const metaData = meta[str] || {}
      if (metaData.title) document.title = metaData.title
      document.querySelector('meta[name="description"]').setAttribute('content', metaData.description)
      document.querySelector('meta[name="keywords"]').setAttribute('content', metaData.keywords)
    }
  }
}
