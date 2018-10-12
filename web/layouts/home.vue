<template lang="pug">
  v-app
    v-layout(@contextmenu="rightBan")
      v-content
        m-header
        v-layout
          //- transition(name="fade-transform" mode="out-in")
          nuxt
        m-footer
      v-btn.white--text(:class="{ 'show': up, 'hidden': !up }" color="red" fixed bottom right fab @click="$vuetify.goTo(0, {duration: 600,offset: 0,easing: 'easeInOutQuad'})")
        v-icon mdi-chevron-left
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
    },
    up () {
      return this.$store.getters.getUp
    }
  },
  methods: {
    rightBan (e) {
      e.preventDefault()
    },
    // vuetify有自带方法不需要用这个了
    goTop () {
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
  transform: rotate(90deg) scale(1);
  -webkit-transform: rotate(90deg) scale(1);
  -moz-transform: rotate(90deg) scale(1);
  -ms-transform: rotate(90deg) scale(1);
  -o-transform: rotate(90deg) scale(1);
}
.hidden{
  transition: all 0.5s;
  transform: rotate(0deg) scale(0);
  -webkit-transform: rotate(0deg) scale(0);
  -moz-transform: rotate(0deg) scale(0);
  -ms-transform: rotate(0deg) scale(0);
  -o-transform: rotate(0deg) scale(0);
}

/* .fade-transform-leave-active,
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
} */
</style>
