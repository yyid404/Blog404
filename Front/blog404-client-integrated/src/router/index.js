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
      path: '/Photographer',
      name: 'Photographer',
      component: () => import('../components/photograph/Photographer.vue'),
    },
    {
      path: '/Artist',
      name: 'Artist',
      component: () => import('../components/music/Artist.vue'),
    },
    {
      path: '/PlayList',
      name: 'PlayList',
      component: () => import('../components/music/PlayList.vue'),
    },
    {
      path: '/Director',
      name: 'Director',
      component: () => import('../components/movie/Director.vue'),
    },
    {
      path: '/List',
      name: 'List',
      component: () => import('../components/movie/List.vue'),
    },
    {
      path: '/Java',
      name: 'Java',
      component: () => import('../components/code/Java.vue'),
    },
    {
      path: '/Go',
      name: 'Go',
      component: () => import('../components/code/Go.vue'),
    },
    {
      path: '/Front-End',
      name: 'Front-End',
      component: () => import('../components/code/Front-End.vue'),
    },
    {
      path: '/Algorithm',
      name: 'Algorithm',
      component: () => import('../components/code/Algorithm.vue'),
    },
    {
      path: '/Algorithm-detail',
      name: 'Algorithm-detail',
      component: () => import('../components/code/Algorithm-detail.vue'),
    },
    {
      path: '/Note',
      name: 'Note',
      component: () => import('../components/reading/Note.vue'),
    },
    {
      path: '/Author',
      name: 'Author',
      component: () => import('../components/reading/Author.vue'),
    },
    {
      path: '/Journal',
      name: 'Journal',
      component: () => import('../components/daily/Content-Journal.vue'),
    },
    {
      path: '/Kittens',
      name: 'Kittens',
      component: () => import('../components/daily/Content-Kittens.vue'),
    },
    {
      path: '/Travel',
      name: 'Travel',
      component: () => import('../components/daily/Content-Travel.vue'),
    },
    {
      path: '/Contact',
      name: 'Contact',
      component: () => import('../components/contact/Contact.vue'),
    },
    {
      path: '/Daily',
      name: 'Daily',
      component: () => import('../components/daily/Daily.vue'),
    }
  ]
})
