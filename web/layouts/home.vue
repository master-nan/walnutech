<template lang="pug">
  v-app
    v-layout(v-scroll="onScroll" column align-center justify-center)
      v-content
        m-header
        v-layout
          //- transition(name="fade-transform" mode="out-in")
          nuxt
        m-footer
</template>
<script>
import MHeader from './header'
import MFooter from './footer'
import Meta from '~/mixins/index'

export default {
  mixins: [Meta],
  components: {
    MHeader,
    MFooter
  },
  data () {
    return {
    }
  },
  computed: {
    setting () {
      return this.$store.getters.getSetting
    }
  },
  methods: {
    onScroll (e) {
      console.log(111)
      this.offsetTop = window.pageYOffset || document.documentElement.scrollTop
    }
  }
}
</script>
<style>
.fade-transform-leave-active,
.fade-transform-enter-active {
  transition: all 0.5s;
}
.fade-transform-enter {
  opacity: 0;
  transform: translateX(-30px);
}
.fade-transform-leave-to {
  opacity: 0;
  transform: translateX(30px);
}
.v-navigation-drawer__border {
  left: 299px;
}
</style>
