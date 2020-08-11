<template>
  <div class="container">
    <div class="content">
      <div class="kittens">
        <div class="kittens-info">
          <div class="kitty-info" id="Kitty">
            <KittensAvatar class="kitty-info-avatar-block"></KittensAvatar>
            <div class="kitty-info-avatar">
              <img class="kitty-info-avatar-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-avatar-Kitty.png">
            </div>
            <div class="kitty-info-data">
              <h6>昵称：眠眠 Kitty</h6>
              <h6>生日：2020/04/28</h6>
              <h6>品种：苏格兰立耳</h6>
              <h6>颜色：纯白</h6>
              <h6>性别：mm</h6>
            </div>
          </div>
          <div class="kitty-info" id="Milky">
            <div class="kitty-info-avatar">
              <img class="kitty-info-avatar-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-avatar-Milky.png">
            </div>
            <div class="kitty-info-data">
              <h6>昵称：奶茶 Milky</h6>
              <h6>生日：2020/05/28</h6>
              <h6>品种：苏格兰立耳</h6>
              <h6>颜色：乳白</h6>
              <h6>性别：mm</h6>
            </div>
          </div>
          <div class="kitty-info" id="Cheese">
            <div class="kitty-info-avatar">
              <img class="kitty-info-avatar-img" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-avatar-Cheese.png">
            </div>
            <div class="kitty-info-data">
              <h6>昵称：知世 Cheese</h6>
              <h6>生日：2020/06/28</h6>
              <h6>品种：苏格兰立耳</h6>
              <h6>颜色：银白虎斑</h6>
              <h6>性别：mm</h6>
            </div>
          </div>
        </div>
        <div id="chart"></div>
      </div>
      <el-divider class="line"></el-divider>
      <div class="timeline">
        <el-timeline>
          <el-timeline-item timestamp="2020/7/19" placement="top" color="#83A0B9">
            <el-card>
              <h4>UPDATE Kitty</h4>
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Kitty-6.jpg">
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Kitty-7.jpg">
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Kitty-8.jpg">
              <p>Commit by Lemon 2020/7/19 10:10</p>
            </el-card>
            <el-divider><i class="el-icon-star-off"></i></el-divider>
            <el-card>
              <h4>UPDATE Cheese</h4>
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Cheese-5.jpg">
              <p>Commit by Lemon 2020/7/19 9:17</p>
            </el-card>
            <el-divider><i class="el-icon-star-off"></i></el-divider>
          </el-timeline-item>

          <el-timeline-item timestamp="2020/7/18" placement="top">
            <el-card>
              <h4>UPDATE Kitty</h4>
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Kitty-9.jpg">
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Kitty-10.jpg">
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Kitty-11.jpg">
              <p>Commit by Lemon 2020/7/18 17:22</p>
            </el-card>
            <el-divider><i class="el-icon-star-off"></i></el-divider>
          </el-timeline-item>

          <el-timeline-item timestamp="2020/7/12" placement="top">
            <el-card>
              <h4>UPDATE Cheese</h4>
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Cheese-3.jpg">
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Cheese-4.jpg">
              <p>Commit by Lemon 2020/7/12 14:20</p>
            </el-card>
            <el-divider><i class="el-icon-star-off"></i></el-divider>
            <el-card>
              <h4>UPDATE Cheese</h4>
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Cheese-8.jpg">
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Cheese-9.jpg">
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Cheese-10.jpg">
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Cheese-11.jpg">
              <p>Commit by Lemon 2020/7/12 12:20</p>
            </el-card>
            <el-divider><i class="el-icon-star-off"></i></el-divider>
            <el-card>
              <h4>UPDATE Milky</h4>
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Milky-1.jpg">
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Milky-2.jpg">
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Milky-3.jpg">
              <p>Commit by Lemon 2020/7/12 11:20</p>
            </el-card>
            <el-divider><i class="el-icon-star-off"></i></el-divider>
          </el-timeline-item>

          <el-timeline-item timestamp="2020/7/4" placement="top">
            <el-card>
              <h4>UPDATE Kitty</h4>
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Kitty-2.jpg">
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Kitty-3.jpg">
              <p>Commit by Lemon 2020/7/4 11:18</p>
            </el-card>
            <el-divider><i class="el-icon-star-off"></i></el-divider>
            <el-card>
              <h4>UPDATE Cheese</h4>
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Cheese-6.jpg">
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Cheese-7.jpg">
              <p>Commit by Lemon 2020/7/4 10:18</p>
            </el-card>
            <el-divider><i class="el-icon-star-off"></i></el-divider>
          </el-timeline-item>

          <el-timeline-item timestamp="2020/6/23" placement="top">
            <el-card>
              <h4>UPDATE Kitty</h4>
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Kitty-1.jpg">
              <p>Commit by Lemon 2020/6/23 11:18</p>
            </el-card>
            <el-divider><i class="el-icon-star-off"></i></el-divider>
          </el-timeline-item>

          <el-timeline-item timestamp="2020/5/29" placement="top">
            <el-card>
              <h4>UPDATE Cheese</h4>
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Cheese-1.jpg">
              <p>Commit by Lemon 2020/5/29 13:13</p>
            </el-card>
            <el-divider><i class="el-icon-star-off"></i></el-divider>
          </el-timeline-item>

          <el-timeline-item timestamp="2020/5/28" placement="top">
            <el-card>
              <h4>UPDATE Kitty</h4>
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Kitty-4.jpg">
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Kitty-5.jpg">
              <p>Commit by Lemon 2020/5/28 15:11</p>
            </el-card>
            <el-divider><i class="el-icon-star-off"></i></el-divider>
            <el-card>
              <h4>UPDATE Cheese</h4>
              <img class="timeline-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/kittens/kitty-Cheese-2.jpg">
              <p>Commit by Lemon 2020/5/28 12:11</p>
            </el-card>
            <el-divider><i class="el-icon-star-off"></i></el-divider>
          </el-timeline-item>
        </el-timeline>
      </div>
    </div>
  </div>
