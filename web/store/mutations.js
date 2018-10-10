const mutations = {
  setPrivateRouter (state, data) {
    state.privateRouter = []
  },
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
  }
}
export default mutations
