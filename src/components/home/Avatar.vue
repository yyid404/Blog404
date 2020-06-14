<template>
  <div class="info">
    <div class="margin-top">
    </div>
    <el-row class="demo-avatar demo-basic">
      <el-col :span="12">
        <div class="demo-basic&#45;&#45;circle">
          <div class="block"><el-avatar shape="square" :size="100" :src="squareUrl"></el-avatar></div>
          <div class="block" v-for="size in sizeList" :key="size">
            <el-avatar shape="square" :size="size" :src="squareUrl"></el-avatar>
          </div>
        </div>
      </el-col>
    </el-row>
    <div class="nickname">
      鱼
    </div>
    <div class="introduce">
      404 Not Found
    </div>
  </div>
</template>

<script>
  export default {
  name: 'Avatar',
  data () {
    return {
      circleUrl: "https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png",
      squareUrl: "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/avatar.jpg",
    }
  }
}
</script>

<style scoped>
  .info{
    top: 0px;
    left: 0px;
    background: rgba(0,0,0,0.3);
    height: 191px;
    position: fixed;
    width: 100%;
  }
  .margin-top{
    height: 20px;
  }
  .demo-avatar{
    width: 100px;
    margin: 0 auto 10px auto;
  }
  .nickname{
    color: whitesmoke;
    text-align: center;
    height: 25px;
  }
  .introduce{
    font-size: 12px;
    color: whitesmoke;
    text-align: center;
  }
</style>
