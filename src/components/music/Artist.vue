<template>
  <div class="container">
    <el-container>
      <el-header height="191px">
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
      </el-header>
      <div class="menu">
        <router-view></router-view>
        <el-menu
          :default-active="activeIndex2"
          class="el-menu-demo"
          router
          mode="horizontal"
          @select="handleSelect"
          background-color="#7B6F93"
          text-color="#F4D0D8"
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
      <div class="map">
        <div id="worldMap" style="height:300px;width:100%;" ref="myEchart"></div>
      </div>
      <div class="content">
        <el-row :gutter="5">
          <el-col :span="8">
            <div class="img">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph-7.jpg">
            </div>
          </el-col>
          <el-col :span="8">
            <div class="img">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph-5.jpg">
            </div>
          </el-col>
          <el-col :span="8">
            <div class="img">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph-12.jpg">
            </div>
          </el-col>
        </el-row>
      </div>
      <el-footer height="30px">分页</el-footer>
    </el-container>
  </div>
</template>
<script>
  import axios from 'axios'

  var echarts = require('echarts/lib/echarts');
  require('echarts/map/js/china') // 引入中国地图数据
  require('echarts/map/js/world') // 引入世界地图数据

  export default {
    name: 'Artist',
    data () {
      return {
        circleUrl: "https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png",
        squareUrl: "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/avatar.jpg",
        activeIndex2: '1'
      }
    },
    mounted() {
      this.worldmap();
    },
    methods: {
      handleSelect(key, keyPath) {
        console.log(key, keyPath);
      },
      worldmap() {
        var that = this
        axios.get('/static/world.json').then(function (res) {
          let namemap = res.data.namemap
          let dataArr = res.data.dataArr
          that.drawChart(namemap, dataArr)
        })
      },
      drawChart (name, data) {
        var myChart = echarts.init(document.getElementById("worldMap"));
        window.addEventListener('resize', function () {
          myChart.resize()
        })
        var option= {
          backgroundColor: '#F5F7F8',  //设置背景颜色
          title: {
            show:false,
            text: '世界地图',
            subtext: 'Lemon',
            left:'center'
          },
          // 提示框组件
          tooltip: {
            trigger: 'item', // 触发类型, 数据项图形触发，主要在散点图，饼图等无类目轴的图表中使用
            // 提示框浮层内容格式器，支持字符串模板和回调函数两种形式
            // 使用函数模板  传入的数据值 -> value: number | Array
            formatter: function (val) {
              return val.data.name + ': ' + val.data.detail
            }
          },
          //左侧小导航图标，根据data中的value显示颜色
          visualMap: {
            show : false,
            x: 'left',
            y: 'bottom',
            splitList: [
              {start: 10, end:20},
              {start: 6, end: 10},
              {start: 0, end: 6},
            ],
            color: ['#884EA0', '#9B59B6', '#AF7AC5']
            //具体数量会读data中对应的value，我们这里使用了json文件代替List<Map>类型的data
          },
          //配置属性
          series: [{
            name: '数量',
            type: 'map',
            map: 'world',
            // 是否开启鼠标缩放和平移漫游 默认不开启 如果只想要开启缩放或者平移，可以设置成 'scale' 或者 'move' 设置成 true 为都开启
            roam: true,
            zoom:1.2,
            // 图形上的文本标签，是否显示对应地名
            label: {
              //常规显示
              normal: {
                show: false ,
              },
              //鼠标置于时显示
              emphasis: {
                show: true
              }
            },
            // 地图区域的多边形 图形样式
            itemStyle: {
              areaColor: '#D7BDE2', // 地图区域的颜色 如果设置了visualMap，areaColor属性将不起作用
              borderWidth: 1, // 描边线宽 为 0 时无描边
              borderColor: '#EBDEF0', // 图形的描边颜色 支持的颜色格式同 color，不支持回调函数
              borderType: 'solid' // 描边类型，默认为实线，支持 'solid', 'dashed', 'dotted'
            },
            // 自定义地区的名称映射
            nameMap: name,
            // 地图系列中的数据内容数组 数组项可以为单个数值
            data: data,
          }]
        };
/*
        // 定时显示提示框和高亮效果
        let index = -1
        setInterval(function () {
          // 隐藏提示框
          chart.dispatchAction({
            type: 'hideTip',
            seriesIndex: 0,
            dataIndex: index
          })
          // 显示提示框
          chart.dispatchAction({
            type: 'showTip',
            seriesIndex: 0,
            dataIndex: index + 1
          })
          // 取消高亮指定的数据图形
          chart.dispatchAction({
            type: 'downplay',
            seriesIndex: 0,
            dataIndex: index
          })
          // 高亮指定的数据图形
          chart.dispatchAction({
            type: 'highlight',
            seriesIndex: 0,
            dataIndex: index + 1
          })
          index++
          if (index > data.length - 1) {
            index = -1
          }
        }, 2000)
*/
        //使用刚指定的配置项和数据显示图表。
        myChart.setOption(option);

        myChart.on('mouseover', function (params) {
          var dataIndex = params.dataIndex;
          console.log(dataIndex);
        });

        myChart.on('click', function (countryName) {
          if(countryName.name=="China"||countryName.name=="福建"||countryName.name=="安徽"||countryName.name=="新疆"||countryName.name=="西藏"){
            var option = myChart.getOption();
            option.series[0].map = countryName.name.toLowerCase();
            option.series[0].mapType  = countryName.name;
            myChart.clear();
            console.log(countryName.name);
            myChart.setOption(option,true);
          }else{
            alert(countryName.name+"这个区域暂时没有喔");
          }
        });
      }
    },
    created () {
    },
    watch: {
    }
  }
</script>

<style scoped>
  .container{
    background-color: #F5F7F8;
  }

  .el-header {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/banner.jpg");
    background-size: auto 100%;
    line-height: 0px;
  }

  .margin-top{
    height: 20px;
  }

  .el-row {
    margin-bottom: 20px;
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

  .menu{
    background-color: #7B6F93;
    opacity: 100%;
    display:flex;
    justify-content:center;
  }

  .map{

  }

  .content{
    margin-left: 20px;
    margin-right: 20px;
  }

  img{
    width: 100%;
    margin-bottom: 1px;

  }

  .el-footer {
    background-color: #B3C0D1;
    color: #333;
    text-align: center;
    line-height: 30px;
    position: fixed;
    bottom: 0px;
    width: 100%;
  }
</style>
