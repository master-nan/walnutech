import Vue from 'vue'
import '@mdi/font/css/materialdesignicons.min.css'
import 'babel-polyfill'
import Components from '~/components/index'

Object.keys(Components).forEach(key => {
  Vue.component(key, Components[key])
})
