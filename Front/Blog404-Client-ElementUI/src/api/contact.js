import request from '@/utils/request'

export function getContactByAdminId() {
  return request({
    url: '/client/contact/contactInfo',
    method: 'get'
  })
}
