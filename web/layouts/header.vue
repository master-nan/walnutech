<template lang="pug">
  v-toolbar(style="background-color:rgba(155,0,0,0.9);" dark :fixed="fixed")
    router-link(to="/")
      v-avatar(:tile="true" size="58" color="grey lighten-4")
        img(src="~/assets/images/logo.png" alt="avatar")
    v-toolbar-title Walnutech
    v-spacer
    v-btn(icon)
      v-icon search
    v-btn(icon)
      v-icon favorite
    v-btn(icon target="_blank" href="https://github.com/master-nan")
      v-icon mdi-github-circle
</template>
<script>
export default {
  data: () => ({
    fixed: true
  }),
  methods: {
  }
}
</script>
