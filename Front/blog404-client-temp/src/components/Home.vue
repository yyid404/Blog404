<template>
  <div class="blog">
    <banner></banner>
    <avatar></avatar>
    <navigation></navigation>
  </div>
</template>

<script>
  import Banner from './home/Banner'
  import Avatar from './home/Avatar'
  import Navigation from './home/Navigation'
  import { getThemeByAdminId } from '@/api/theme'
  import { getAdminInfoByAdminId } from '@/api/admin'

  export default {
    name: 'Home',
    components: {
      Banner,
      Avatar,
      Navigation
    },
    data () {
      return {
        activeIndex: '1',
      }
    },
    created(){
      this.initGlobalTheme()
      this.initAdminInfo()
    },
    methods: {
      handleSelect(key, keyPath) {
        console.log(key, keyPath);
      },
      initGlobalTheme: function() {
        getThemeByAdminId().then(response => {
          localStorage.setItem('theme',JSON.stringify(response.data.data))
        })
      },
      initAdminInfo: function() {
        getAdminInfoByAdminId().then(response => {
          localStorage.setItem('admin',JSON.stringify(response.data.data))
        })
      }
    }
  }
</script>

<style scoped>
  .blog{
    width: 100%;
    height: 100%;
    position: fixed;
  }
  .banner{
    position: absolute;
    z-index: -99;
    width: 100%;
  }
</style>
