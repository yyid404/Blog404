<template>
  <div class="menu">
    <router-view></router-view>
    <el-menu
      :default-active="$route.path"
      class="el-menu-demo"
      router
      mode="horizontal"
      @select="handleSelect"
      background-color="#9e93b6"
      text-color="#F4D0D8"
      active-text-color="white">
      <el-menu-item index="/ARTIST">ARTIST</el-menu-item>
      <el-menu-item index="/PLAYLIST">PLAYLIST</el-menu-item>
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
    background-color: #9e93b6;
    opacity: 70%;
    display:flex;
    justify-content:center;
  }
</style>
