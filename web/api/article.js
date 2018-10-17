import http from '@/utils/http'
let path = 'api/article'

let index = async (data = {}) => {
  let url = path
  let result = await http.get(url, data)
  return result
}

let read = async (guid) => {
  let url = path + '/' + guid
  let result = await http.get(url, {})
  return result
}

export default{
  index,
  read
}
