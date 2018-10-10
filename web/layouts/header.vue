<template lang="pug">
  v-toolbar(color="primary" dark)
    router-link(to="/")
      v-avatar(:tile="false" size="58" color="grey lighten-4")
        img(src="~/assets/images/logo.png" alt="avatar")
    v-toolbar-title Walnutech
    v-spacer
    v-btn(icon)
      v-icon search
    v-btn(icon)
      v-icon favorite
    v-btn(icon to="https://github.com/master-nan")
      v-icon mdi-github-circle
</template>
<script>
export default {
  data: () => ({
  })
}
</script>
