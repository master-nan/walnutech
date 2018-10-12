import axios from 'axios'
import qs from 'qs'
import util from './index.js'
import cookie from 'js-cookie'

let baseURL = 'http://localhost:9001/'

let request = async (requestMethod = 'get', requestConf) => {
  requestConf.headers = {}
  if (cookie.get('token')) {
    requestConf.headers['X-Requested-Token'] = cookie.get('token')
  }
  requestConf.timeout = 5000
  requestConf.method = requestMethod
  let response = await axios.request(requestConf).catch(function (error) {
    let data = {
      code: 100,
      data: null,
      error: error + ''
    }
    return {data: data}
  })
  return response.data
}

let get = (url = '', params = {}, u = null) => {
  let requestConf = {
    url,
    baseURL: u || baseURL,
    params
  }

  let response = request('get', requestConf)
  return response
}

let post = async (url = '', params = {}, u = null) => {
  params = util.size(params) ? qs.stringify(params) : {}
  let requestConf = {
    url,
    baseURL: u || baseURL,
    data: params
  }

  let response = await request('post', requestConf)
  return response
}

let put = async (url = '', params = {}, u = null) => {
  params = util.size(params) ? qs.stringify(params) : {}
  let requestConf = {
    url,
    baseURL: u || baseURL,
    data: params
  }

  let response = await request('put', requestConf)
  return response
}

let del = (url = '', params = {}, u = null) => {
  let requestConf = {
    url,
    baseURL: u || baseURL,
    params
  }

  let response = request('delete', requestConf)
  return response
}

export default{
  post,
  get,
  put,
  del,
  baseURL
}
