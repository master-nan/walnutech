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
  }
}

export default actions
