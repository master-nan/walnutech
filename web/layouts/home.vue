<template lang="pug">
  v-app
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
