<template lang="pug">
  v-container
    div(style="height:60px")
    div {{ $t('none.title') }}
    v-btn(dark @click="goback" color="primary") {{ $t('none.button') }}
</template>
<script>
export default {
  layout: 'home',
  data () {
    return {

    }
  },
  methods: {
    goback () {
      const path = '/' + this.$store.state.lang + '/'
      this.$router.push(path)
    }
  }
}
</script>
