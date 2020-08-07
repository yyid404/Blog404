<template>
  <div class="container">
    <div class="map">
      <div id="worldMap" style="height:300px;width:100%;" ref="myEchart"></div>
    </div>
    <el-divider class="line"></el-divider>
    <div class="content">

    </div>
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
  .map{

  }

  .content{
    height: 500px;
    padding-top: 20px;
    margin: 0;
  }

  .el-divider--horizontal{
    height: 0px;
    background: 0 0;
    margin: 0px 0;
    border-top: 2px solid white;
  }
</style>

