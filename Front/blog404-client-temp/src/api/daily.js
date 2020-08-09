import request from '@/utils/request'

export function getJournalListByAdminId() {
  return request({
    url: '/client/daily/journal/getJournalListByAdminId',
    method: 'get'
  })
}
