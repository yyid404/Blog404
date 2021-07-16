<template>
  <div class="container">
    <div class="content">
      <div class="we">
        <div class="person-info" id="x">
          <PersonAvatarX class="person-info-avatar-block"></PersonAvatarX>
          <div class="person-info-avatar" id="x-avatar">
            <img class="person-info-avatar-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/user/user-avatar-x.jpg">
          </div>
        </div>
        <div class="heart">
          <img class="icon-heart-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-icon-heart-2.png">
        </div>
        <div class="person-info" id="y">
          <PersonAvatarY class="person-info-avatar-block"></PersonAvatarY>
          <div class="person-info-avatar" id="y-avatar">
            <img class="person-info-avatar-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/user/user-avatar-y.jpg">
          </div>
        </div>
        </div>
      <el-divider class="line"></el-divider>
      <div class="timekeeping">
        <div class="line" id="line1"></div>
        <div class="line" id="line2"></div>
        <div class="line" id="line3"></div>
        <div class="node" id="node1"></div>
        <div class="node" id="node2"></div>
        <div class="node" id="node3"></div>
        <div class="node" id="node4"></div>
        <div class="meet">
          <h6>已相识</h6>
          <DaysMeet class="days-meet"></DaysMeet>
          <h6>天</h6>
        </div>
        <div class="fall">
          <h6>已相恋</h6>
          <DaysFall class="days-fall"></DaysFall>
          <h6>天</h6>
        </div>
      </div>
      <el-divider class="line"></el-divider>
      <div class="anniversary">
        <div class="line" id="line4"></div>
        <div class="line" id="line5"></div>
        <div class="node" id="node5"></div>
        <div class="frame" id="frame1"></div>
        <Aaa class="timeline" id="timeline1"></Aaa>
      </div>

      <el-timeline>
        <el-timeline-item timestamp="2021-06-10" placement="top" color="#ffccff" hide-timestamp="true">
          <div class="date">2021-06-10</div>
          <el-card>
            <img class="content-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/1.jpg">
            <img class="content-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/2.jpg">
            <p class="content-desc">又在夏天相见了</p>
            <el-divider></el-divider>
            <i class="el-icon-location-outline"></i>
            <p class="content-tag">杭州 Hangzhou</p>
          </el-card>
          <el-card>
            <h3>服装是流动的建筑</h3>
            <p class="content-desc">一切具有创造性的人类活动最终目的形式便是建筑。所有实体艺术要彰显品格都往建筑上靠，所有非实体艺术则往诗歌和神话上靠。因为认识创造形式，而时间造就认识。越古早的，越可能是包容的、高蹈的。</p>
            <el-divider></el-divider>
            <i class="el-icon-location-outline"></i>
            <p class="content-tag">杭州 Hangzhou</p>
          </el-card>
        </el-timeline-item>
        <el-timeline-item timestamp="2021-04-09" placement="top" hide-timestamp="true">
          <div class="date">2021-04-09</div>
          <el-card>
            <img class="content-pic" src="">
            <p class="content-desc">那就让暧昧名正言顺吧</p>
            <el-divider></el-divider>
            <i class="el-icon-location-outline"></i>
            <p class="content-tag">2021-04-09 Hangzhou / Zhuhai</p>
          </el-card>
        </el-timeline-item>
        <el-timeline-item timestamp="2021-02-11" placement="top" hide-timestamp="true">
          <div class="date">2021-02-11</div>
          <el-card>
            <img class="content-pic" src="">
            <p class="content-desc">心漏了一拍</p>
            <el-divider></el-divider>
            <i class="el-icon-location-outline"></i>
            <p class="content-tag">2021-02-11 Hangzhou / Zhuhai</p>
          </el-card>
        </el-timeline-item>
        <el-timeline-item timestamp="2019-12-11" placement="top" hide-timestamp="true">
          <div class="date">2019-12-11</div>
          <el-card>
            <img class="content-pic" src="">
            <p class="content-desc">相见你最后一面</p>
            <el-divider></el-divider>
            <i class="el-icon-location-outline"></i>
            <p class="content-tag">2019-12-11 Wuhan</p>
          </el-card>
        </el-timeline-item>
        <el-timeline-item timestamp="2019-08-08" placement="top" hide-timestamp="true">
          <div class="date">2019-08-08</div>
          <el-card>
            <img class="content-pic" src="">
            <p class="content-desc">初次见面</p>
            <el-divider></el-divider>
            <i class="el-icon-location-outline"></i>
            <p class="content-tag">2019-08-08 Wuhan</p>
          </el-card>
        </el-timeline-item>
      </el-timeline>
    </div>
  </div>
