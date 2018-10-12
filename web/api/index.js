import http from '@/utils/http'

let path = 'base'

let index = async (data = {}) => {
  let url = path + '/getSetting'
  let result = await http.get(url, data)
  return result
}

export default {
  index
}
