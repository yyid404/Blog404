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
            background-color="#73aec4"
            text-color="#f9f177"
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
      </div>
      <div class="kittens">
        <div class="kittens-info">
          <div class="kitty-info" id="Kitty">
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
      <div class="content">
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
      <el-footer height="30px">分页</el-footer>
    </el-container>
  </div>
</template>

<script>
/*
  https://cloud.tencent.com/developer/article/1434515
*/
  import echarts from 'echarts'

  export default {
    name: 'Kittens',
    data () {
      return {
        circleUrl: "https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png",
        squareUrl: "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/user/user-avatar-Lemon.jpg",
        activeIndex2: '1',
        charts: '',
/*
        opinionData: ["551","585","575","598","631","627","653","649","682","667","712","707","765"]
*/
      }
    },
    methods: {
      handleSelect (key, keyPath) {
        console.log(key, keyPath);
      },
      drawLine(id) {
        this.charts = echarts.init(document.getElementById(id))
        this.charts.setOption({
/*
          title: {
            text: '成长记录'
          },
*/
          tooltip: {
            trigger: 'axis'
          },
          legend: {
            data: ['眠眠日龄','奶茶日龄','知世日龄','眠眠体重','奶茶体重','知世体重','眠眠食量','奶茶食量','知世食量','眠眠食量/体重比','奶茶食量/体重比','知世食量/体重比'],
/*
            selectedMode: "single",     //单选模式，每次出现一条折线图
*/
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
/*
              '眠眠食量/体重比':false,
              '奶茶食量/体重比':false,
              '知世食量/体重比':false
*/
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
/*
              stack: '总量', //加上总量后，多选择一条折线，会在已选择的基础上计算总和后再显示
*/
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
 /*
            {
              name: '眠眠食量/体重比',
              type: 'line',
              data: [11.25,9.91,9.22,14.38,12.68,7.97,7.66,13.25,8.94,12.14,10.11,14.14,]
            },
            {
              name: '奶茶食量/体重比',
              type: 'line',
              data: [11.55,9.1,9.22,14.38,12.68,7.97,7.66,13.25,10.94,12.14,7.11,12.14,]
            },
            {
              name: '知世食量/体重比',
              type: 'line',
              data: [11.55,8.1,7.22,10.38,12.68,7.97,7.66,10.25,10.94,10.14,7.10,10.14,]
            }
*/
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
  .container{
    background-color: #f1f5f6;
  }

  .el-header {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-daily-1.jpg");
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
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-daily-2.jpg");
    background-size: 450px;
  }

  .menu{
    background-color: #73aec4;
    opacity: 70%;
    display:flex;
    justify-content:center;
  }

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

  .content{
    margin-left: 20px;
    margin-right: 20px;
    margin-top: 10px;
  }

  .timeline-pic{
    width: auto;
    height: 200px;
  }

  .el-footer {
    background-color: #73aec4;
    color: #f9f177;
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
