import Vue from 'vue'
import Router from 'vue-router'
import Index from '@/components/Index'


Vue.use(Router)

export default new Router({
  mode:'history',
  routes: [
    {
      path: '/',
      name: 'Index',
      component: () => import('../components/Index.vue'),
      children: [
        {
          path: '/',
          name: 'Home',
          component: () => import('../components/home/Home.vue'),
        },
        {
          path: '/Home',
          name: 'Home',
          component: () => import('../components/home/Home.vue'),
        },
        {
          path: '/Photograph',
          name: 'Photograph',
          component: () => import('../components/photograph/Photograph.vue'),
          children:[
            {
              path: '/',
              name: 'Favorite',
              component: () => import('../components/photograph/Favorite.vue'),
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
          ]
        },
        {
          path: '/Music',
          name: 'Music',
          component: () => import('../components/music/Music.vue'),
          children:[
            {
              path: '/',
              name: 'Artist',
              component: () => import('../components/music/Artist.vue'),
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
          ]
        },
        {
          path: '/Movie',
          name: 'Movie',
          component: () => import('../components/movie/Movie.vue'),
          children:[
            {
              path: '/',
              name: 'Director',
              component: () => import('../components/movie/Director.vue'),
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
          ]
        },
        {
          path: '/Code',
          name: 'Code',
          component: () => import('../components/code/Code.vue'),
          children:[
            {
              path: '/',
              name: 'Algorithm',
              component: () => import('../components/code/Algorithm.vue'),
              children:[
                {
                  path: '/',
                  name: 'Algorithm-List',
                  component: () => import('../components/code/Algorithm-List.vue'),
                },
              ]
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
              children: [
                {
                  path: '/',
                  name: 'Algorithm-List',
                  component: () => import('../components/code/Algorithm-List.vue'),
                },
                {
                  path: '/Algorithm-List',
                  name: 'Algorithm-List',
                  component: () => import('../components/code/Algorithm-List.vue'),
                },
                {
                  path: '/Algorithm-Detail',
                  name: 'Algorithm-Detail',
                  component: () => import('../components/code/Algorithm-Detail.vue'),
                },
              ]
            },
          ]
        },
        {
          path: '/Reading',
          name: 'Reading',
          component: () => import('../components/reading/Reading.vue'),
          children:[
            {
              path: '/',
              name: 'Author',
              component: () => import('../components/reading/Author.vue'),
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
          ]
        },
        {
          path: '/Daily',
          name: 'Daily',
          component: () => import('../components/daily/Daily.vue'),
          children:[
            {
              path: '/',
              name: 'Journal',
              component: () => import('../components/daily/Journal.vue'),
            },
            {
              path: '/Journal',
              name: 'Journal',
              component: () => import('../components/daily/Journal.vue'),
            },
            {
              path: '/Kittens',
              name: 'Kittens',
              component: () => import('../components/daily/Kittens.vue'),
            },
            {
              path: '/Travel',
              name: 'Travel',
              component: () => import('../components/daily/Travel.vue'),
            },
          ]
        },
        {
          path: '/Contact',
          name: 'Contact',
          component: () => import('../components/contact/Contact.vue'),
        },
      ],
    },
  ]
})
