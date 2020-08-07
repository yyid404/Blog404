<template>
  <div class="container">
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
      <router-view></router-view>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Algorithm',
  }
</script>

<style scoped>
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
</style>
