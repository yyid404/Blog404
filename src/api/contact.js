import request from '@/utils/request'

export function getContactByUserId() {
  return request({
    url: '/contact',
    method: 'get'
  })
}
