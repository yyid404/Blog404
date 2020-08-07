<template>
  <div class="container">
    <Cover></Cover>
    <Avatar></Avatar>
    <NavigationBackgroundColor></NavigationBackgroundColor>
  </div>
</template>

<script>
  import Cover from './Cover'
  import Avatar from './Avatar'
  import NavigationBackgroundColor from "../template/Navigation-Background-Color";
  import { getThemeByAdminId } from '@/api/theme'
  import { getAdminInfoByAdminId } from '@/api/admin'

  export default {
    name: "Home",
    components: {
      Cover,
      Avatar,
      NavigationBackgroundColor,
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
  .container{
    width: 100%;
    height: 100%;
    position: fixed;
  }

  /*<NavigationBackgroundColor>内的<background>*/
  .container >>> .background {
    background-color: rgba(0,0,0,0.4);
    margin-top: -60px;
    z-index: 11;
    position: relative;
  }
</style>
