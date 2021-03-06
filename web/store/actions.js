const actions = {
  setUserInfo ({commit}, data) {
    return new Promise(resolve => {
      commit('setUserInfo', data)
      resolve()
    })
  },
  setSetting ({commit}, data) {
    return new Promise(resolve => {
      commit('setSetting', data)
      resolve()
    })
  },
  setMoving ({commit}, data) {
    return new Promise(resolve => {
      commit('setMoving', data)
      resolve()
    })
  },
  setUp ({commit}, data) {
    return new Promise(resolve => {
      commit('setUp', data)
      resolve()
    })
  },
  setLang ({commit}, data) {
    return new Promise(resolve => {
      commit('setLang', data)
      resolve()
    })
  }
}

export default actions
