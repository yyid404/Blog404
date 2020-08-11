<template>
  <div class='wrapper'>
    <div class='chart' id='chart'></div>
  </div>
</template>

<script>
  import axios from 'axios'

  export default {
    name: 'Artist',
    data () {
      return {}
    },
    mounted () {
      this.getWorld()
    },
    methods: {
      getWorld () {
        var that = this
        axios.get('/static/world-singer.json').then(function (res) {
          let namemap = res.data.namemap
          let dataArr = res.data.dataArr
          that.drawChart(namemap, dataArr)
        })
      },
      drawChart (name, data) {
        // 基于准备好的dom，初始化echarts实例
        let chart = this.$echarts.init(document.getElementById('chart'))
        // 监听屏幕变化自动缩放图表
        window.addEventListener('resize', function () {
          chart.resize()
        })
        // 绘制图表
        chart.setOption({
          // 图表主标题
          title: {
            text: '世界地图', // 主标题文本，支持使用 \n 换行
            top: 20, // 定位 值: 'top', 'middle', 'bottom' 也可以是具体的值或者百分比
            left: 'center', // 值: 'left', 'center', 'right' 同上
            textStyle: { // 文本样式
              fontSize: 24,
              fontWeight: 600,
              color: '#fff'
            }
          },
          // 提示框组件
          tooltip: {
            trigger: 'item', // 触发类型, 数据项图形触发，主要在散点图，饼图等无类目轴的图表中使用
            // 提示框浮层内容格式器，支持字符串模板和回调函数两种形式
            // 使用函数模板  传入的数据值 -> value: number | Array
            formatter: function (val) {
              return val.data.name + ': ' + val.data.value
            }
          },
          // 视觉映射组件
          visualMap: {
            type: 'continuous', // continuous 类型为连续型  piecewise 类型为分段型
            show: true, // 是否显示 visualMap-continuous 组件 如果设置为 false，不会显示，但是数据映射的功能还存在
            // 指定 visualMapContinuous 组件的允许的最小/大值。'min'/'max' 必须用户指定。
            // [visualMap.min, visualMax.max] 形成了视觉映射的『定义域』
            min: 0,
            max: 1000000,
            // 文本样式
            textStyle: {
              fontSize: 14,
              color: '#fff'
            },
            realtime: false, // 拖拽时，是否实时更新
            calculable: true, // 是否显示拖拽用的手柄
            // 定义 在选中范围中 的视觉元素
            inRange: {
              color: ['#9fb5ea', '#e6ac53', '#74e2ca', '#85daef', '#9feaa5', '#5475f5'] // 图元的颜色
            }
          },
          series: [
            {
              type: 'map', // 类型
              // 系列名称，用于tooltip的显示，legend 的图例筛选 在 setOption 更新数据和配置项时用于指定对应的系列
              name: '世界地图',
              mapType: 'world', // 地图类型
              // 是否开启鼠标缩放和平移漫游 默认不开启 如果只想要开启缩放或者平移，可以设置成 'scale' 或者 'move' 设置成 true 为都开启
              roam: true,
              // 图形上的文本标签
              label: {
                show: false // 是否显示对应地名
              },
              // 地图区域的多边形 图形样式
              itemStyle: {
                areaColor: '#7B68EE', // 地图区域的颜色 如果设置了visualMap，areaColor属性将不起作用
                borderWidth: 0.5, // 描边线宽 为 0 时无描边
                borderColor: '#000', // 图形的描边颜色 支持的颜色格式同 color，不支持回调函数
                borderType: 'solid' // 描边类型，默认为实线，支持 'solid', 'dashed', 'dotted'
              },
              // 高亮状态下的多边形和标签样式
              emphasis: {
                label: {
                  show: true, // 是否显示标签
                  color: '#fff' // 文字的颜色 如果设置为 'auto'，则为视觉映射得到的颜色，如系列色
                },
                itemStyle: {
                  areaColor: '#FF6347' // 地图区域的颜色
                }
              },
              // 自定义地区的名称映射
              nameMap: name,
              // 地图系列中的数据内容数组 数组项可以为单个数值
              data: data
            }
          ]
        })
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
      }
    }
  }
</script>

<style scoped>
  .wrapper {
    width: 100%;
  }
  .wrapper .chart {
    width: 80%;
    height: 600px;
    margin: 100px 50px 0;
    border: 1px solid #eeeeee;
    background: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph-17.jpg") no-repeat;
    background-size: 100% 100%;
  }
</style>
