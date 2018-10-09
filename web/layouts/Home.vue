<template lang="pug">
  v-app
    v-content
      Header
      v-layout
        //- transition(name="fade-transform" mode="out-in")
        nuxt
      Footer
</template>
<script>
import Header from './Header'
import Footer from './Footer'
export default {
  components: {
    Footer,
    Header
  },
  data () {
    return {}
  },
  computed: {
    setting () {
      return this.$store.getters.getSetting
    }
  },
  methods: {}
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
