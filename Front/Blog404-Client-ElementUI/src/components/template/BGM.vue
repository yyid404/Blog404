<template>
  <div class="bgMusic">
    <!-- 音乐播放器 -->
    <div class="player">
      <audio :autoplay="true" :controls="true" :loop="true" ref="warningMusic"  preload webkit-playsinline="true"  playsinline="true"  id="audio">
        <source src="../../../static/music/1.mp3">
        您的浏览器不支持 audio 标签。
      </audio>
    </div>
  </div>
</template>
<script>
  export default {
    name: 'BGM',
    data () {
      return {
        time:"",//音乐总时长
        timeDisplay:"",//音乐实时播放时间
        timeProgress:"",//音乐时间进度
      }
    },
    methods:{
      //播放音乐
      playAudio(){
        let _this = this;
        console.log("播放音乐");
        let musicDom = document.getElementsByTagName('audio')[0];
        musicDom.load();//因为source标签不能直接更改路径，所以整个audio标签必须重新加载一次
        musicDom.oncanplay = function () {
          console.log("音乐时长",musicDom.duration);
          _this.time = musicDom.duration;
          //分钟
          let minute = _this.time / 60;
          let minutes = parseInt(minute);
          if (minutes < 10) {
            minutes = "0" + minutes;
          }
          //秒
          let second = _this.time % 60;
          let seconds = Math.round(second);
          if (seconds < 10) {
            seconds = "0" + seconds;
          }
          // console.log('处理音乐时长',minutes+"："+seconds)
          _this.$store.state.musicTime = minutes+":"+seconds;
        }
      },
      //关闭音乐播放器
      closeAudio(){
        let _this = this;
        console.log("关闭音乐播放器");
        _this.$refs.warningMusic.pause();
      },
      //监听音乐实时播放的时间
      watchMusicTime(){
        let _this = this;
        //监听播放时间
        let musicDom = _this.$refs.warningMusic;
        //使用事件监听方式捕捉事件
        musicDom.addEventListener("timeupdate",function(){
          //用秒数来显示当前播放进度
          _this.timeDisplay = Math.floor(musicDom.currentTime);

          // 进度百分比
          _this.timeProgress = Math.round((_this.timeDisplay / _this.time) * 100);
          // console.log('音乐进度百分比',_this.timeProgress);

          // console.log(timeDisplay)
          //分钟
          let minute = _this.timeDisplay / 60;
          let minutes = parseInt(minute);
          if (minutes < 10) {
            minutes = "0" + minutes;
          }
          //秒
          let second = _this.timeDisplay % 60;
          let seconds = Math.round(second);
          if (seconds < 10) {
            seconds = "0" + seconds;
          }
          _this.$store.state.realMusicTime = minutes+":"+seconds;
          _this.$store.state.timeProgress = _this.timeProgress;//音乐实时进度百分比

          // console.log(_this.$store.state.realMusicTime);
        },false);
      },
    },
    mounted(){
      let _this = this;
      _this.playAudio();//播放音乐
      _this.watchMusicTime();//监听音乐实时播放的时间

    },

  }
</script>
<style scoped>
  audio{
    width: 15rem !important;
    background-color: transparent !important;
  }
</style>
