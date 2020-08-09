<template>
  <div class="menu">
    <router-view></router-view>
    <el-menu
      :default-active="$route.path"
      class="el-menu-demo"
      router
      mode="horizontal"
      @select="handleSelect"
      background-color="#d7afce"
      text-color="#eae0ee"
      active-text-color="white">
      <el-menu-item index="/DIRECTOR">DIRECTOR</el-menu-item>
      <el-menu-item index="/LIST">LIST</el-menu-item>
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
    background-color: #d7afce;
    opacity: 70%;
    display:flex;
    justify-content:center;
  }
</style>
