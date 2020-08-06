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
        <el-divider class="divider-search"></el-divider>
        <div class="search">
          <el-input placeholder="搜索关键词" v-model="input3" class="input-with-select">
            <el-select v-model="select" slot="prepend" placeholder="分类">
              <el-option label="排序" value="1"></el-option>
              <el-option label="查找" value="2"></el-option>
              <el-option label="数组" value="3"></el-option>
              <el-option label="链表" value="4"></el-option>
              <el-option label="栈/队列" value="5"></el-option>
              <el-option label="树" value="6"></el-option>
              <el-option label="递归/循环" value="7"></el-option>
              <el-option label="回溯法" value="8"></el-option>
              <el-option label="分治" value="9"></el-option>
              <el-option label="动态规划/贪心" value="10"></el-option>
              <el-option label="数学" value="11"></el-option>
              <el-option label="位运算" value="12"></el-option>
              <el-option label="字符串" value="13"></el-option>
            </el-select>
            <el-button slot="append" icon="el-icon-search"></el-button>
          </el-input>
        </div>
        <el-divider class="divider-search"></el-divider>
        <div class="content">
          <el-card>
            <h4 onclick="window.location.href='#/Algorithm-detail'">LeetCode-239 滑动窗口的最大值</h4>
            <el-divider class="divider-card"></el-divider>
            <p>
              <svg t="1596464355223" class="content-icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4440" width="200" height="200"><path d="M593.024 499.2c102.4-34.176 174.976-130.176 174.976-243.2C768 115.2 652.8 0 512 0S256 115.2 256 256c0 113.024 72.576 209.024 174.976 243.2-181.376 36.224-345.6 189.824-345.6 375.424 0 83.2 66.176 149.376 149.376 149.376h554.624c83.2 0 149.376-66.176 149.376-149.376-0.128-185.6-164.352-339.2-345.728-375.424z" p-id="4441"></path></svg>
              Lemon&nbsp;&nbsp;&nbsp;
              <svg t="1596464588682" class="content-icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="8701" width="200" height="200"><path d="M511.999488 103.434767c-225.650273 0-408.565233 182.91496-408.565233 408.565233s182.91496 408.565233 408.565233 408.565233 408.565233-182.91496 408.565233-408.565233S737.649761 103.434767 511.999488 103.434767zM675.540192 676.960029c-10.993378 11.126408-25.447579 16.624632-39.85573 16.624632-14.45113 0-28.857235-5.498224-39.85266-16.624632L483.139184 563.513234c-10.197246-10.196223-16.492626-24.382317-16.535605-39.986713L466.603579 296.367895c0-31.388894 25.224498-56.744375 56.346309-56.744375 31.166837 0 56.389288 25.355481 56.389288 56.744375l0 203.485461 96.202039 96.865141C697.528995 618.839307 697.528995 654.837172 675.540192 676.960029z" p-id="8702"></path></svg>
              2020/7/16&nbsp;&nbsp;&nbsp;
              <svg t="1596464650613" class="content-icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="9623" width="200" height="200"><path d="M896 1024h-64v-128h-128v-128h-128v-64h-128v-91.008A317.568 317.568 0 0 1 320 640C143.296 640 0 496.768 0 320S143.296 0 320 0s320 143.232 320 320c0 45.568-9.856 88.768-27.008 128H704v128l320 256v192h-128zM256 128c-70.656 0-128 57.344-128 128s57.344 128 128 128 128-57.344 128-128-57.344-128-128-128z" fill="" p-id="9624"></path></svg>
              动态规划 贪心&nbsp;&nbsp;&nbsp;
            </p>
          </el-card>
          <el-card>
            <h4 onclick="window.location.href='#/Algorithm-detail'">剑指Offer-13 机器人的运动范围</h4>
            <el-divider class="divider-card"></el-divider>
            <p>
              <svg t="1596464355223" class="content-icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4440" width="200" height="200"><path d="M593.024 499.2c102.4-34.176 174.976-130.176 174.976-243.2C768 115.2 652.8 0 512 0S256 115.2 256 256c0 113.024 72.576 209.024 174.976 243.2-181.376 36.224-345.6 189.824-345.6 375.424 0 83.2 66.176 149.376 149.376 149.376h554.624c83.2 0 149.376-66.176 149.376-149.376-0.128-185.6-164.352-339.2-345.728-375.424z" p-id="4441"></path></svg>
              Lemon&nbsp;&nbsp;&nbsp;
              <svg t="1596464588682" class="content-icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="8701" width="200" height="200"><path d="M511.999488 103.434767c-225.650273 0-408.565233 182.91496-408.565233 408.565233s182.91496 408.565233 408.565233 408.565233 408.565233-182.91496 408.565233-408.565233S737.649761 103.434767 511.999488 103.434767zM675.540192 676.960029c-10.993378 11.126408-25.447579 16.624632-39.85573 16.624632-14.45113 0-28.857235-5.498224-39.85266-16.624632L483.139184 563.513234c-10.197246-10.196223-16.492626-24.382317-16.535605-39.986713L466.603579 296.367895c0-31.388894 25.224498-56.744375 56.346309-56.744375 31.166837 0 56.389288 25.355481 56.389288 56.744375l0 203.485461 96.202039 96.865141C697.528995 618.839307 697.528995 654.837172 675.540192 676.960029z" p-id="8702"></path></svg>
              2020/6/20&nbsp;&nbsp;&nbsp;
              <svg t="1596464650613" class="content-icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="9623" width="200" height="200"><path d="M896 1024h-64v-128h-128v-128h-128v-64h-128v-91.008A317.568 317.568 0 0 1 320 640C143.296 640 0 496.768 0 320S143.296 0 320 0s320 143.232 320 320c0 45.568-9.856 88.768-27.008 128H704v128l320 256v192h-128zM256 128c-70.656 0-128 57.344-128 128s57.344 128 128 128 128-57.344 128-128-57.344-128-128-128z" fill="" p-id="9624"></path></svg>
              回溯法 DFS BFS&nbsp;&nbsp;&nbsp;
            </p>
          </el-card>
        </div>
      </div>
      <el-footer height="30px">分页</el-footer>
    </el-container>
  </div>
