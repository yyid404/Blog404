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
      <div class="container-content">
        <div class="menu">
          <router-view></router-view>
          <el-menu
            :default-active="$route.path"
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
            <el-submenu index="7">
              <template slot="title">DAILY</template>
              <el-menu-item index="/JOURNAL">JOURNAL</el-menu-item>
              <el-menu-item index="/KITTENS">KITTENS</el-menu-item>
              <el-menu-item index="/TRAVEL">TRAVEL</el-menu-item>
            </el-submenu>
            <el-menu-item index="/CONTACT">CONTACT</el-menu-item>
          </el-menu>
        </div>
        <div class="map">
          <div id="worldMap" style="height:300px;width:100%;" ref="myEchart"></div>
        </div>
      </div>
      <el-divider class="line"></el-divider>
      <div class="content">

      </div>
      <el-footer height="30px">分页</el-footer>
    </el-container>
  </div>
</template>
<script>
  import axios from 'axios'
  import '../../../node_modules/echarts/map/js/province/guangdong.js' // 引入广东地图数据
  import '../../../node_modules/echarts/map/js/province/xianggang.js' // 引入香港地图数据
  import '../../../node_modules/echarts/map/js/province/aomen.js' // 引入澳门地图数据
  import '../../../node_modules/echarts/map/js/province/shanghai.js' // 引入上海地图数据
  import '../../../node_modules/echarts/map/js/province/jiangsu.js' // 引入江苏地图数据
  import '../../../node_modules/echarts/map/js/province/zhejiang.js' // 引入浙江地图数据
  import '../../../node_modules/echarts/map/js/province/beijing.js' // 引入北京地图数据
  import '../../../node_modules/echarts/map/js/province/hunan.js' // 引入湖南地图数据
  import '../../../node_modules/echarts/map/js/province/hubei.js' // 引入湖北地图数据
  import '../../../node_modules/echarts/map/js/province/jiangxi.js' // 引入江西地图数据
  import '../../../node_modules/echarts/map/js/province/chongqing.js' // 引入重庆地图数据
  import '../../../node_modules/echarts/map/js/province/sichuan.js' // 引入四川地图数据
  import '../../../node_modules/echarts/map/js/province/guizhou.js' // 引入贵州地图数据
  import '../../../node_modules/echarts/map/js/province/guangxi.js' // 引入广西地图数据
  import '../../../node_modules/echarts/map/js/province/heilongjiang.js' // 引入黑龙江地图数据
  import '../../../node_modules/echarts/map/js/province/anhui.js' // 引入安徽地图数据
  import '../../../node_modules/echarts/map/js/province/shanxi1.js' // 引入陕西地图数据
  import '../../../node_modules/echarts/map/js/province/xinjiang.js' // 引入新疆地图数据
  import '../../../node_modules/echarts/map/js/province/xizang.js' // 引入西藏地图数据
  import '../../../node_modules/echarts/map/js/province/yunnan.js' // 引入云南地图数据
  import '../../../node_modules/echarts/map/js/province/qinghai.js' // 引入青海地图数据
  import '../../../node_modules/echarts/map/js/province/gansu.js' // 引入甘肃地图数据
  import '../../../node_modules/echarts/map/js/province/neimenggu.js' // 引入内蒙古地图数据
  import '../../../node_modules/echarts/map/js/province/ningxia.js' // 引入宁夏地图数据
  import '../../../node_modules/echarts/map/js/province/fujian.js' // 引入福建地图数据
  import '../../../node_modules/echarts/map/js/province/hainan.js' // 引入海南地图数据
  import '../../../node_modules/echarts/map/js/province/taiwan.js' // 引入台湾地图数据
  import '../../../node_modules/echarts/map/js/province/liaoning.js' // 引入辽宁地图数据
  import '../../../node_modules/echarts/map/js/province/jilin.js' // 引入吉林地图数据
  import '../../../node_modules/echarts/map/js/province/tianjin.js' // 引入天津地图数据
  import '../../../node_modules/echarts/map/js/province/shandong.js' // 引入山东地图数据
  import '../../../node_modules/echarts/map/js/province/shanxi.js' // 引入山西地图数据
  import '../../../node_modules/echarts/map/js/province/hebei.js' // 引入河北地图数据
  import '../../../node_modules/echarts/map/js/province/henan.js' // 引入河南地图数据

  var echarts = require('echarts/lib/echarts');
  require('echarts/map/js/china') // 引入中国地图数据
  require('echarts/map/js/world') // 引入世界地图数据

  export default {
    name: 'Album',
    data () {
      return {
        circleUrl: "https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png",
        squareUrl: "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/user/user-avatar-Lemon.jpg",
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
        axios.get('/static/world-album.json').then(function (res) {
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
          /*
                    backgroundColor: 'black',  //设置背景颜色
          */
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
              return val.data.name
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
            color: ['#210200', '#3e0300', '#5d0500']
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
              areaColor: '#1a1818', // 地图区域的颜色 如果设置了visualMap，areaColor属性将不起作用
              borderWidth: 1, // 描边线宽 为 0 时无描边
              borderColor: '#413c3c', // 图形的描边颜色 支持的颜色格式同 color，不支持回调函数
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

        //=================改成点击地图后，进入相应的子地图，并在下面的div显示相应的歌手图片，可逐级进入+显示=================
        //点击事件，以下实现的是点击进入到相应的子地图
        myChart.on('click', function (countryName) {
          if(countryName.name=="China" ||
             countryName.name=="广东" ||
             countryName.name=="香港" ||
             countryName.name=="澳门" ||
             countryName.name=="上海" ||
             countryName.name=="江苏" ||
             countryName.name=="浙江" ||
             countryName.name=="北京" ||
             countryName.name=="湖南" ||
             countryName.name=="湖北" ||
             countryName.name=="江西"
          ){
            var option = myChart.getOption();
            option.series[0].map = countryName.name.toLowerCase();
            option.series[0].mapType  = countryName.name;
            myChart.clear();
            console.log(countryName.name);
            myChart.setOption(option,true);
          }else{
            alert(countryName.name+"没有下一级了喔");
          }
        });
      },
      detail(){
        window.location.href='https://www.baidu.com/';
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
    background-color: black;
  }

  .el-header {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-photograph-1.jpg");
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
    margin: 0 auto 20px auto;
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

  .container-content{
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-photograph-1.jpg");
    background-size: 450px;
  }

  .menu{
    background-color: black;
    opacity: 70%;
    display:flex;
    justify-content:center;
  }

  .map{

  }

  .content{
    margin-left: 36px;
    margin-right: 36px;
    margin-bottom: 50px;
  }

  .photographer{
    background-color: #1f1f1f;
    width: 200px;
    height: 385px;
    display: block;
    float: left;
    padding: 5px;
    margin: 20px;
    border-radius: 0.5em;
    border:0.5px solid #464545;
    box-shadow: #272727 0px 2px 5px;
  }

  .photographer-img {
    width: 100%;
    height: auto;
    border-radius: 0.5em;
  }

  .el-divider--horizontal{
    margin: 1px 0;
    background: 0 0;
    border-top: 2px solid white;
  }

  span {
    font-weight:bold;
    color:white;
    display: block;
    text-align: center;
  }

  .el-footer {
    background-color: black;
    color: #b0b0b0;
    text-align: center;
    line-height: 30px;
    /*
        position: fixed;
    */
    bottom: 0px;
    width: 100%;
    opacity: 70%;
  }
</style>

