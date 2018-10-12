<template lang="pug">
  v-content
    section
      v-parallax(src="/hero.jpeg" height="600")
        v-layout.white--text(column align-center justify-center)
          img(src="~/assets/images/logo.png" alt="Vuetify.js" height="180")
          h1.white--text.my-3.display-1.text-xs-center Master-nan
          div.subheading.mb-2.text-xs-center Front-end &amp; Back-end Development
          v-btn.blue.lighten-2.mt-3(dark large href="mailto:jszj_dwy1989@163.com")
            v-icon(left) send
            slot Sent Message
    section
      v-layout.my-5(column wrap align-center)
        v-flex.my-1(xs12 sm4)
          div.text-xs-center
            h2.mb-2.headline 个人开源项目
            span.body-1.font-weight-light.font-italic 一些开箱即用的小项目
        v-flex(xs12)
          v-container(grid-list-xl)
            v-layout(row wrap align-center)
              v-flex(xs12 md4)
                v-card.elevation-0.transparent
                  v-card-text.text-xs-center
                    a(target="_blank" href="https://github.com/master-nan/vue-thinkphp-admin")
                      v-icon.blue--text.text--lighten-2(x-large) mdi-github-box
                  v-card-title.layout.justify-center(primary-title)
                    div.headline.text-xs-center Vue-Thinkphp-Admin
                  v-card-text 基于vue和thinkphp的后台管理项目。使用了element-ui框架，是针对动态了路由设计的权限管理项目，不同权限用户登录分配不同路由提交给前端渲染，并在后台方法中加入过滤进一步进行权限验证。包含vuex全局状态管理、axios异步数据请求、filters全局过滤等。项目功能包含部门、岗位、菜单、用户、权限等。
                    a(style="text-decoration: underline;color:#1976d2" href="#") [详 情]
              v-flex(xs12 md4)
                v-card.elevation-0.transparent
                  v-card-text.text-xs-center
                    a(target="_blank" href="https://github.com/master-nan/vuetify-admin")
                      v-icon.blue--text.text--lighten-2(x-large) mdi-github-circle
                  v-card-title.layout.justify-center(primary-title)
                    div.headline Vuetify-Admin
                  v-card-text 基于vue和thinkphp的后台管理项目。同样也是针对动态路由设计的，该项目是在vue-thinkphp-admin的基础上将element-ui换成了vuetify并改进了部分代码逻辑以及数据库部分修改。同时加入了国际化等一些新的功能方法。
                    a(style="text-decoration: underline;color:#1976d2" href="#") [详 情]
              v-flex(xs12 md4)
                v-card.elevation-0.transparent
                  v-card-text.text-xs-center
                    a(target="_blank" href="https://github.com/master-nan/walnutech")
                      v-icon.blue--text.text--lighten-2(x-large) mdi-github-circle
                  v-card-title.layout.justify-center(primary-title)
                    div.headline.text-xs-center Walnutech
                  v-card-text 基于vue的个人网站项目。使用了nuxt以及vuetify，nuxt和vuetify都是vue的通用框架，nuxt主要用于ui渲染提高渲染效率以及seo优化，提供了异步数据加载、中间件支持、布局支持等同时也集成了vue全家桶；vuetify是一个渐进式的ui框架，提供绝大部分组件以及适用于任何应用的解决方案。本项目包含web网站以及后台管理，后台管理用到了是另一个开源项目vuetify-admin。
                    a(style="text-decoration: underline;color:#1976d2" href="#") [详 情]
    section
      v-parallax(src="/section.jpg" height="380")
        v-layout(column align-center justify-center)
          div.headline.white--text.mb-3.text-xs-center Web development has never been easier
          em Kick-start your application today
    section
      v-layout.py-5.bgc(row wrap justify-center align-center)
        v-flex.my-1(xs12 sm12)
          div.text-xs-center
            h2.mb-2.headline 图片欣赏
            span.body-1.font-weight-light.font-italic  (⊙ˍ⊙)摄影学习之路，不定期更新
        v-flex(xs12 sm6 lg6)
          v-card.elevation-0.transparent
            v-container(grid-list-lg fluid)
              v-layout(row wrap)
                v-flex(xs12 sm4 d-flex)
                  v-card(flat tile class="d-flex")
                    v-img.bgc(src="/plane.jpg" lazy-src="~/assets/mosaic.jpeg" aspect-ratio="1.7" contain)
                      v-layout(slot="placeholder" fill-height align-center justify-center ma-0)
                        v-progress-circular(indeterminate color="grey lighten-5")
                v-flex(xs12 sm4 d-flex)
                  v-card(flat tile class="d-flex")
                    v-img.bgc(src="/plane.jpg" lazy-src="~/assets/mosaic.jpeg" aspect-ratio="1.7" contain)
                      v-layout(slot="placeholder" fill-height align-center justify-center ma-0)
                        v-progress-circular(indeterminate color="grey lighten-5")
                v-flex(xs12 sm4 d-flex)
                  v-card(flat tile class="d-flex")
                    v-img.bgc(src="/plane.jpg" lazy-src="~/assets/mosaic.jpeg" aspect-ratio="1.7" contain)
                      v-layout(slot="placeholder" fill-height align-center justify-center ma-0)
                        v-progress-circular(indeterminate color="grey lighten-5")
                v-flex(xs12 sm4 d-flex)
                  v-card(flat tile class="d-flex")
                    v-img.bgc(src="/plane.jpg" lazy-src="~/assets/mosaic.jpeg" aspect-ratio="1.7" contain)
                      v-layout(slot="placeholder" fill-height align-center justify-center ma-0)
                        v-progress-circular(indeterminate color="grey lighten-5")
                v-flex(xs12 sm4 d-flex)
                  v-card(flat tile class="d-flex")
                    v-img.bgc(src="/plane.jpg" lazy-src="~/assets/mosaic.jpeg" aspect-ratio="1.7" contain)
                      v-layout(slot="placeholder" fill-height align-center justify-center ma-0)
                        v-progress-circular(indeterminate color="grey lighten-5")
                v-flex(xs12 sm4 d-flex)
                  v-card(flat tile class="d-flex")
                    v-img.bgc(src="/plane.jpg" lazy-src="~/assets/mosaic.jpeg" aspect-ratio="1.7" contain)
                      v-layout(slot="placeholder" fill-height align-center justify-center ma-0)
                        v-progress-circular(indeterminate color="grey lighten-5")
    section
      v-container(grid-list-xl)
        v-layout.my-5(row wrap justify-center)
          v-flex(xs12 sm4)
            v-card.elevation-0.transparent
              v-card-title.layout.justify-center(primary-title)
                div.headline 简介
              v-card-text 作者程序猿一枚（废话，从事前后端开发工作，喜欢并拥抱新的技术，敢于面对困难和挑战。根据平时学习和工作的积累做了几个开源项目，互相学习交流，项目相对都比较简单开箱即用；同时也不断学习，希望可以继续开发一些开源小项目，后面有时间会持续更新，欢迎大家使用。
          v-flex(xs12 sm4 offset-sm1)
            v-card.elevation-0.transparent
              v-card-title.layout.justify-center(primary-title)
                div.headline 联系
              v-card-text 如果你使用了上述开源项目并遇到一些疑问可以通过下面方式联系作者。
              v-list.transparent
                v-list-tile
                  v-list-tile-action
                    v-icon.blue--text.text--lighten-2 place
                  v-list-tile-content
                    v-list-tile-title 中国江苏镇江
                v-list-tile
                  v-list-tile-action
                    v-icon.blue--text.text--lighten-2 email
                  v-list-tile-content
                    a(style="text-decoration: underline;color:#1976d2" href="mailto:jszj_dwy1989@163.com")
                      v-list-tile-title jszj_dwy1989@163.com
                v-list-tile
                  v-list-tile-action
                    v-icon.blue--text.text--lighten-2 mdi-sina-weibo
                  v-list-tile-content
                    v-list-tile-title
                      a(style="text-decoration: underline;color:#1976d2" target="_blank" href="https://weibo.com/u/1853866487") 微 博
</template>
<script>
import api from '~/api'
export default {
  layout: 'home',
  async asyncData ({params}) {
    let res = await api.index()
    if (res.code === 200) {
      return {
        data: res.data
      }
    }
  },
  data () {
    return {
      data: []
    }
  },
  components: {
  }
}
</script>
<style scoped>
a:focus,
a:active {
  outline: none;
}
a,
a:focus,
a:hover {
  cursor: pointer;
  color: inherit;
  text-decoration: none;
}
.bgc{
  background-color: #e3e3e3
}
</style>
