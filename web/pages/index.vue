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
    <section>
      <v-layout column wrap class="my-5" align-center>
        v-flex.my-1(xs12 sm4)
          div.text-xs-center
            h2.mb-2.headline 个人开源项目
            span.body-1.font-weight-light.font-italic 一些开箱即用的小项目
        <v-flex xs12>
          <v-container grid-list-xl>
            <v-layout row wrap align-center>
              <v-flex xs12 md4>
                <v-card class="elevation-0 transparent">
                  <v-card-text class="text-xs-center">
                    v-btn(icon :flat="false")
                      <v-icon x-large class="blue--text text--lighten-2">mdi-github-box</v-icon>
                  </v-card-text>
                  <v-card-title primary-title class="layout justify-center">
                    <div class="headline text-xs-center">Vue-Thinkphp-Admin</div>
                  </v-card-title>
                  <v-card-text>Cras facilisis mi vitae nunc lobortis pharetra. Nulla volutpat tincidunt ornare. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam in aliquet odio. Aliquam eu est vitae tellus bibendum tincidunt. Suspendisse potenti. </v-card-text>
                </v-card>
              </v-flex>
              <v-flex xs12 md4>
                <v-card class="elevation-0 transparent">
                  <v-card-text class="text-xs-center">
                    v-btn(icon flat target="_blank")
                      <v-icon x-large class="blue--text text--lighten-2">mdi-github-circle</v-icon>
                  </v-card-text>
                  <v-card-title primary-title class="layout justify-center">
                    <div class="headline">Vuetify-Admin</div>
                  </v-card-title>
                  <v-card-text>Cras facilisis mi vitae nunc lobortis pharetra. Nulla volutpat tincidunt ornare. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam in aliquet odio. Aliquam eu est vitae tellus bibendum tincidunt. Suspendisse potenti. </v-card-text>
                </v-card>
              </v-flex>
              <v-flex xs12 md4>
                <v-card class="elevation-0 transparent">
                  <v-card-text class="text-xs-center">
                    <v-icon x-large class="blue--text text--lighten-2">mdi-github-face</v-icon>
                  </v-card-text>
                  <v-card-title primary-title class="layout justify-center">
                    <div class="headline text-xs-center">Walnutech</div>
                  </v-card-title>
                  <v-card-text>Cras facilisis mi vitae nunc lobortis pharetra. Nulla volutpat tincidunt ornare. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam in aliquet odio. Aliquam eu est vitae tellus bibendum tincidunt. Suspendisse potenti. </v-card-text>
                </v-card>
              </v-flex>
            </v-layout>
          </v-container>
        </v-flex>
      </v-layout>
    </section>
    section
      v-parallax(src="/section.jpg" height="380")
        v-layout(column align-center justify-center)
          div.headline.white--text.mb-3.text-xs-center Web development has never been easier
          em Kick-start your application today
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
                    v-list-tile-title jszj_dwy1989@163.com
</template>
<script>
export default {
  layout: 'home',
  data () {
    return {
    }
  },
  components: {
  }
}
</script>
