import request from '@/utils/request'

export function getThemeByAdminId() {
  return request({
    url: '/client/theme/themeInfo',
    method: 'get'
  })
}
