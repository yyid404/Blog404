<template>
  <div class="container">
<!--    <el-button type="text" @click="centerDialogVisible = true">点击打开 Dialog</el-button>

    <el-dialog
      title="mini-menu"
      :visible.sync="centerDialogVisible"
      width="100%"
      center>
      <div style="width: 500px; height: 100px; background-color: #409EFF"></div>
    </el-dialog>-->
    <FullScreenMenu></FullScreenMenu>
  </div>
</template>

<script>
  import FullScreenMenu from "./FullScreenMenu";
  export default {
      name: "MiniMenu",
    components: {FullScreenMenu},
    data() {
      return {
        centerDialogVisible: false
      };
    }
  }
</script>

<style scoped>

</style>
