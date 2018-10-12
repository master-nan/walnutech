// export default function ({ route, redirect }) {
//   // 没有匹配到的组件，即404页面
//   if (route.matched.length === 0) {
//     redirect('/404')
//   }
// }

export default function ({ isHMR, app, store, route, params, error, redirect }) {
  const defaultLocale = app.i18n.fallbackLocale
  const lang = params.lang || defaultLocale
  if (route.matched.length === 0) {
    let path = ''
    if (lang !== 'zh-CN') {
      path = lang
    }
    console.log('11:' + lang)
    return redirect('/' + path + '404')
  } else {
    if (store.state.langs.indexOf(lang) === -1) {
      console.log('22:' + lang)
      return redirect('/404')
    }
    store.commit('setLang', lang)
    app.i18n.locale = store.state.lang
    if (lang === defaultLocale && route.fullPath.indexOf('/' + defaultLocale) === 0) {
      const toReplace = '^/' + defaultLocale + (route.fullPath.indexOf('/' + defaultLocale + '/') === 0 ? '/' : '')
      console.log(toReplace)
      const re = new RegExp(toReplace)
      console.log(re)
      return redirect(
        route.fullPath.replace(re, '/')
      )
    }
  }
}
