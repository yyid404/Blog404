<template>
  <div class="container">
    <Banner></Banner>
    <Avatar></Avatar>
    <div class="body">
    </div>
  </div>
</template>

<script>
  import Banner from '../template/Banner'
  import Avatar from './Avatar'
  import { getThemeByAdminId } from '@/api/theme'
  import { getAdminInfoByAdminId } from '@/api/admin'

  export default {
    name: "Home",
    components: {
      Banner,
      Avatar,
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
  /*深度选择器*/
  .container >>> .info {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-daily-1.jpg");
  }
</style>
