<template>
  <div id="app">
    <div id="chinaMap" style="height:800px;width:1000px;" ref="myEchart"></div>
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
      this.chinamap();
    },
    methods: {
      chinamap(){
        var myChart = echarts.init(document.getElementById("chinaMap"));
        window.addEventListener('resize', function () {
          myChart.resize()
        })
        var option= {
          backgroundColor: '#87CEFA',  //设置背景颜色
          title: {
            show:true,
            text: '标题--中国地图',
            subtext: 'made by xzc',
            left:'center'
          },
          tooltip : {
            trigger: 'item'
          },
          //左侧小导航图标
          visualMap: {
            show : true,
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
            roam: false,
            zoom:1.2,
            label: {
              normal: {
                show: true ,
              },
              emphasis: {
                show: false
              }
            },
            data:[
              {name: '北京',value:randomData() },{name: '天津',value: randomData() },
              {name: '上海',value: randomData() },{name: '重庆',value: randomData() },
              {name: '河北',value: randomData() },{name: '河南',value: randomData() },
              {name: '云南',value: randomData() },{name: '辽宁',value: randomData() },
              {name: '黑龙江',value: randomData() },{name: '湖南',value: randomData() },
              {name: '安徽',value: randomData() },{name: '山东',value: randomData() },
              {name: '新疆',value: randomData() },{name: '江苏',value: randomData() },
              {name: '浙江',value: randomData() },{name: '江西',value: randomData() },
              {name: '湖北',value: randomData() },{name: '广西',value: randomData() },
              {name: '甘肃',value: randomData() },{name: '山西',value: randomData() },
              {name: '内蒙古',value: randomData() },{name: '陕西',value: randomData() },
              {name: '吉林',value: randomData() },{name: '福建',value: randomData() },
              {name: '贵州',value: randomData() },{name: '广东',value: randomData() },
              {name: '青海',value: randomData() },{name: '西藏',value: randomData() },
              {name: '四川',value: randomData() },{name: '宁夏',value: randomData() },
              {name: '海南',value: randomData() },{name: '台湾',value: randomData() },
              {name: '香港',value: randomData() },{name: '澳门',value: randomData() }


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
