<template lang="pug">
  v-content
    section
      v-parallax(src="/home.jpg" height="600")
        v-layout.white--text(column align-center justify-center)
          img(src="~assets/images/logo.png" alt="Vuetify.js" height="180")
          h1.white--text.my-3.display-1.text-xs-center Master-nan
          div.subheading.mb-2.text-xs-center {{ $t('index.headDescription') }}
          v-btn.blue.lighten-2.mt-3(dark large href="mailto:jszj_dwy1989@163.com")
            v-icon(left) send
            slot {{ $t('index.headButton') }}
    section
      v-layout.my-5(column wrap align-center)
        v-flex.my-1(xs12 sm4)
          div.text-xs-center
            h2.mb-2.headline {{ $t('index.projectTitle') }}
            span.body-1.font-weight-light.font-italic {{ $t('index.projectDescription') }}
        v-flex(xs12)
          v-container(grid-list-xl)
            v-layout(row wrap align-center)
              v-flex(xs12 md4)
                v-card.elevation-0.transparent
                  v-card-text.text-xs-center
                    a(target="_blank" href="https://github.com/master-nan/vue-thinkphp-admin")
                      v-icon.blue--text.text--lighten-2(x-large) mdi-github-circle
                  v-card-title.layout.justify-center(primary-title)
                    div.headline.text-xs-center Vue-Thinkphp-Admin
                  v-card-text 基于vue和thinkphp的后台管理项目。使用了element-ui框架，是针对动态了路由设计的权限管理项目，不同权限用户登录分配不同路由提交给前端渲染，并在后台方法中加入过滤进一步进行权限验证。包含vuex全局状态管理、axios异步数据请求、filters全局过滤等。项目功能包含部门、岗位、菜单、用户、权限等。
                    a(style="text-decoration: underline;color:#1976d2" href="https://github.com/master-nan/vue-thinkphp-admin") [Details]
              v-flex(xs12 md4)
                v-card.elevation-0.transparent
                  v-card-text.text-xs-center
                    a(target="_blank" href="https://github.com/master-nan/vuetify-admin")
                      v-icon.blue--text.text--lighten-2(x-large) mdi-github-circle
                  v-card-title.layout.justify-center(primary-title)
                    div.headline Vuetify-Admin
                  v-card-text 基于vue和thinkphp的后台管理项目。同样也是针对动态路由设计的，该项目是在vue-thinkphp-admin的基础上将element-ui换成了vuetify并改进了部分代码逻辑以及数据库部分修改。同时加入了国际化等一些新的功能方法。
                    a(style="text-decoration: underline;color:#1976d2" href="https://github.com/master-nan/vuetify-admin") [Details]
              v-flex(xs12 md4)
                v-card.elevation-0.transparent
                  v-card-text.text-xs-center
                    a(target="_blank" href="https://github.com/master-nan/walnutech")
                      v-icon.blue--text.text--lighten-2(x-large) mdi-github-circle
                  v-card-title.layout.justify-center(primary-title)
                    div.headline.text-xs-center Walnutech
                  v-card-text 基于vue的个人网站项目。使用了nuxt以及vuetify，nuxt和vuetify都是vue的通用框架，nuxt主要用于ui渲染提高渲染效率以及seo优化，提供了异步数据加载、中间件支持、布局支持等同时也集成了vue全家桶；vuetify是一个渐进式的ui框架，提供绝大部分组件以及适用于任何应用的解决方案。本项目包含web网站以及后台管理，后台管理用到了是另一个开源项目vuetify-admin。
                    a(style="text-decoration: underline;color:#1976d2" href="https://github.com/master-nan/walnutech") [Details]
    section
      v-parallax(src="/mid.jpg" height="500")
        v-layout(column align-center justify-center)
          div.headline.white--text.mb-3.text-xs-center {{ $t('index.somethingTitle') }}
          //- em
    section
      v-layout.py-5.bgc(row wrap justify-center align-center)
        v-flex.my-1(xs12 sm12)
          div.text-xs-center
            h2.mb-2.headline {{ $t('index.pictureTitle') }}
            span.body-1.font-weight-light.font-italic  {{ $t('index.pictureDescription') }}
        v-flex(xs12 sm6 lg6)
          v-card.elevation-0.transparent
            //- v-container(grid-list-lg fluid)
              v-layout(row wrap)
                v-flex(xs12 sm4 d-flex)
                  v-card(flat tile class="d-flex")
                    v-img.bgc(src="http://api.vuetify.walnutech.com/uploads/scenery/1.jpg" lazy-src="/mosaic.jpeg" aspect-ratio="1.7")
                      v-layout(slot="placeholder" fill-height align-center justify-center ma-0)
                        v-progress-circular(indeterminate color="grey lighten-5")
                v-flex(xs12 sm4 d-flex)
                  v-card(flat tile class="d-flex")
                    v-img.bgc(src="http://api.vuetify.walnutech.com/uploads/scenery/2.jpg" lazy-src="/mosaic.jpeg" aspect-ratio="1.7")
                      v-layout(slot="placeholder" fill-height align-center justify-center ma-0)
                        v-progress-circular(indeterminate color="grey lighten-5")
                v-flex(xs12 sm4 d-flex)
                  v-card(flat tile class="d-flex")
                    v-img.bgc(src="http://api.vuetify.walnutech.com/uploads/scenery/3.jpg" lazy-src="/mosaic.jpeg" aspect-ratio="1.7")
                      v-layout(slot="placeholder" fill-height align-center justify-center ma-0)
                        v-progress-circular(indeterminate color="grey lighten-5")
                v-flex(xs12 sm4 d-flex)
                  v-card(flat tile class="d-flex")
                    v-img.bgc(src="http://api.vuetify.walnutech.com/uploads/scenery/4.jpg" lazy-src="/mosaic.jpeg" aspect-ratio="1.7")
                      v-layout(slot="placeholder" fill-height align-center justify-center ma-0)
                        v-progress-circular(indeterminate color="grey lighten-5")
                v-flex(xs12 sm4 d-flex)
                  v-card(flat tile class="d-flex")
                    v-img.bgc(src="http://api.vuetify.walnutech.com/uploads/scenery/5.jpg" lazy-src="/mosaic.jpeg" aspect-ratio="1.7")
                      v-layout(slot="placeholder" fill-height align-center justify-center ma-0)
                        v-progress-circular(indeterminate color="grey lighten-5")
                v-flex(xs12 sm4 d-flex)
                  v-card(flat tile class="d-flex")
                    v-img.bgc(src="http://api.vuetify.walnutech.com/uploads/scenery/6.jpg" lazy-src="/mosaic.jpeg" aspect-ratio="1.7")
                      v-layout(slot="placeholder" fill-height align-center justify-center ma-0)
                        v-progress-circular(indeterminate color="grey lighten-5")
    section
      v-container(grid-list-xl)
        v-layout.my-5(row wrap justify-center)
          v-flex(xs12 sm4)
            v-card.elevation-0.transparent
              v-card-title.layout.justify-center(primary-title)
                div.headline {{ $t('index.profileTitle') }}
              v-card-text {{ $t('index.profileContent') }}
          v-flex(xs12 sm4 offset-sm1)
            v-card.elevation-0.transparent
              v-card-title.layout.justify-center(primary-title)
                div.headline {{ $t('index.contactTitle') }}
              v-card-text {{ $t('index.contactContent') }}
              v-list.transparent
                v-list-tile
                  v-list-tile-action
                    v-icon.blue--text.text--lighten-2 place
                  v-list-tile-content
                    v-list-tile-title {{ $t('index.contactAddress') }}
                v-list-tile
                  v-list-tile-action
                    v-icon.blue--text.text--lighten-2 email
                  v-list-tile-content
                    v-list-tile-title jszj_dwy1989@163.com
                v-list-tile
                  v-list-tile-action
                    v-icon.blue--text.text--lighten-2 mdi-sina-weibo
                  v-list-tile-content
                    v-list-tile-title
                      a(style="text-decoration: underline;color:#1976d2" target="_blank" href="https://weibo.com/u/1853866487") {{ $t('index.contactWeibo') }}
</template>
<script>
// import api from '~/api'
export default {
  layout: 'home',
  // 服务端渲染方式
  async asyncData ({params}) {
    // let res = await api.index()
    // if (res.code === 200) {
    //   return {
    //     data: res.data
    //   }
    // }
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
