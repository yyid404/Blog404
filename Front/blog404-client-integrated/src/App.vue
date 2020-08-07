<template>
  <div id="app">
    <router-view/>
  </div>
</template>

<script>
  export default {
    name: 'App'
  }
</script>

<style>
  #app{
    height: 100%;
    width: 100%;
    margin: 0px;
    padding: 0px;
    top: 0px;
    left: 0px;
    border: hidden;
    position: absolute;
  }
</style>



<!--
<template>
  <div class="content">
    <el-container>
      <el-header>
        <Navigation></Navigation>
      </el-header>
      <el-main>
        <router-view></router-view> &lt;!&ndash;路由出口 &ndash;&gt;
      </el-main>
      <el-footer>
        <Footer></Footer>
      </el-footer>
    </el-container>
  </div>
</template>

<script>
  import Banner from './components/template/Banner'
  import Navigation from './components/daily/Navigation'
  import Content1 from './components/daily/Content-Kittens'
  import Content2 from './components/Content-Journal'
  import Content3 from './components/Content-Travel'
  import Footer from './components/template/Footer'

  export default {
    name: 'App',
    components: {
      Banner,
      Navigation,
      Content1,
      Content2,
      Content3,
      Footer,
    }
  }
</script>

<style scoped>

</style>
-->
