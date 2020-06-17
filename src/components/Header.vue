<template>
  <div class="header">
    <router-view></router-view>
    <div class="demo-image">
      <div class="block" v-for="fit in fits" :key="fit">
        <span class="demonstration">{{ fit }}</span>
        <el-image
          style="width: 100px; height: 100px"
          :src="url"
          :fit="fit"></el-image>
      </div>
    </div>
    <el-menu
      :default-active="activeIndex2"
      class="el-menu-demo"
      router
      mode="horizontal"
      @select="handleSelect"
      background-color="black"
      text-color="#b0b0b0"
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
        <el-menu-item index="/ALGORITHM">ALGORITHM</el-menu-item>
      </el-submenu>
      <el-submenu index="6">
        <template slot="title">READING</template>
        <el-menu-item index="/NOTE">NOTE</el-menu-item>
        <el-menu-item index="/AUTHOR">AUTHOR</el-menu-item>
      </el-submenu>
      <el-menu-item index="/DAILY">DAILY</el-menu-item>
      <el-menu-item index="/CONTACT">CONTACT</el-menu-item>
    </el-menu>
  </div>
</template>

<script>
  export default {
    name: 'Header',
    data() {
      return {
        fits: ['fill', 'contain', 'cover', 'none', 'scale-down'],
        url: 'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/background-banner-1.jpg'
      }
    }
  }
</script>

<style scoped>

</style>
