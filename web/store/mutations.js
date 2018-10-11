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
  },
  setUp (state, data) {
    state.up = data
  }
}
export default mutations
