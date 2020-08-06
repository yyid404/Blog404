<template>
  <div class="blog">
    <banner></banner>
    <avatar></avatar>
    <navigation></navigation>
  </div>
</template>

<script>
  import Banner from './home/Banner'
  import Avatar from './home/Avatar'
  import Navigation from './home/Navigation'

  export default {
    name: 'Home',
    components: {
      Banner,
      Avatar,
      Navigation
    }
  }
</script>

<style scoped>
  .blog{
    width: 100%;
    height: 100%;
    position: fixed;
  }
  .banner{
    position: absolute;
    z-index: -99;
    width: 100%;
  }
</style>
