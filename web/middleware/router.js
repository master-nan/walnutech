export default function ({ isHMR, app, store, route, params, error, redirect }) {
  const defaultLocale = app.i18n.fallbackLocale
  const lang = params.lang || defaultLocale
  if (route.matched.length === 0) {
    let path = ''
    if (lang !== 'zh-CN') {
      path = lang + '/'
    }
    let str = route.fullPath.match(/^\/[^\\/]+/)[0]
    str = str.substr(1, str.length)
    if (store.state.langs.indexOf(str) === -1) {
      path = ''
    } else {
      path = str + '/'
      store.commit('setLang', str)
      app.i18n.locale = store.state.lang
    }
    redirect('/' + path + '404')
  } else {
    if (store.state.langs.indexOf(lang) === -1) {
      store.commit('setLang', defaultLocale)
      app.i18n.locale = store.state.lang
      redirect('/404')
    }
    store.commit('setLang', lang)
    app.i18n.locale = store.state.lang
    if (lang === defaultLocale && route.fullPath.indexOf('/' + defaultLocale) === 0) {
      const toReplace = '^/' + defaultLocale + (route.fullPath.indexOf('/' + defaultLocale + '/') === 0 ? '/' : '')
      const re = new RegExp(toReplace)
      return redirect(
        route.fullPath.replace(re, '/')
      )
    }
  }
}
