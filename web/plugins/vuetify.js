import Vue from 'vue'
import {
  Vuetify,
  VApp,
  VCard,
  VNavigationDrawer,
  VFooter,
  VList,
  VBtn,
  VIcon,
  VGrid,
  VToolbar,
  VDivider,
  VAvatar,
  VParallax,
  VTooltip,
  VImg,
  VProgressCircular
} from 'vuetify'

import colors from 'vuetify/es5/util/colors'
import '@mdi/font/css/materialdesignicons.min.css'
import 'babel-polyfill'
import Components from '~/components/index'

Vue.use(Vuetify, {
  iconfont: 'md',
  components: {
    VApp,
    VCard,
    VNavigationDrawer,
    VFooter,
    VList,
    VBtn,
    VIcon,
    VGrid,
    VToolbar,
    VDivider,
    VAvatar,
    VParallax,
    VTooltip,
    VImg,
    VProgressCircular
  },
  theme: {
    primary: '#1976d2', // a color that is not in the material colors palette
    accent: colors.grey.darken3,
    secondary: colors.amber.darken3,
    info: colors.teal.lighten1,
    warning: colors.amber.base,
    error: colors.deepOrange.accent4,
    success: colors.green.accent3
  }
})

Object.keys(Components).forEach(key => {
  Vue.component(key, Components[key])
})
