<template>
  <div class="container">
    <div class="avatar">
      <img src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/user/user-avatar-Lemon.jpg" >
    </div>
    <div class="nickname">
      {{admin.nickname}}
    </div>
    <div class="introduce">
      {{admin.introduce}}
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Avatar',
    data () {
    return {
      squareUrl: JSON.parse(localStorage.getItem("admin")).avatar,
      admin:JSON.parse(localStorage.getItem("admin"))
    }
  }
}
</script>

<style scoped>
  .container{
    height: 191px;
    width: 7%;
    top: 0px;
    margin-top: 20px;
    margin-left: 46.5%;
    position: fixed;
    z-index: 13;
  }

  .avatar{
    margin-bottom: 10px;
  }

  img{
    width: 100%;
    height: auto;
    border-radius: 10px;
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
</style>
