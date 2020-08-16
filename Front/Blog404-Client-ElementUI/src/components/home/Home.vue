<template>
  <div class="container">
    <Cover></Cover>
    <Particles></Particles>
    <AvatarBackgroundColor></AvatarBackgroundColor>
    <Avatar></Avatar>
    <NavigationBackgroundColor></NavigationBackgroundColor>
    <Keywords></Keywords>
  </div>
</template>

<script>
  import Cover from './Cover'
  import Avatar from './Avatar'
  import AvatarBackgroundColor from "./Avatar-Background-Color";
  import NavigationBackgroundColor from "../template/Navigation-Background-Color";
  import { getThemeByAdminId } from '@/api/theme'
  import { getAdminInfoByAdminId } from '@/api/admin'
  import Particles from "../template/Particles";
  import Loves from "../js/loves";
  import Keywords from "./Keywords";  //鼠标点击爱心漂浮效果

  export default {
    name: "Home",
    components: {
      Keywords,
      AvatarBackgroundColor,
      Cover,
      Particles,
      Avatar,
      NavigationBackgroundColor,
      Loves
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
      },
    },
  }
</script>

<style scoped>
  .container{
    width: 100%;
    height: 100%;
    position: fixed;
  }

  .particles >>> .particles{
    margin-top: -60px;
    position: fixed;
  }

  /*<NavigationBackgroundColor>内的<background>*/
  .container >>> .background {
    background-color: rgba(0,0,0,0.4);
    margin-top: -120px;
  }
</style>
