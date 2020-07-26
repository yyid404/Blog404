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
        <div class="map">
          <div id="worldMap" style="height:300px;width:100%;" ref="myEchart"></div>
        </div>
      </div>
      <el-divider class="line"></el-divider>
      <div class="content">
        <el-row :gutter="20">
<!--人文类-->
          <el-col :span="8">
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Teuchtler%20Schallplattenhandlung%20u.%20Antiquariat-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Teuchtler%20Schallplattenhandlung%20u.%20Antiquariat-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Teuchtler%20Schallplattenhandlung%20u.%20Antiquariat-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Teuchtler%20Schallplattenhandlung%20u.%20Antiquariat-4.jpg">
              <p class="destination-name">陶希特唱片行</p>
              <p class="destination-englishname">Teuchtler Schallplattenhandlung u. Antiquariat</p>
              <p class="destination-description">Come Here, 和我一起赴九年之约</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Chungking%20Mansions-1.jpg">
              <p class="destination-name">重庆大厦</p>
              <p class="destination-englishname">Chungking Mansions</p>
              <p class="destination-description">我开始怀疑，在这个世界上，还有什么东西是不会过期的？
              </p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Hollywood%20Murals-You%20Are%20the%20Star-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Hollywood%20Murals-You%20Are%20the%20Star-2.jpg">
              <p class="destination-name">"You Are The Star"街头壁画</p>
              <p class="destination-englishname">Hollywood Murals-You Are the Star</p>
              <p class="destination-description">Are you shinning just for me?</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Ao%20Shima-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Ao%20Shima-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Ao%20Shima-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Ao%20Shima-4.jpg">
              <p class="destination-name">猫岛</p>
              <p class="destination-englishname">Ao Shima</p>
              <p class="destination-description">万物有灵，来聚众吸猫</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Kitamura%20Camera-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Kitamura%20Camera-2.jpg">
              <p class="destination-name">Kitamura Camera</p>
              <p class="destination-englishname">Kitamura Camera</p>
              <p class="destination-description">120 Film Start</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Map%20Camera-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Map%20Camera-2.jpg">
              <p class="destination-name">Map Camera中古相机行</p>
              <p class="destination-englishname">Map Camera</p>
              <p class="destination-description">莱卡墙-九亿摄影人的梦</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-The%20Lighthouse%20Cafe-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-The%20Lighthouse%20Cafe-2.jpg">
              <p class="destination-name">灯塔咖啡馆</p>
              <p class="destination-englishname">The Lighthouse Cafe</p>
              <p class="destination-description">How are you gonna be a revolutionary if you're such a traditionalist?</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Shanghai%20Film%20Museum-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Shanghai%20Film%20Museum-2.jpg">
              <p class="destination-name">上海电影博物馆</p>
              <p class="destination-englishname">Shanghai Film Museum</p>
              <p class="destination-description">杀墨镜，抢菲林</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-The%20Vienna%20Prater-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-The%20Vienna%20Prater-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-The%20Vienna%20Prater-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-The%20Vienna%20Prater-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-The%20Vienna%20Prater-5.jpg">
              <p class="destination-name">普拉特游乐场</p>
              <p class="destination-englishname">The Vienna Prater</p>
              <p class="destination-description">Are you trying to say you want to kiss me?</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-La%20Foire%20du%20Trône-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-La%20Foire%20du%20Trône-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-La%20Foire%20du%20Trône-3.jpg">
              <p class="destination-name">王座游乐场</p>
              <p class="destination-englishname">La Foire du Trône</p>
              <p class="destination-description">来鬼屋见一见心动的你</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-au%20clown%20de%20la%20république-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-au%20clown%20de%20la%20république-2.jpg">
              <p class="destination-name">小丑共和国</p>
              <p class="destination-englishname">au clown de la république</p>
              <p class="destination-description">眼罩，线索</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Griffith%20Park%20Cathy's%20Corner-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Griffith%20Park%20Cathy's%20Corner-2.jpg">
              <p class="destination-name">格里菲斯公园</p>
              <p class="destination-englishname">Griffith Park Cathy's Corner</p>
              <p class="destination-description">City Of Stars</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Christmas%20Post-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Christmas%20Post-2.jpg">
              <p class="destination-name">最北邮局</p>
              <p class="destination-englishname">Christmas Post</p>
              <p class="destination-description">从中国最北方给你寄一封信</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Shakespeare%20and%20Company-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Shakespeare%20and%20Company-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Shakespeare%20and%20Company-3.jpg">
              <p class="destination-name">莎士比亚书店</p>
              <p class="destination-englishname">Shakespeare and Company</p>
              <p class="destination-description">久别重逢</p>
            </div>
          </el-col>
