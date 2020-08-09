<template>
  <div class="menu">
    <router-view></router-view>
    <el-menu
      :default-active="$route.path"
      class="el-menu-demo"
      router
      mode="horizontal"
      @select="handleSelect"
      background-color="black"
      text-color="#b0b0b0"
      active-text-color="white">
      <el-menu-item index="/Favorite">FAVORITE</el-menu-item>
      <el-menu-item index="/Album">ALBUM</el-menu-item>
      <el-menu-item index="/Timeline">TIMELINE</el-menu-item>
      <el-menu-item index="/Photographer">PHOTOGRAPHER</el-menu-item>
    </el-menu>
  </div>
</template>

<script>
  export default {
    name: 'Navigation',
    data() {
      return {
        activeIndex: '1'
      };
    },
    methods: {
      handleSelect(key, keyPath) {
        console.log(key, keyPath);
      }
    }
  }
</script>

<style scoped>
  .menu{
    background-color: black;
    opacity: 70%;
    display:flex;
    justify-content:center;
  }
</style>
