<template>
  <div class="container">
    <div class="content">
      <div class="timelines">
        <el-timeline>
          <el-timeline-item timestamp="2020/6/16" placement="top" color="#547047">
            <h4>夏日光景</h4>
            <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-15.jpg">
            <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-13.jpg">
            <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-12.jpg">
            <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-14.jpg">
            <p>UPDATE album/<a href="Album">Wuhan</a>, Commit by Lemon 2020/6/16 20:46</p>
            <el-divider></el-divider>
            <h4>影</h4>
            <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-10.jpg">
            <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-11.jpg">
            <p>UPDATE album/<a href="Album">Wuhan</a>, Commit by Lemon 2020/6/16 19:46</p>
            <el-divider></el-divider>
          </el-timeline-item>
          <el-timeline-item timestamp="2020/6/15" placement="top">
            <h4>和平饭店</h4>
            <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-1.jpg">
            <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-2.jpg">
            <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-3.jpg">
            <p>UPDATE album/<a href="Album">Shanghai</a>, Commit by Lemon 2020/6/15 20:46</p>
            <el-divider></el-divider>
          </el-timeline-item>
        </el-timeline>
      </div>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Timeline',
  }
</script>

<style scoped>
  .content{
    padding-top: 10px;
  }

  .timelines{
    margin-left: 20px;
    margin-right: 20px;
  }

  .el-card{
    background-color: black;
    color: white;
  }

  .timeline-pic{
    width: auto;
    height: 300px;
  }

  h4{
    color: white;
    font-size: 16px;
  }

  p{
    color: lightgrey;
    font-size: small;
  }

  .el-divider{
    background-color: #4e4d4d;
  }
</style>