<!--建筑类-->
          <el-col :span="8">
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Larong%20Wuming's%20Buddhist%20College-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Larong%20Wuming's%20Buddhist%20College-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Larong%20Wuming's%20Buddhist%20College-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Larong%20Wuming's%20Buddhist%20College-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Larong%20Wuming's%20Buddhist%20College-5.jpg">
              <p class="destination-name">喇荣五明佛学院</p>
              <p class="destination-englishname">Larong Wuming's Buddhist College</p>
              <p class="destination-description">绛红色 藏式平房 喇嘛和觉姆</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Salvation%20Mountain-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Salvation%20Mountain-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Salvation%20Mountain-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Salvation%20Mountain-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Salvation%20Mountain-5.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Salvation%20Mountain-6.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Salvation%20Mountain-7.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Salvation%20Mountain-8.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Salvation%20Mountain-9.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Salvation%20Mountain-10.jpg">
              <p class="destination-name">救赎山</p>
              <p class="destination-englishname">Salvation Mountain</p>
              <p class="destination-description">God is Love</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Machu%20Picchu-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Machu%20Picchu-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Machu%20Picchu-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Machu%20Picchu-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Machu%20Picchu-5.jpg">
              <p class="destination-name">马丘比丘</p>
              <p class="destination-englishname">Machu Picchu</p>
              <p class="destination-description">世界新七大奇迹，草泥马天堂</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Vrah%20Vishnulok-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Vrah%20Vishnulok-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Vrah%20Vishnulok-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Vrah%20Vishnulok-4.jpg">
              <p class="destination-name">吴哥窟</p>
              <p class="destination-englishname">Vrah Vishnulok</p>
              <p class="destination-description">如果我有多一张船票，你会不会跟我一起走？</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Sertar%20Sky%20Burial%20Platform-1.jpeg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Sertar%20Sky%20Burial%20Platform-2.jpeg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Sertar%20Sky%20Burial%20Platform-3.jpeg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Sertar%20Sky%20Burial%20Platform-4.jpeg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Sertar%20Sky%20Burial%20Platform-5.jpeg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Sertar%20Sky%20Burial%20Platform-6.jpeg">
              <p class="destination-name">色达天葬台</p>
              <p class="destination-englishname">Sertar Sky Burial Platform</p>
              <p class="destination-description">天葬台的重点不是天葬，而是下面的往生池。当尸体经过那里，喇嘛诵经，灵魂便已离去，剩下的不过是一具肉体而已。</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Sapporo-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Sapporo-2.jpg">
              <p class="destination-name">札幌</p>
              <p class="destination-englishname">Sapporo</p>
              <p class="destination-description">下雪天一起去北海道扫街吗</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Funemizaka-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Funemizaka-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Funemizaka-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Funemizaka-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Funemizaka-5.jpg">
              <p class="destination-name">船见坂</p>
              <p class="destination-englishname">Funemizaka</p>
              <p class="destination-description">你是千堆雪，我是邮差，怕日出一到彼此瓦解。</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Antwerp%20Central%20Station-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Antwerp%20Central%20Station-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Antwerp%20Central%20Station-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Antwerp%20Central%20Station-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Antwerp%20Central%20Station-5.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Antwerp%20Central%20Station-6.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Antwerp%20Central%20Station-7.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Antwerp%20Central%20Station-8.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Antwerp%20Central%20Station-9.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Antwerp%20Central%20Station-10.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Antwerp%20Central%20Station-11.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Antwerp%20Central%20Station-12.jpg">
              <p class="destination-name">安特卫普中央火车站</p>
              <p class="destination-englishname">Antwerp Central Station</p>
              <p class="destination-description">欧洲最美火车站</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Chefchaouene-1.jpg">
              <p class="destination-name">舍夫沙万老城</p>
              <p class="destination-englishname">Chefchaouene</p>
              <p class="destination-description">深蓝，湖蓝，钴蓝，浅蓝，你喜欢的蓝色我都有。</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Colosseo-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Colosseo-2.jpg">
              <p class="destination-name">古罗马斗兽场</p>
              <p class="destination-englishname">Colosseo</p>
              <p class="destination-description">古罗马文明的象征</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-The%20Spanish%20Steps-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-The%20Spanish%20Steps-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-The%20Spanish%20Steps-3.jpg">
              <p class="destination-name">西班牙台阶</p>
              <p class="destination-englishname">The Spanish Steps</p>
              <p class="destination-description">真巧，吃雪糕吗？</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Teatro%20di%20Marcello-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Teatro%20di%20Marcello-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Teatro%20di%20Marcello-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Teatro%20di%20Marcello-4.jpg">
              <p class="destination-name">马切罗剧场</p>
              <p class="destination-englishname">Teatro di Marcello</p>
              <p class="destination-description">骑着Vespa逛Rome</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Duomo%20di%20Siracusa-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Duomo%20di%20Siracusa-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Duomo%20di%20Siracusa-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Duomo%20di%20Siracusa-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Duomo%20di%20Siracusa-5.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Duomo%20di%20Siracusa-6.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Duomo%20di%20Siracusa-7.jpg">
              <p class="destination-name">锡拉库萨大教堂</p>
              <p class="destination-englishname">Duomo di Siracusa</p>
              <p class="destination-description">如果不去西西里，就像没有到过意大利。</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-The%20Dazu%20Rock%20Carvings-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-The%20Dazu%20Rock%20Carvings-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-The%20Dazu%20Rock%20Carvings-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-The%20Dazu%20Rock%20Carvings-4.jpg">
              <p class="destination-name">大足石刻</p>
              <p class="destination-englishname">The Dazu Rock Carvings</p>
              <p class="destination-description">人类石窟艺术史上最后的丰碑</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-La%20Bocca%20della%20Verità-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-La%20Bocca%20della%20Verità-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-La%20Bocca%20della%20Verità-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-La%20Bocca%20della%20Verità-4.jpg">
              <p class="destination-name">真理之口</p>
              <p class="destination-englishname">La Bocca della Verità</p>
              <p class="destination-description">从中世纪开始，人们相信如果有人撒谎，一旦他的手伸进口中，就会被咬住。</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Palazzo%20Colonna-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Palazzo%20Colonna-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Palazzo%20Colonna-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Palazzo%20Colonna-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Palazzo%20Colonna-5.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Palazzo%20Colonna-6.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Palazzo%20Colonna-7.jpg">
              <p class="destination-name">科隆纳宫</p>
              <p class="destination-englishname">Palazzo Colonna</p>
              <p class="destination-description">Rome, by all means，Rome. I will cherish my visit here in memory，as long as I live!</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Fontana%20di%20Trevi-1.jpg">
              <p class="destination-name">特雷维喷泉</p>
              <p class="destination-englishname">Fontana di Trevi</p>
              <p class="destination-description">传说背朝喷泉，右手持硬币通过心脏所处一侧的左肩向后抛出，投一枚到池中许愿可以再次回到罗马，重复同样动作投两枚许愿将有艳遇，投三枚则爱情梦想成真。</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Albertina%20Museum-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Albertina%20Museum-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Albertina%20Museum-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Albertina%20Museum-4.jpg">
              <p class="destination-name">阿尔贝蒂娜博物馆</p>
              <p class="destination-englishname">Albertina Museum</p>
              <p class="destination-description">就像我在你梦里，你在我梦里。天亮了，新一天的开始意味着就此别过。</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-St.%20Mary's%20on%20the%20Bank%20(Maria%20Am%20Gestade)-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-St.%20Mary's%20on%20the%20Bank%20(Maria%20Am%20Gestade)-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-St.%20Mary's%20on%20the%20Bank%20(Maria%20Am%20Gestade)-3.jpg">
              <p class="destination-name">河畔玛丽亚教堂</p>
              <p class="destination-englishname">St. Mary's on the Bank (Maria Am Gestade)</p>
              <p class="destination-description">“尽管我一向反对宗教，我却情不自禁地感受到人们带着迷失或者痛苦、罪过，来这里寻找答案，这真让我着迷。一个地方竟然承载着，一代又一代人的痛苦与快乐。”</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-thousand%20miao%20villages%20xijiang-1.jpg">
              <p class="destination-name">西江千户苗寨</p>
              <p class="destination-englishname">thousand miao villages xijiang</p>
              <p class="destination-description">世界最大的苗族聚居村寨</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Salinas%20de%20Maras-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Salinas%20de%20Maras-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Salinas%20de%20Maras-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Salinas%20de%20Maras-4.jpg">
              <p class="destination-name">萨利纳斯·马拉斯盐田</p>
              <p class="destination-englishname">Salinas de Maras</p>
              <p class="destination-description">来自印加的太阳</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Yuanyang%20Hani%20Terrace-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Yuanyang%20Hani%20Terrace-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Yuanyang%20Hani%20Terrace-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Yuanyang%20Hani%20Terrace-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Yuanyang%20Hani%20Terrace-5.jpg">
              <p class="destination-name">哈尼梯田</p>
              <p class="destination-englishname">Yuanyang Hani Terrace</p>
              <p class="destination-description">中国最美山岭雕刻</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-The%20Western%20Wall-1.jpg">
              <p class="destination-name">哭墙</p>
              <p class="destination-englishname">The Western Wall</p>
              <p class="destination-description">根据犹太传统，在西墙下许下的心愿会直达天庭。</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Friedhof%20der%20Namenlosen-1.png">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Friedhof%20der%20Namenlosen-2.png">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Friedhof%20der%20Namenlosen-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Friedhof%20der%20Namenlosen-4.jpg">
              <p class="destination-name">无名公墓</p>
              <p class="destination-englishname">Friedhof der Namenlosen</p>
              <p class="destination-description">每年奥地利的11月1日纪念亡灵的节日，一些来自阿尔伯恩（Albern）地区的渔民通过建造用鲜花装饰的木筏并为多瑙河的受害者留下纪念性的铭文来保持古老的传统。我一直喜欢一个说法，就是他们都是在这个世上走失的人。</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Rongbuk%20Monastery-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Rongbuk%20Monastery-2.jpg">
              <p class="destination-name">绒布寺</p>
              <p class="destination-englishname">Rongbuk Monastery</p>
              <p class="destination-description">珠峰北麓 绒布冰川末端</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Site%20of%20the%20Guge%20Kingdom-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Site%20of%20the%20Guge%20Kingdom-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Site%20of%20the%20Guge%20Kingdom-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Site%20of%20the%20Guge%20Kingdom-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Site%20of%20the%20Guge%20Kingdom-5.jpg">
              <p class="destination-name">古格王朝都城遗址</p>
              <p class="destination-englishname">Site of the Guge Kingdom</p>
              <p class="destination-description">1630年的一场战争使之灰飞烟灭，销声匿迹。</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Hong%20Kong-Zhuhai-Macao%20Bridge-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Hong%20Kong-Zhuhai-Macao%20Bridge-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Hong%20Kong-Zhuhai-Macao%20Bridge-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Hong%20Kong-Zhuhai-Macao%20Bridge-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Hong%20Kong-Zhuhai-Macao%20Bridge-5.jpg">
              <p class="destination-name">港珠澳大桥</p>
              <p class="destination-englishname">Hong Kong-Zhuhai-Macao Bridge</p>
              <p class="destination-description">世界上最长跨海大桥</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Chain%20Bridge-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Chain%20Bridge-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Chain%20Bridge-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Chain%20Bridge-4.jpg">
              <p class="destination-name">塞切尼链桥</p>
              <p class="destination-englishname">Chain Bridge</p>
              <p class="destination-description">布达佩斯没有饭店</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Golden%20Gate%20Bridge-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Golden%20Gate%20Bridge-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Golden%20Gate%20Bridge-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Golden%20Gate%20Bridge-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Golden%20Gate%20Bridge-5.jpg">
              <p class="destination-name">金门大桥</p>
              <p class="destination-englishname">Golden Gate Bridge</p>
              <p class="destination-description">跨越旧金山湾和金门海峡</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Brooklyn%20Bridge-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Brooklyn%20Bridge-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Brooklyn%20Bridge-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Brooklyn%20Bridge-4.jpg">
              <p class="destination-name">布鲁克林大桥</p>
              <p class="destination-englishname">Brooklyn Bridge</p>
              <p class="destination-description">连接着纽约的布鲁克林区和曼哈顿岛</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Colorado%20St%20Bridge-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Colorado%20St%20Bridge-2.jpg">
              <p class="destination-name">科罗拉多街大桥</p>
              <p class="destination-englishname">Colorado St Bridge</p>
              <p class="destination-description">A Glance</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Gare%20du%20Nord-1.jpg">
              <p class="destination-name">巴黎北站</p>
              <p class="destination-englishname">Gare du Nord</p>
              <p class="destination-description">世界第二十四繁忙的铁路车站</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Grand%20Central%20Terminal-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Grand%20Central%20Terminal-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Grand%20Central%20Terminal-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Grand%20Central%20Terminal-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Grand%20Central%20Terminal-5.jpg">
              <p class="destination-name">纽约中央车站</p>
              <p class="destination-englishname">Grand Central Terminal</p>
              <p class="destination-description">Gossip Here, 故事从这里开始。</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-SunsetBoulevard-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-SunsetBoulevard-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-SunsetBoulevard-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-SunsetBoulevard-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-SunsetBoulevard-5.jpg">
              <p class="destination-name">日落大道</p>
              <p class="destination-englishname">SunsetBoulevard</p>
              <p class="destination-description">从洛杉矶市中心延伸到太平洋海岸公路</p>
            </div>
          </el-col>
