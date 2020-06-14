<template>
  <div class="menu">
    <router-view></router-view>
    <el-menu
        :default-active="activeIndex2"
        class="el-menu-demo"
        router
        mode="horizontal"
        @select="handleSelect"
        background-color="black"
        text-color="grey"
        active-text-color="whitesmoke">
        <el-menu-item index="/Home">HOME</el-menu-item>
        <el-submenu index="2">
          <template slot="title">PHOTOGRAPH</template>
          <el-menu-item index="/Favorite">FAVORITE</el-menu-item>
          <el-menu-item index="/Album">ALBUM</el-menu-item>
          <el-menu-item index="/Timeline">TIMELINE</el-menu-item>
        </el-submenu>
        <el-submenu index="3">
          <template slot="title">MUSIC</template>
          <el-menu-item index="/ARTIST">ARTIST</el-menu-item>
          <el-menu-item index="/PLAYLIST">PLAYLIST</el-menu-item>
        </el-submenu>
        <el-submenu index="4">
          <template slot="title">MOVIE</template>
          <el-menu-item index="/DIRECTOR">DIRECTOR</el-menu-item>
          <el-menu-item index="/LIST">LIST</el-menu-item>
        </el-submenu>
        <el-submenu index="5">
          <template slot="title">CODE</template>
          <el-menu-item index="/Java">Java</el-menu-item>
          <el-menu-item index="/Go">Go</el-menu-item>
          <el-menu-item index="/Front-End">Front-End</el-menu-item>
          <el-menu-item index="/ALGORITHM">ALGORITHM</el-menu-item>
        </el-submenu>
        <el-menu-item index="/DAILY">DAILY</el-menu-item>
        <el-menu-item index="/ABOUT">ABOUT</el-menu-item>
        <el-menu-item index="/CONTACT">CONTACT</el-menu-item>
      </el-menu>
    </div>
</template>

<script>
  export default {
    name: 'Navigation',
    data() {
      return {
        activeIndex2: '1'
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
    opacity: 40%;
    display:flex;
    justify-content:center;
    position: fixed;
    width: 100%;
    top: 191px;
    left: 0px;
  }
</style>
