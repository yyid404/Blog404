<template>
  <div class="container">
    <Banner></Banner>
    <Particles></Particles>
    <div class="content">
      <NavigationBackgroundColor></NavigationBackgroundColor>
      <router-view></router-view>
      <Footer></Footer>
    </div>
  </div>
</template>

<script>
  import Banner from '../template/Banner'
  import Particles from "../template/Particles";
  import NavigationBackgroundColor from '../template/Navigation-Background-Color'
  import Footer from '../template/Footer'

  export default {
    name: 'Movie',
    components: {
      Particles,
      Banner,
      NavigationBackgroundColor,
      Footer,
    }
  }
</script>

<style scoped>
  /*深度选择器 .info为<Banner>内的<info>*/
  .container >>> .info {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-movie-1.jpg");
  }

  .content{
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-movie-1.jpg");
    background-size: 450px;
  }

  /*<NavigationBackgroundColor>内的<background> & <Footer>内的<footer>*/
  .content >>> .background, .content >>> .footer {
    background-color: rgba(215,175,206,0.7);
  }

  /*<router-view>内的<content>*/
  .content >>> .content {
    background-color: #efe9f2;
  }
</style>
