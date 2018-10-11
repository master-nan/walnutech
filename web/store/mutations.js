const mutations = {
  setUserInfo (state, data) {
    if (data) {
      state.userInfo = data
    } else {
      state.userInfo = []
    }
  },
  setSetting (state, data) {
    if (data) {
      state.setting = data
    } else {
      state.setting = []
    }
  },
  setMoving (state, data) {
    state.moving = data
  }
}
export default mutations