<!--自然风光地质类-->
          <el-col :span="8">
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Zhangye%20Danxia%20National%20Geological%20Park-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Zhangye%20Danxia%20National%20Geological%20Park-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Zhangye%20Danxia%20National%20Geological%20Park-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Zhangye%20Danxia%20National%20Geological%20Park-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Zhangye%20Danxia%20National%20Geological%20Park-5.jpg">
              <p class="destination-name">张掖丹霞国家地质公园</p>
              <p class="destination-englishname">Zhangye Danxia National Geological Park</p>
              <p class="destination-description">砾石 砂岩 泥岩</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Antelope%20Canyon-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Antelope%20Canyon-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Antelope%20Canyon-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Antelope%20Canyon-4.jpg">
              <p class="destination-name">羚羊峡谷</p>
              <p class="destination-englishname">Antelope Canyon</p>
              <p class="destination-description">大自然的雕刻，印第安人保护区。</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Zanda%20Zong%20Clay%20Forest-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Zanda%20Zong%20Clay%20Forest-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Zanda%20Zong%20Clay%20Forest-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Zanda%20Zong%20Clay%20Forest-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Zanda%20Zong%20Clay%20Forest-5.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Zanda%20Zong%20Clay%20Forest-6.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Zanda%20Zong%20Clay%20Forest-7.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Zanda%20Zong%20Clay%20Forest-8.jpg">
              <p class="destination-name">札达土林国家地质公园</p>
              <p class="destination-englishname">Zanda Zong Clay Forest</p>
              <p class="destination-description">天工万象，无可尽数。</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Yadan%20National%20Geological%20Park-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Yadan%20National%20Geological%20Park-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Yadan%20National%20Geological%20Park-3.jpg">
              <p class="destination-name">海西雅丹魔鬼城</p>
              <p class="destination-englishname">Yadan National Geological Park</p>
              <p class="destination-description">历经千年的风沙雕塑出类似八仙过海的沙堆</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Caka%20Salt%20Lake-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Caka%20Salt%20Lake-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Caka%20Salt%20Lake-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Caka%20Salt%20Lake-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Caka%20Salt%20Lake-5.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Caka%20Salt%20Lake-6.jpg">
              <p class="destination-name">茶卡盐湖</p>
              <p class="destination-englishname">Caka Salt Lake</p>
              <p class="destination-description">天空之镜</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Dongchuan%20Red%20Land-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Dongchuan%20Red%20Land-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Dongchuan%20Red%20Land-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Dongchuan%20Red%20Land-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Dongchuan%20Red%20Land-5.jpg">
              <p class="destination-name">东川红土地</p>
              <p class="destination-englishname">Dongchuan Red Land</p>
              <p class="destination-description">苍穹下的人间彩虹</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-White%20Birch%20Forest-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-White%20Birch%20Forest-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-White%20Birch%20Forest-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-White%20Birch%20Forest-4.jpg">
              <p class="destination-name">白桦林</p>
              <p class="destination-englishname">White Birch Forest</p>
              <p class="destination-description">如剑戟直向北国长天</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Arxan%20National%20Forest%20Park-1.jpeg">
              <p class="destination-name">阿尔山国家森林公园</p>
              <p class="destination-englishname">Arxan National Forest Park</p>
              <p class="destination-description">第四纪火山喷发遗迹，看毁灭与重生。</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Sahara%20Desert-1.jpg">
              <p class="destination-name">撒哈拉沙漠</p>
              <p class="destination-englishname">Sahara Desert</p>
              <p class="destination-description">听Born Free，读三毛。</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Lugu%20Lake-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Lugu%20Lake-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Lugu%20Lake-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Lugu%20Lake-4.jpg">
              <p class="destination-name">泸沽湖</p>
              <p class="destination-englishname">Lugu Lake</p>
              <p class="destination-description">来赏水性杨花</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Lake%20Manasarovar-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Lake%20Manasarovar-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Lake%20Manasarovar-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Lake%20Manasarovar-4.jpg">
              <p class="destination-name">玛旁雍措</p>
              <p class="destination-englishname">Lake Manasarovar</p>
              <p class="destination-description">永恒不败的碧玉湖</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Jiuzhaigou%20Valley%20Scenic%20and%20Historic%20Interest%20Area-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Jiuzhaigou%20Valley%20Scenic%20and%20Historic%20Interest%20Area-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Jiuzhaigou%20Valley%20Scenic%20and%20Historic%20Interest%20Area-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Jiuzhaigou%20Valley%20Scenic%20and%20Historic%20Interest%20Area-4.jpg">
              <p class="destination-name">九寨沟</p>
              <p class="destination-englishname">Jiuzhaigou Valley Scenic and Historic Interest Area</p>
              <p class="destination-description">九寨知秋</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Duku%20Highway-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Duku%20Highway-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Duku%20Highway-3.jpg">
              <p class="destination-name">独库公路</p>
              <p class="destination-englishname">Duku Highway</p>
              <p class="destination-description">纵贯天山脊梁的景观大道</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-United%20States%20Highway%20101-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-United%20States%20Highway%20101-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-United%20States%20Highway%20101-3.jpg">
              <p class="destination-name">101公路</p>
              <p class="destination-englishname">United States Highway 101</p>
              <p class="destination-description">A Rush</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Hermosa%20Pier-1.jpg">
              <p class="destination-name">赫莫萨海滩</p>
              <p class="destination-englishname">Hermosa Pier</p>
              <p class="destination-description">La La Land</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Cliffs%20of%20Moher-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Cliffs%20of%20Moher-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Cliffs%20of%20Moher-3.jpg">
              <p class="destination-name">莫赫悬崖</p>
              <p class="destination-englishname">Cliffs of Moher</p>
              <p class="destination-description">在爱尔兰流传着一个浪漫的传统，在闰年的2月29日，女孩可以向自己心爱的男孩求婚，并且会得到幸福。</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Hailuogou-1.jpg">
              <p class="destination-name">海螺沟冰川森林公园</p>
              <p class="destination-englishname">Hailuogou</p>
              <p class="destination-description">红石滩</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Lang%20Mountain-1.jpg">
              <p class="destination-name">崀山</p>
              <p class="destination-englishname">Lang Mountain</p>
              <p class="destination-description">半生长誉丹霞美，方识崀山比丹霞，胜地有缘何恨晚，并赞南北双奇花。</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-La%20Seine-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-La%20Seine-2.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-La%20Seine-3.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-La%20Seine-4.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-La%20Seine-5.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-La%20Seine-6.jpg">
              <p class="destination-name">塞纳河</p>
              <p class="destination-englishname">La Seine</p>
              <p class="destination-description">听你讲故事和传说</p>
            </div>
            <div class="destination">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Kuche%20Grand%20Canyon-1.jpg">
              <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/travel/travel-Kuche%20Grand%20Canyon-2.jpg">
              <p class="destination-name">库车大峡谷</p>
              <p class="destination-englishname">Kuche Grand Canyon</p>
              <p class="destination-description">一座嶙峋突兀的红色世界</p>
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
    name: 'Travel',
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
        axios.get('/static/world-travel.json').then(function (res) {
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
              return
            }
          },
          //左侧小导航图标，根据data中的value显示颜色
          visualMap: {
            show : false,
            x: 'left',
            y: 'bottom',
            splitList: [
              {start: 1, end: 1},
              {start: 0, end: 0},
            ],
            color: ['red', 'yellow']
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
              areaColor: '#a1b4c6', // 地图区域的颜色 如果设置了visualMap，areaColor属性将不起作用
              borderWidth: 1, // 描边线宽 为 0 时无描边
              borderColor: '#ecf0f3', // 图形的描边颜色 支持的颜色格式同 color，不支持回调函数
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
            countryName.name=="江苏" ||
            countryName.name=="浙江" ||
            countryName.name=="湖南" ||
            countryName.name=="湖北" ||
            countryName.name=="江西" ||
            countryName.name=="Japan" ||
            countryName.name=="India" ||
            countryName.name=="Israel" ||
            countryName.name=="Turkey" ||
            countryName.name=="Sri Lanka" ||
            countryName.name=="Cambodia" ||
            countryName.name=="Italy" ||
            countryName.name=="Austria" ||
            countryName.name=="Hungary" ||
            countryName.name=="France" ||
            countryName.name=="United Kingdom" ||
            countryName.name=="Greece" ||
            countryName.name=="Russia" ||
            countryName.name=="Ireland" ||
            countryName.name=="Czech" ||
            countryName.name=="Denmark" ||
            countryName.name=="Iceland" ||
            countryName.name=="Norway" ||
            countryName.name=="Germany" ||
            countryName.name=="Morocco" ||
            countryName.name=="Egypt" ||
            countryName.name=="United States of America" ||
            countryName.name=="Peru" ||
            countryName.name=="New Zealand"
          ){
            var option = myChart.getOption();
            option.series[0].map = countryName.name.toLowerCase();
            option.series[0].mapType  = countryName.name;
            myChart.clear();
            console.log(countryName.name);
            myChart.setOption(option,true);
          }else if(countryName.name=="珠海市" ||
            countryName.name=="广州市" ||
            countryName.name=="深圳市" ||
            countryName.name=="香港" ||
            countryName.name=="澳门" ||
            countryName.name=="上海" ||
            countryName.name=="南京市" ||
            countryName.name=="苏州市" ||
            countryName.name=="杭州市" ||
            countryName.name=="嘉兴市" ||
            countryName.name=="北京" ||
            countryName.name=="长沙市" ||
            countryName.name=="吉首市" ||
            countryName.name=="郴州市" ||
            countryName.name=="衡阳市" ||
            countryName.name=="常德市" ||
            countryName.name=="武汉市" ||
            countryName.name=="萍乡市"
          ){
            alert(countryName.name+"没有下一级了喔");
          }
          else {
            alert("暂时没有去"+countryName.name+"的想法喔");
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

  .map{

  }

  .content{
    margin-left: 20px;
    margin-right: 20px;
    margin-bottom: 50px;
  }

  img{
    width: 100%;
  }

  p{
    text-align: center;
  }

  .destination-name{
    font-size: 25px;
    color: white;
    margin-top: -65px;
    opacity: 90%;
  }

  .destination-englishname{
    font-size: 15px;
    color: white;
    margin-top: -25px;
    opacity: 90%;
  }

  .destination-description{
    font-size: 15px;
    margin-bottom: 20px;
  }

  .el-divider--horizontal{
    margin: 1px 0;
    background: 0 0;
    border-top: 2px solid white;
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
