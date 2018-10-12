<template lang="pug">
  v-footer(dark height="auto")
    v-card.blue.darken-1.white--text.text-xs-center(width="100%" flat tile)
      v-card-text
        v-tooltip(bottom)
          v-btn.mx-3.white--text(slot="activator" icon target="_blank" href="https://github.com/master-nan/walnutech")
            v-icon(size="32px") mdi-github-circle
          span Github
      v-card-text.white--text.pt-0.px-5
        slot 本项目为个人网站，采用vue前端框架，使用开箱即用的nuxt解决ssr问题，并结合vuetify解决ui问题。项目相对简单，如需更深层次的应用可以访问官网学习相关知识。喜欢本项目的朋友可以到我的github下载源码，欢迎star，如果有bug可以提交issues，谢谢。
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
