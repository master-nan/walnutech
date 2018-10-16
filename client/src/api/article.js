import http from '@/utils/http'
let path = 'article'

let index = async (data = {}) => {
  let url = path
  let result = await http.get(url, data)
  return result
}

let save = async (data) => {
  let url = path
  let result = await http.post(url, data)
  return result
}

let read = async (guid) => {
  let url = path + '/' + guid
  let result = await http.get(url, {})
  return result
}

let update = async (data) => {
  let url = path + '/' + data.guid
  let result = await http.put(url, data)
  return result
}

let enable = async (data) => {
  let url = path + '/enable'
  let result = await http.post(url, data)
  return result
}

let del = async (guid) => {
  let url = path + '/' + guid
  let result = await http.del(url, {})
  return result
}

export default{
  index,
  save,
  read,
  update,
  enable,
  del
}
