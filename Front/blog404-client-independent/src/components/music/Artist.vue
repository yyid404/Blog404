<template>
  <div class="content">
    <div class="map">
      <div id="worldMap" style="height:300px;width:100%;" ref="myEchart"></div>
    </div>
    <el-divider class="line"></el-divider>
    <div class="artist-content">
      <div class="artists">
        <div class="singer" @click="detail">
          <img class="singer-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/singer/singer-%E7%8E%8B%E8%8F%B2-1.jpg">
          <span>王菲</span>
        </div>
        <div class="singer" @click="detail">
          <img class="singer-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/singer/singer-Norah%20Jones-1.jpg">
          <span>Norah Jones</span>
        </div>
        <div class="singer" @click="detail">
          <img class="singer-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/singer/singer-Rachael%20Yamagata-1.jpg">
          <span>Rachael Yamagata</span>
        </div>
        <div class="singer" @click="detail">
          <img class="singer-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/singer/singer-%E5%B0%8F%E9%87%8E%E4%B8%BD%E8%8E%8E-1.jpg">
          <span>小野丽莎</span>
        </div>
        <div class="singer" @click="detail">
          <img class="singer-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/singer/singer-Stacey%20Kent-1.jpg">
          <span>Stacey Kent</span>
        </div>
        <div class="singer" @click="detail">
          <img class="singer-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/singer/singer-%E7%8E%8B%E8%8B%A5%E7%90%B3-3.jpg">
          <span>王若琳</span>
        </div>
        <div class="singer" @click="detail">
          <img class="singer-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/singer/singer-Keren%20Ann-3.jpg">
          <span>Keren Ann</span>
        </div>
        <div class="singer" @click="detail">
          <img class="singer-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/singer/singer-Billie%20Eilish-1.jpg">
          <span>Billie Eilish</span>
        </div>
        <div class="singer" @click="detail">
          <img class="singer-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/singer/singer-Madilyn%20Bailey-1.jpg">
          <span>Madilyn Bailey</span>
        </div>
        <div class="singer" @click="detail">
          <img class="singer-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/singer/singer-%E6%88%BF%E4%B8%9C%E7%9A%84%E7%8C%AB-2.jpg">
          <span>房东的猫</span>
        </div>
        <div class="singer" @click="detail">
          <img class="singer-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/singer/singer-%E9%BD%90%E8%B1%AB-2.jpg">
          <span>齐豫</span>
        </div>
        <div class="singer" @click="detail">
          <img class="singer-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/singer/singer-%E6%89%8B%E5%B6%8C%E8%91%B5-1.jpg">
          <span>手嶌葵</span>
        </div>
        <div class="singer" @click="detail">
          <img class="singer-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/singer/singer-%E8%B0%A2%E5%AE%89%E7%90%AA-1.jpg">
          <span>谢安琪</span>
        </div>
        <div class="singer" @click="detail">
          <img class="singer-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/singer/singer-%E5%90%B4%E9%9B%A8%E9%9C%8F-1.jpg">
          <span>吴雨霏</span>
        </div>
        <div class="singer" @click="detail">
          <img class="singer-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/singer/singer-%E5%8D%AB%E5%85%B0-1.jpg">
          <span>卫兰</span>
        </div>
        <div class="singer" @click="detail">
          <img class="singer-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/singer/singer-%E9%99%88%E5%A5%95%E8%BF%85-1.jpg">
          <span>陈奕迅</span>
        </div>
        <div class="singer" @click="detail">
          <img class="singer-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/singer/singer-Coldplay-2.jpg">
          <span>Coldplay</span>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
  import axios from 'axios'

  var echarts = require('echarts/lib/echarts');
  require('echarts/map/js/china') // 引入中国地图数据
  require('echarts/map/js/world') // 引入世界地图数据

  export default {
    name: 'Artist',
    mounted() {
      this.worldmap();
    },
    methods: {
      handleSelect(key, keyPath) {
        console.log(key, keyPath);
      },
      worldmap() {
        var that = this
        axios.get('/static/world-singer.json').then(function (res) {
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
                    backgroundColor: '#ebebec',  //设置背景颜色
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
              areaColor: '#b2a1c6', // 地图区域的颜色 如果设置了visualMap，areaColor属性将不起作用
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

        //=================改成点击地图后，进入相应的子地图，并在下面的div显示相应的歌手图片，可逐级进入+显示=================
        //点击事件，以下实现的是点击进入到相应的子地图
        myChart.on('click', function (countryName) {
          if(countryName.name=="China"){
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

  .artist-content{
    padding-top: 20px;
  }

  .artists{
    margin-left: 16px;
    margin-right: 36px;
    padding-bottom: 10px;
  }

  .singer{
    background-color: white;
    width: 200px;
    height: 385px;
    padding: 5px;
    margin-left: 40px;
    margin-bottom: 40px;
    display: inline-block;
    border-radius: 0.5em;
    border:0.5px solid #dfdcdc;
    box-shadow: #ccc 0px 2px 5px;
  }

  .singer-img {
    width: 100%;
    height: auto;
    border-radius: 0.5em;
  }

  .el-divider--horizontal{
    height: 0px;
    background: 0 0;
    margin: 0px 0;
    border-top: 2px solid white;
  }

  span {
    font-weight:bold;
    color:black;
    display: block;
    text-align: center;
  }
</style>
