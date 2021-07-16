<template>
  <!--时间线-->
  <div class="timeLine" style="overflow: hidden;">
    <div class="event">
      <img class="event-pic" :src="timeLineList[timeIndex].pic">
      <div class="event-describe">
        <p class="event-date">{{timeLineList[timeIndex].year}}</p>
        <p class="event-text">{{timeLineList[timeIndex].info}}</p>
      </div>
    </div>
    <div class="my_timeline_prev" @click="moveRight">
      <svg t="1626276369594" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="3242" width="20" height="200"><path d="M330.666667 512a35.84 35.84 0 0 0 11.52 26.453333l235.52 220.586667a35.84 35.84 0 1 0 49.066666-52.48L419.413333 512l207.36-194.56a35.84 35.84 0 1 0-49.066666-52.48L341.333333 484.266667a35.84 35.84 0 0 0-10.666666 27.733333zM512 0a512 512 0 1 0 512 512A512 512 0 0 0 512 0z m0 72.106667a439.466667 439.466667 0 0 1 170.666667 844.373333A439.466667 439.466667 0 0 1 200.533333 200.533333a438.613333 438.613333 0 0 1 311.04-128z" fill="#ffffff" p-id="3243" data-spm-anchor-id="a313x.7781069.0.i4" class="selected"></path></svg>
      <div class="my_timeline_item_line" id="my_timeline_item_line_1"></div>
    </div>
    <div class="ul_box">
      <ul class="my_timeline" ref="mytimeline" style="margin-left: 10px;">
        <li class="my_timeline_item" v-for="(item,index) in timeLineList" :key="index">
          <!--圈圈节点-->
          <div class="my_timeline_node" :style = " {backgroundColor: item.bgcolor, width: item.size + 'px', height: item.size + 'px'}" @click="changeActive(index)" :class="{active: index == timeIndex}"></div>
          <!--线-->
          <div class="my_timeline_item_line"></div>
          <!--标注-->
          <div class="my_timeline_item_content" :style="{color: item.color, fontSize: item.fontsize + 'px'}">
            {{item.timestamp}}
          </div>
        </li>
      </ul>
    </div>
    <div class="my_timeline_next" @click="moveLeft">
      <svg t="1626276407990" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="3409" width="20" height="200"><path d="M682.666667 484.266667l-237.226667-220.586667a35.84 35.84 0 1 0-49.493333 52.48L603.733333 512l-207.786666 193.28a35.84 35.84 0 1 0 49.066666 52.48L682.666667 536.746667a35.84 35.84 0 0 0 0-52.48zM512 0a512 512 0 1 0 512 512A512 512 0 0 0 512 0z m0 72.106667a439.466667 439.466667 0 0 1 170.666667 844.373333A439.466667 439.466667 0 0 1 200.533333 200.533333a438.613333 438.613333 0 0 1 311.04-128z" fill="#ffffff" p-id="3410" data-spm-anchor-id="a313x.7781069.0.i7" class="selected"></path></svg>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Aaa',
    data() {
      return {
        timeIndex: 2,
        timeLineList: [{
          timestamp: '2019/08',
          color: 'rgba(255,255,255,0.8)',
          fontsize: 15,
          size: '18',
          bgcolor: '#e4e7ed',
          icon: 'el-iconprev',
          year: '2019/08/08',
          info: '初次见面',
          pic:'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/007.jpg'
        }, {
          timestamp: '2019/12',
          color: 'rgba(255,255,255,0.8)',
          fontsize: 15,
          size: '18',
          bgcolor: '#e4e7ed',
          year: '2019/12/11',
          info: '以为不会再见了',
          pic:'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/013.jpg'
        }, {
          timestamp: '2021/2',
          color: 'rgba(255,255,255,0.8)',
          fontsize: 15,
          size: '18',
          bgcolor: '#e4e7ed',
          year: '2021/2/11',
          info: '念念不忘 必有回响',
          pic:'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/002.jpg'
        }, {
          timestamp: '2021/4',
          color: 'rgba(255,255,255,0.8)',
          fontsize: 15,
          size: '18',
          bgcolor: '#e4e7ed',
          year: '2021/4/9',
          info: '让暧昧名正言顺',
          pic:'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/001.jpg'
        }, {
          timestamp: '2021/6',
          color: 'rgba(255,255,255,0.8)',
          fontsize: 15,
          size: '18',
          bgcolor: '#e4e7ed',
          year: '2021/6/10',
          info: '又在夏天相见了',
          pic:'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/013.jpg'
        }, {
          timestamp: '2021/10',
          color: 'rgba(255,255,255,0.8)',
          fontsize: 15,
          size: '18',
          bgcolor: '#e4e7ed',
          year: '2021/10/1',
          info: '未完待续...',
          pic:'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/007.jpg'
        }, {
          timestamp: '2021/12',
          color: 'rgba(255,255,255,0.8)',
          fontsize: 15,
          size: '18',
          bgcolor: '#e4e7ed',
          year: '2021/12/16',
          info: '未完待续...',
          pic:'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/013.jpg'
        }, {
          timestamp: '2022/1',
          color: 'rgba(255,255,255,0.8)',
          fontsize: 15,
          size: '18',
          bgcolor: '#e4e7ed',
          year: '2022/1/1',
          info: '未完待续...',
          pic:'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/001.jpg'
        }, {
          timestamp: '2022/5',
          color: 'rgba(255,255,255,0.8)',
          fontsize: 15,
          size: '18',
          bgcolor: '#e4e7ed',
          year: '2022/5/1',
          info: '未完待续...',
          pic:'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/013.jpg'
        }, {
          timestamp: '2023/1',
          color: 'rgba(255,255,255,0.8)',
          fontsize: 15,
          size: '18',
          bgcolor: '#e4e7ed',
          year: '2023/1/1',
          info: '未完待续...',
          pic:'https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/002.jpg'
        }]
      }
    },
    methods: {
      changeActive(index) {
        this.timeIndex = index;
      },
      moveLeft()  {
        let marginLeft = parseInt(this.$refs.mytimeline.style.marginLeft);
        let listNum = 0;
        if(marginLeft <= 10 && (marginLeft >= -750)){
          this.$refs.mytimeline.style.marginLeft = marginLeft - 160 + 'px';
        }
      },
      moveRight() {
        let marginLeft = parseInt(this.$refs.mytimeline.style.marginLeft);
        if(marginLeft < (-120)){
          this.$refs.mytimeline.style.marginLeft = marginLeft + 160 + 'px';
        }
      }
    }
  }
