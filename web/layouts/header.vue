<template lang="pug">
  v-toolbar(:class="{ 'fix': moving, 'dolly': !moving }" :flat="!moving" dark fixed)
    router-link(to="/")
      v-avatar(:tile="true" size="58" color="grey lighten-4")
        img(src="~/assets/images/logo.png" alt="avatar")
    v-toolbar-title Walnutech
    v-spacer
    v-btn(icon target="_black" href="https://github.com/master-nan/walnutech/stargazers")
      v-icon(size="32px") favorite
    v-btn(icon target="_blank" href="https://github.com/master-nan")
      v-icon(size="32px") mdi-github-circle
</template>
<script>
export default {
  data () {
    return {
      offsetTop: 0
    }
  },
  computed: {
    moving () {
      return this.$store.getters.getMoving
    }
  },
  methods: {
    onScroll (e) {
      this.offsetTop = document.documentElement.scrollTop
      if (this.offsetTop > 3) {
        this.$store.dispatch('setMoving', true)
      } else {
        this.$store.dispatch('setMoving', false)
      }
      if (this.offsetTop > 200) {
        this.$store.dispatch('setUp', true)
      } else {
        this.$store.dispatch('setUp', false)
      }
    }
  },
  mounted () {
    window.addEventListener('scroll', this.onScroll, true)
  }
}
</script>
<style lang="less" scoped>
.fix{
  background-color:rgba(25,118,210,0.8) !important;
}
.dolly{
  background-color:rgba(0,0,0,0) !important;
}
</style>
