import Vue from 'vue'
import Router from 'vue-router'
import Home from '@/components/Home'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'Home',
      component: Home,
    },
    {
      path: '/Home',
      name: 'Home',
      component: Home,
    },
    {
      path: '/Favorite',
      name: 'Favorite',
      component: () => import('../components/photograph/Favorite.vue'),
    },
    {
      path: '/Album',
      name: 'Album',
      component: () => import('../components/photograph/Album.vue'),
    },
    {
      path: '/Timeline',
      name: 'Timeline',
      component: () => import('../components/photograph/Timeline.vue'),
    },
    {
      path: '/Artist',
      name: 'Artist',
      component: () => import('../components/music/Artist.vue'),
    }
  ]
})