</script>

<style scoped>
  .event{
    margin-left: 30%;
    left: 3px;
    position: relative;
  }
  .event-pic{
    width: 350px;
    height: 200px;
    display: inline-block;
  }
  .event-describe{
    display: inline-block;
    margin-left: 20px;
    top: -70px;
    position: relative;
  }
  p{
    color: white;
  }
  .event-date{
    font-size: 14px;
  }
  .event-text{
    font-size: 20px;
  }
  .my_timeline_prev, .my_timeline_next {
    float: left;
    display: inline-block;
    cursor: pointer;
    margin-top: -72px;
  }
  .my_timeline_prev {
    width: 30px;
    float: left;
    margin-left: 10%;
  }
  .my_timeline_next {
    width: 30px;
  }
  .ul_box {
    width: 70%;
    height: 62px;
    display: inline-block;
    float: left;
    margin-top: 2px;
    margin-left: 80px;
    overflow: hidden;
  }
  .my_timeline_item {
    display: inline-block;
    width: 160px;
  }
  .my_timeline_node {
    box-sizing: border-box;
    border-radius: 50%;
    cursor: pointer;
  }
  .my_timeline_node.active {
    background-color: #fff !important;
    border: 4px solid #ffccff;
    z-index: 3;
    position: relative;
  }
  .my_timeline_item_line {
    width: 200px;
    height: 10px;
    margin: -10px 0 0 0;
    border-top: 2px solid #E4E7ED;
    border-left: none;
    z-index: 2;
    position: relative;
  }
  #my_timeline_item_line_1{
    margin-left: 20px;
    margin-top: -107px;
  }
  .my_timeline_item_content {
    margin: 8px 0 0 -15px;
  }
</style>
