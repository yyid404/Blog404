<template>
  <div class="menu">
    <router-view></router-view>
    <el-menu
      :default-active="$route.path"
      class="el-menu-demo"
      router
      mode="horizontal"
      @select="handleSelect"
      background-color="#72B6A7"
      text-color="#f3d2ab"
      active-text-color="white">
      <el-menu-item index="/NOTE">NOTE</el-menu-item>
      <el-menu-item index="/AUTHOR">AUTHOR</el-menu-item>
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
    background-color: #72B6A7;
    opacity: 70%;
    display:flex;
    justify-content:center;
  }
</style>
