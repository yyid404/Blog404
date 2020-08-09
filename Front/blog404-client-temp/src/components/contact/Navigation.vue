<template>
  <div class="menu">
    <router-view></router-view>
    <el-menu
      :default-active="$route.path"
      class="el-menu-demo"
      router
      mode="horizontal"
      @select="handleSelect"
      background-color="#73aec4"
      text-color="#f9f177"
      active-text-color="white">
      <el-menu-item index="/CONTACT">CONTACT</el-menu-item>
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
    background-color: #73aec4;
    opacity: 70%;
    display:flex;
    justify-content:center;
  }
</style>
