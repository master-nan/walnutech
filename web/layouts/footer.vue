<template lang="pug">
  v-footer(dark height="auto")
    v-card.blue.darken-1.white--text.text-xs-center(width="100%" flat tile)
      v-card-text
        v-tooltip(bottom)
          v-btn.mx-3.white--text(slot="activator" icon target="_blank" href="https://vuejs.org/")
            v-icon(size="32px") mdi-vuejs
          span Vue
        v-tooltip(bottom)
          v-btn.mx-3.white--text(slot="activator" icon target="_blank" href="https://vuetifyjs.com")
            v-avatar(size="32" )
              img(src="/v-alt.svg" alt="avatar")
          span Vuetify
        v-tooltip(bottom)
          v-btn.mx-3.white--text(slot="activator" icon target="_blank" href="https://nuxtjs.org/")
            v-avatar(size="32" color="grey lighten-4")
              img(src="/nuxt.png" alt="avatar")
          span Nuxt
        v-tooltip(bottom)
          v-btn.mx-3.white--text(slot="activator" icon target="_blank" href="https://github.com/master-nan/walnutech")
            v-icon(size="32px") mdi-github-circle
          span Github
      v-card-text.white--text.pt-0.px-5
        slot 本项目为个人网站，采用vue前端框架，使用开箱即用的nuxt解决ssr问题，并结合vuetify解决ui问题。项目相对简单，如需更深层次的应用可以访问上述链接学习相关知识。喜欢本项目的朋友可以到我的github下载源码，欢迎star，如果有bug可以提交issues，谢谢。github上还有两个开源后台项目，同样欢迎下载使用。
      v-divider
      v-card-text.white--text &copy;2018 —
        strong master-nan
</template>
<script>
export default {
  data: () => ({
    icons: [
      'face',
      'mdi-github-circle',
      'add'
    ]
  })
}
</script>