</template>

<script>
  import echarts from 'echarts'
  import KittensAvatar from "./Kittens-Avatar";

  export default {
    name: 'Kittens',
    components: {KittensAvatar},
    data () {
      return {
        activeIndex: '1',
        charts: '',
      }
    },
    methods: {
      handleSelect (key, keyPath) {
        console.log(key, keyPath);
      },
      drawLine(id) {
        this.charts = echarts.init(document.getElementById(id))
        this.charts.setOption({

          tooltip: {
            trigger: 'axis'
          },
          legend: {
            data: ['眠眠日龄','奶茶日龄','知世日龄','眠眠体重','奶茶体重','知世体重','眠眠食量','奶茶食量','知世食量','眠眠食量/体重比','奶茶食量/体重比','知世食量/体重比'],

            selected:{  //若为单选模式，且不加这项，则默认选中data第一项
              '眠眠日龄':false,
              '奶茶日龄':false,
              '知世日龄':false,
              '眠眠体重':true,
              '奶茶体重':true,
              '知世体重':true,
              '眠眠食量':false,
              '奶茶食量':false,
              '知世食量':false,
            },
            right: 10,
            inactiveColor: "#ADD9FF",         //选中状态的颜色
            textStyle: {
              color: "#C23531"
            }
          },
          grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            containLabel: true
          },
          toolbox: {
            feature: {
              saveAsImage: {}
            }
          },
          xAxis: {
            type: 'category',
            boundaryGap: false,
            data: ["20/7/8","20/7/9","20/7/10","20/7/11","20/7/12","20/7/13","20/7/14","20/7/15","20/7/16","20/7/17","20/7/18","20/7/19","20/7/20"]
          },
          yAxis: {
            type: 'value'
          },
          series: [
            {
              name: '眠眠体重',
              type: 'line',
              data: [551,585,575,598,631,627,653,649,682,667,712,707,765],
            },
            {
              name: '奶茶体重',
              type: 'line',
              data: [1403,1444,1470,1499,1522,1555,1580,1590,1612,1633,1655,1680,1725],
            },
            {
              name: '知世体重',
              type: 'line',
              data: [1805,1844,1870,1899,1822,1855,1880,1890,1812,1833,1855,1880,1825],
            },
            {
              name: '眠眠食量',
              type: 'line',
              data: [62,58,53,86,80,50,50,86,61,81,72,100]
            },
            {
              name: '奶茶食量',
              type: 'line',
              data: [123,135,153,186,180,150,150,186,161,181,172,155]
            },
            {
              name: '知世食量',
              type: 'line',
              data: [143,145,153,176,190,170,180,186,171,171,178,192]
            },
            {
              name: '眠眠日龄',
              type: 'line',
              data: [72,73,74,75,76,77,78,79,80,81,82,83,84]
            },
            {
              name: '奶茶日龄',
              type: 'line',
              data: [93,94,95,96,97,98,99,100,101,102,103,104,105]
            },
            {
              name: '知世日龄',
              type: 'line',
              data: [122,123,124,125,126,127,128,129,130,131,132,133,134]
            },
          ]
        })
      }
    },
    //调用
    mounted() {
      this.$nextTick(function() {
        this.drawLine('chart')
      })
    }
  }
</script>

<style scoped>
  .kittens{
    height: 400px;
  }

  .kittens-info{
    width: 20%;
    height: 100%;
    margin-top: 10px;
    display: block;
    float: left;
  }

  .kitty-info{
    height: 120px;
    margin-bottom: 10px;
    margin-left: 10px;
  }

  .kitty-info-avatar-block{
    margin-top: -16px;
    margin-left: -40px;
    position: absolute;
  }

  .kitty-info-avatar{
    height: 120px;
    width: 120px;
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-rim-kittens-avatar-1.png");
    display: block;
    float: left;
  }

  .kitty-info-avatar-img{
    height: 110px;
    width: 110px;
    margin-top: 5px;
    margin-left: 5px;
    border-radius: 50%;
  }

  .kitty-info-data {
    margin-left: 10px;
    display: block;
    float: left;
  }

  h6{
    margin: 7px;
    color: #83a0b9;
  }

  #chart{
    margin-top: 5px;
    width: 80%;
    height: 100%;
    float: left;
    display: block;
    float: left;
  }

  .line{
    margin: 1px 0;
    background: 0 0;
    border-top: 2px solid white;
  }

  .timeline{
    margin-left: 20px;
    margin-right: 20px;
    margin-top: 10px;
  }

  .timeline-pic{
    width: auto;
    height: 200px;
  }
</style>
