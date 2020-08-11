<template>
  <div class="container">
    <MiniMenu></MiniMenu>
  </div>
</template>

<script>
  import MiniMenu from "../template/MiniMenu";
  export default {
    name: 'PlayList',
    components: {MiniMenu},
  }
</script>

<style scoped>
  .container{
    height: 500px;
    width: 100%;
  }
</style>
