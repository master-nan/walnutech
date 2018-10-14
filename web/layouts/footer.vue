<template lang="pug">
  v-footer(dark height="auto")
    v-card.blue.darken-1.white--text.text-xs-center(width="100%" flat tile)
      v-card-text
        v-btn.mx-3.white--text(slot="activator" icon target="_blank" href="https://github.com/master-nan/walnutech")
          v-icon(size="32px") mdi-github-circle
      v-card-text.white--text.pt-0.px-5
        slot {{ $t('footer.content') }}
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
