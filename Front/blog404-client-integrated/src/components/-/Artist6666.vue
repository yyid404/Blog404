<template>
  <div id="app">
    <div id="worldMap" style="height:800px;width:1000px;" ref="myEchart"></div>
    <div id="myChart" style="width: 100%;height:400px;"></div>
  </div>
</template>

<script>
  var echarts = require('echarts/lib/echarts');
  require('echarts/map/js/china') // 引入中国地图数据
  require('echarts/map/js/world') // 引入世界地图数据
  export default {
    name: 'Artist',
    mounted() {
      this.worldmap();
    },
    methods: {
      worldmap(){
        var myChart = echarts.init(document.getElementById("worldMap"));
        window.addEventListener('resize', function () {
          myChart.resize()
        })
        var option= {
          backgroundColor: 'white',  //设置背景颜色
          title: {
            show:false,
            text: '世界地图',
            subtext: 'Lemon',
            left:'center'
          },
          tooltip : {
            trigger: 'item'
          },
          //左侧小导航图标，根据数量显示颜色
          visualMap: {
            show : false,
            x: 'left',
            y: 'bottom',
            splitList: [
              {start: 10, end:20},
              {start: 6, end: 10},
              {start: 0, end: 6},
            ],
            color: ['#1E90FF', '#7FFFAA', '#F0E68C']
          },
          //配置属性
          series: [{
            name: '数量',
            type: 'map',
            map: 'china',
            // 是否开启鼠标缩放和平移漫游 默认不开启 如果只想要开启缩放或者平移，可以设置成 'scale' 或者 'move' 设置成 true 为都开启
            roam: true,
            zoom:1.2,
            // 图形上的文本标签
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
              areaColor: 'grey', // 地图区域的颜色 如果设置了visualMap，areaColor属性将不起作用
              borderWidth: 1, // 描边线宽 为 0 时无描边
              borderColor: 'grey', // 图形的描边颜色 支持的颜色格式同 color，不支持回调函数
              borderType: 'solid' // 描边类型，默认为实线，支持 'solid', 'dashed', 'dotted'
            },
            data:[
              {name: 'China',value: 8 },
              {name: 'Japan',value: 2 },
              {name: 'United States',value: 5 }
            ]
          }]
        };

        var count = -1;
        setInterval(function() {

          var curr = count % 34; //数字为cityArr.length


          myChart.dispatchAction({
            type: 'downplay',
            seriesIndex: 0,

          });
          myChart.dispatchAction({
            type: 'highlight',
            seriesIndex: 0,
            dataIndex: curr
          });

          myChart.dispatchAction({
            type: 'showTip',
            seriesIndex: 0, // 因为只有一组数据，所以此处应为0
            dataIndex: curr
          });
          count++;

          /*
          if (index > cityArr.length - 1) {
            count = -1
          }
          */

        }, 500);

        /**
         *  使用刚指定的配置项和数据显示图表。
         *  */
        myChart.setOption(option);
        //获取随机数
        function randomData() {
          return Math.round(Math.random()*(12-1)+1)
        }

        myChart.on('mouseover', function (params) {
          var dataIndex = params.dataIndex;
          console.log(dataIndex);
        });


        myChart.on('click', function (chinaParam) {

          if(chinaParam.name=="北京"||chinaParam.name=="福建"||chinaParam.name=="安徽"||chinaParam.name=="新疆"||chinaParam.name=="西藏"){
            var option = myChart.getOption();
            option.series[0].map = chinaParam.name;
            option.series[0].mapType  = chinaParam.name;
            myChart.clear();
            console.log(chinaParam.name);
            myChart.setOption(option,true);
          }else{

            alert(chinaParam.name+"区域还未开通！");
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
