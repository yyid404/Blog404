<template>
  <div class="container">
    <!--迷你导航栏-->
    <FullScreenMenu3></FullScreenMenu3>
    <!--导航栏-->
    <Navigation></Navigation>
    <div class="content">
      <!--这里的router-view用来渲染子页面-->
      <router-view></router-view>
    </div>
  </div>
</template>

<script>
  import Navigation from './template/Navigation'
  import FullScreenMenu3 from "./template/FullScreenMenu3/FullScreenMenu3";

  export default {
    name: 'Index',
    components: {
      FullScreenMenu3,
      Navigation
    },
  }
</script>

<style scoped>
  .container{
    width: 100%;
  }
</style>
