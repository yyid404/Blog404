<template>
  <div class="banner">
    <el-carousel :interval="5000" arrow="always" height="630px">  <!--indicator-position outside为指示灯在容器外 none为不显示指示灯-->
      <el-carousel-item v-for="item in 2" :key="item">
      </el-carousel-item>
    </el-carousel>
  </div>
</template>

<script>
  export default {
    name: 'Banner'
  }
</script>

<style scoped>
  .el-carousel__item:nth-child(2n) {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-cover-dark-1.jpg");
    background-size: 100% auto;
    position: fixed;
  }
  .el-carousel__item:nth-child(2n+1) {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-cover-light-1.jpg");
    background-size: 100% auto;
    position: fixed;
  }
</style>
