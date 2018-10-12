import _ from 'lodash'

const util = {}

util.size = (data) => {
  return _.size(data)
}

util.sleep = (d) => {
  return new Promise((resolve) => {
    setTimeout(resolve, d)
  })
}

// 深拷贝
util.cloneDeep = (val) => {
  // Object.assign({},val)
  return _.cloneDeep(val)
}

export default util
