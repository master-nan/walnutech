<template lang="pug">
  v-app
    v-layout
      v-content
        m-header
        v-layout
          //- transition(name="fade-transform" mode="out-in")
          nuxt
        m-footer
      v-btn.white--text(:class="{ 'show': moving, 'hidden': !moving }" color="red" fixed bottom right fab @click="toTop")
        v-icon mdi-apple-keyboard-control
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
    moving () {
      return this.$store.getters.getMoving
    }
  },
  methods: {
    toTop () {
      let distance = document.documentElement.scrollTop || document.body.scrollTop;
      (function jump () {
        // 越接近顶部速度越慢
        let step = distance / 5
        if (distance > 1) {
          distance -= step
          window.scrollTo(0, distance)
          setTimeout(jump, 20)
        } else {
          window.scrollTo(0, 0)
        }
      })()
    }
  }
}
</script>
<style scoped>
.show{
  transition: all 0.5s;
  opacity: 1;
}
.hidden{
  transition: all 0.5s;
  opacity: 0;
}

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
