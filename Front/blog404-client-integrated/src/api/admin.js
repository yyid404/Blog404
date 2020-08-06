import request from '@/utils/request'

export function getAdminInfoByAdminId() {
  return request({
    url: '/client/admin/adminInfo',
    method: 'get'
  })
}
