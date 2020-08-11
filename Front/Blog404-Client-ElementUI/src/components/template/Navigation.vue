<template>
  <div class="menu">
    <el-menu
      :default-active="$route.path"
      class="el-menu-demo"
      router
      mode="horizontal"
      @select="handleSelect"
      background-color="rgba(255,255,255,0.0)"
      text-color="#a3a3a3"
      active-text-color="white">
      <el-menu-item index="/Home">HOME</el-menu-item>
      <el-submenu index="2">
        <template slot="title">PHOTOGRAPH</template>
        <el-menu-item index="/Favorite">FAVORITE</el-menu-item>
        <el-menu-item index="/Album">ALBUM</el-menu-item>
        <el-menu-item index="/Timeline">TIMELINE</el-menu-item>
        <el-menu-item index="/Photographer">PHOTOGRAPHER</el-menu-item>
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
        <el-menu-item index="/Algorithm-List">ALGORITHM</el-menu-item>
      </el-submenu>
      <el-submenu index="6">
        <template slot="title">READING</template>
        <el-menu-item index="/NOTE">NOTE</el-menu-item>
        <el-menu-item index="/AUTHOR">AUTHOR</el-menu-item>
      </el-submenu>
      <el-submenu index="7">
        <template slot="title">DAILY</template>
        <el-menu-item index="/JOURNAL">JOURNAL</el-menu-item>
        <el-menu-item index="/KITTENS">KITTENS</el-menu-item>
        <el-menu-item index="/TRAVEL">TRAVEL</el-menu-item>
      </el-submenu>
      <el-menu-item index="/Contact">CONTACT</el-menu-item>
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
    background-color: rgba(0,0,0,0.0);
    display:flex;
    justify-content:center;
    height: 60px;
    width: 100%;
    left: 0px;
    margin-top: 191px;
    z-index: 14;
    position: relative;
  }
</style>
