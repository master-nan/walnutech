import Vue from 'vue'
import VueI18n from 'vue-i18n'
import zh from '~/lang/zh-CN'
import en from '~/lang/en-US'

Vue.use(VueI18n)

const messages = {
  'en-US': {
    ...en
  },
  'zh-CN': {
    ...zh
  }
}

export default ({ app, store }) => {
  const i18n = new VueI18n({
    locale: store.state.lang, // set locale
    fallbackLocale: 'zh-CN',
    messages // set locale messages
  })
  // Set i18n instance on app
  // This way we can use it in middleware and pages asyncData/fetch
  app.i18n = i18n

  app.i18n.path = (link) => {
    console.log(1111)
    if (app.i18n.locale === app.i18n.fallbackLocale) {
      return `/${link}`
    }
    return `/${app.i18n.locale}/${link}`
  }
}
