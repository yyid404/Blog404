<template>
  <div id="app">
    <router-view/>
    <div :class="{'music':true,'dis':isDis}" >
      <!-- 使用背景音乐组件 -->
      <BGM></BGM>
    </div>
  </div>
</template>

<script>
  import BGM from "./components/template/BGM";
  export default {
    name: 'App',
    components: {BGM},
    data(){
      return{
        isDis:true,//隐藏music组件，因为是背景音乐  所以隐藏
      }
    },
    methods:{
      //处理微信浏览器音乐自动播放问题
      audioAutoPlay() {
        var audio = document.getElementById('audio');
        audio.play();
        document.addEventListener("WeixinJSBridgeReady", function () {
          audio.play();
        }, false);
      },
      //解决所有浏览器音乐自动播放的问题
      autoPlayMusic() {
        let _this = this;
        /!* 自动播放音乐效果，解决浏览器或者APP自动播放问题 *!/
        function musicInBrowserHandler() {
          _this.musicPlay(true);
          document.body.removeEventListener('touchstart', musicInBrowserHandler);
        }
        document.body.addEventListener('touchstart', musicInBrowserHandler);
        /!* 自动播放音乐效果，解决微信自动播放问题 *!/
        function musicInWeixinHandler() {
          _this.musicPlay(true);
          document.addEventListener("WeixinJSBridgeReady", function () {
            _this.musicPlay(true);
          }, false);
          document.removeEventListener('DOMContentLoaded', musicInWeixinHandler);
        }
        document.addEventListener('DOMContentLoaded', musicInWeixinHandler);
      },
      //音乐状态判断
      musicPlay(isPlay) {
        var media = document.getElementById('audio');
        if (isPlay && media.paused) {
          media.play();
        }
        if (!isPlay && !media.paused) {
          media.pause();
        }
      }
    },
    mounted(){
      let _this = this;
      _this.autoPlayMusic();//调用所有浏览器自动音乐播放的函数
      _this.audioAutoPlay();//调用微信浏览器自动音乐播放的函数
    },
  }
</script>

<style>
  #app{
    height: 100%;
    width: 100%;
    margin: 0px;
    padding: 0px;
    top: 0px;
    left: 0px;
    border: hidden;
    position: absolute;
  }
  /* 背景音乐 ：一定要加z-index ：-10000，否则点击页面时容易勿点暂停或者播放*/
  #app .music{
    position: fixed;
    top: 194px;
    right: -12rem;
    z-index: 13;
  }
  #app .dis{
    opacity: 30%;/*隐藏背景音乐控件*/
  }
</style>