</template>

<script>
  export default {
    name: 'Algorithm',
    data () {
      return {
        circleUrl: "https://cube.elemecdn.com/3/7c/3ea6beec64369c2642b92c6726f1epng.png",
        squareUrl: "https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/user/user-avatar-Lemon.jpg",
        activeIndex2: '1'
      }
    },
    methods: {
      handleSelect(key, keyPath) {
        console.log(key, keyPath);
      }
    }
  }
</script>

<style scoped>
  .container{
    background-color: black;
  }

  .el-header {
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-banner-code-1.jpg");
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
    background-image: url("https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/background/theme-background-code-1.jpg");
    background-size: 450px;
  }

  .menu{
    background-color: black;
    opacity: 70%;
    display:flex;
    justify-content:center;
  }

  .el-divider{
    background-color: #4e4d4d;
  }

  .divider-search{
    margin-top: 0px;
  }

  .search{
    margin: -5px 17.3% 20px 17.3%;
  }

  .input-with-select{
    opacity: 80%;
  }

  .el-select{
    width: 200px;
  }

  .content{
    margin: -5px 17.3% 20px 17.3%;
  }

  .el-card{
    margin-bottom: 20px;
    background-color: black;
    border-radius: 0.3em;
    border:0 solid #dfdcdc;
    box-shadow: grey 0px 2px 5px;
  }

  .el-card:hover{
    box-shadow: grey 0px 2px 10px;
  }

  h4{
    color: white;
    font-size: 16px;
    margin-top: 5px;
    position: relative;
    float: left;
  }

  h4:after{
    content: "";
    width: 0px;
    height: 2px;
    background: #ffffff;
    position: absolute;
    top: 100%;
    left: 50%;
    right: 50%;
    transition: all 0.6s;
  }

  h4:hover:after{
    left: 0%;
    right: 0%;
    width: 100%;
  }

  .divider-card{
    margin-top: 40px;
  }

  p{
    color: lightgrey;
    font-size: 13px;
    margin-top: -10px;
    margin-bottom: 5px;
  }

  .content-icon{
    width: 13px;
    height: 13px;
    fill: lightgrey;
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