</template>

<script>
  import PersonAvatarX from "./Person-Avatar-X";
  import PersonAvatarY from "./Person-Avatar-Y";
  import DaysMeet from './Days-Meet'
  import DaysFall from './Days-Fall'
  import Aaa from './Aaa'
  export default {
    name: 'He',
    components: {Aaa, DaysFall, DaysMeet, PersonAvatarX, PersonAvatarY},
    data () {
      return {
        activeIndex: '1',
        charts: '',
      }
    },
    methods: {
      handleSelect (key, keyPath) {
        console.log(key, keyPath);
      }
    }
  }
</script>

<style scoped>
  .content{
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/001.jpg");
    background-size: 100%;
  }
  .we{
    height: 140px;
    width: 300px;
    margin: 0px auto;
    display: block;
  }

  .person-info{
    height: 120px;
    width: 120px;
    margin-top: 10px;
    float: left;
  }

  .person-info-avatar-block{
    margin-top: -16px;
    margin-left: -40px;
    position: absolute;
  }

  #x-avatar{
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-rim-we-avatar-1.gif");
  }

  #y-avatar{
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-rim-we-avatar-2.gif");
  }

  .person-info-avatar-img{
    height: 110px;
    width: 110px;
    margin-top: 5px;
    margin-left: 5px;
    border-radius: 50%;
  }

  .heart{
    height: 140px;
    width: 60px;
    float: left;
    display:flex;
    align-items:center;
    justify-content:center;
  }

  .icon-heart-img{
    height: auto;
    width: 40px;
  }

  .line{
    margin: 1px 0;
    background: 0 0;
    border-top: 2px solid rgba(255,255,255,0.5);
  }

  .timekeeping{
    height: 300px;
    width: 100%;
    margin-left: 50%;
  }

  #line1{
    width: 0px;
    height: 100%;
    border-right: solid rgba(255,255,255,0.5) 2px;
    position: relative;
    left: -1px;
  }

  #line2{
    width: 20%;
    top: -66.7%;
    left: -20%;
    position: relative;
  }

  #line3{
    width: 20%;
    top: -33.3%;
    position: relative;
  }

  .node {
    width: 10px;
    height: 10px;
    border-radius: 50%;
    background-color: white;
    position: relative;
  }

  #node1{
    top: -318px;
    left: -5px;
  }

  #node2{
    top: -73.5%;
    left: -20%;
  }

  #node3{
    top: -42.5%;
    left: 20%;
  }

  #node4{
    top: -42px;
    left: -5px;
  }

  h6{
    font-family: 'Microsoft Yahei', sans-serif;
    text-align: center;
    color: white;
    display: inline-block;
  }

  .meet{
    top: -76%;
    left: 20%;
    position: relative;
  }

  .days-meet{
    height: 110px;
    width: 200px;
    display: inline-block;
    margin-left: -10px;
    margin-right: -75px;
  }

  .fall{
    top: -157%;
    left: -31%;
    position: relative;
  }

  .days-fall{
    height: 110px;
    width: 250px;
    display: inline-block;
    margin-right: -160px;
  }

  .anniversary{
    height: 500px;
  }

  #node5{
    top: -214px;
    left: 20%;
    margin-left: -4px;
  }

  #line4{
    width: 0px;
    height: 200px;
    border-right: solid rgba(255,255,255,0.5) 2px;
    position: relative;
    left: 20%;
  }

  #line5{
    width: 10%;
    top: -1px;
    left: 20%;
    position: relative;
  }

  #frame1{
    height: 200px;
    width: 350px;
    border-radius: 0px;
    border:solid;
    color: rgba(255,255,255,0.5);
    top: -100px;
    left: 30%;
    position: relative;
    margin-bottom: -100px;
  }

  #timeline1{
    top: -202px;
    position: relative;
  }

  .el-timeline-item{
    margin-left: 16%;
  }

  .el-card{
    width: 747px;
    padding-left: 30px;
    padding-top: 10px;
    margin-bottom: 10px;
    background-color: rgba(255,255,255,0.3);
    border-color: rgba(255,255,255,0.1);
  }

  h3{
    margin-top: 0px;
  }

  .content-pic{
    height: auto;
    width: 677px;
  }

  .content-tag{
    font-size: 10px;
    color: rgba(255,255,255,0.5);
    display: inline-block;
  }

  .date{
    color: #ffffff;
    position: absolute;
    left: -90px;
  }

  .el-icon-location-outline{
    color: rgba(255,255,255,0.5);
    display: inline-block;
  }
</style>
