<template lang="pug">
  v-container
    div {{ $t('title.none') }}
    v-btn(dark @click="goback" color="primary") 返回
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
