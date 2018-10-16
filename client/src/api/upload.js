import http from '@/utils/http'
let path = 'files'

let img = () => {
  let url = http.baseURL + path + '/index'
  return url
}

export default{
  img
}
