<template>
  <div class="wrapper">
    <div class="wrapper_content">
      <div class="tab_title">
        <ul>
          <li @click="tab=0" :class="{tab_active:tab==0}">
            tab1
          </li>
          <li @click="tab=1" :class="{tab_active:tab==1}">
            tab2
          </li>
          <li @click="tab=2" :class="{tab_active:tab==2}">
            tab3
          </li>
          <li @click="tab=3" :class="{tab_active:tab==3}">
            tab4
          </li>
          <li @click="tab=4" :class="{tab_active:tab==4}">
            tab5
          </li>
          <li @click="tab=5" :class="{tab_active:tab==5}">
            tab6
          </li>
        </ul>
      </div>
      <div class="content">
        <div class="tab_content" v-if="tab==0">
          内容一
        </div>
        <div class="tab_content" v-else-if="tab==1">
          内容二
        </div>
        <div class="tab_content" v-else-if="tab==2">
          内容三
        </div>
        <div class="tab_content" v-else-if="tab==3">
          内容四
        </div>
        <div class="tab_content" v-else-if="tab==4">
          内容五
        </div>
        <div class="tab_content" v-else-if="tab==5">
          内容六
        </div>
      </div>
    </div>
  </div>
</template>
<script>
  export default {
    data() {
      return {
        tab:0 //默认选中第一个tab
      };
    }
  };
</script>
<style scoped>
  .wrapper {
    width: 100%;
    height: 600px;
    background-color: white;
    background-position: center;
    display: flex;
    justify-content: center;
  }
  .wrapper_content{
    width: 1236px;
    height: 100%;
    display: flex;
    justify-content: flex-start;
  }
  .tab_title{
    width: 261px;
    height: 100%;
    background-color: sandybrown;
  }
  .tab_title>ul{
    margin: 0;
    padding: 0;
    list-style: none;
    width: 100%;
    height: 542px;
    margin-top: 28px;
    display: flex;
    flex-direction: column;
  }
  .tab_title>ul>li{
    flex-grow: 1;
    width: 100%;
    text-align: center;
    height: 80px;
    line-height: 80px;
    display: flex;
    border: 1px solid #ccc;
    justify-content: center;
  }
  .tab_title>ul>li:hover{
    cursor: pointer;
  }
  .tab_title .tab_active{
    cursor: pointer;
    background: linear-gradient(to right top, #00a0ff, #0b62ff);
    color: white;
    border: 0;
  }
  .content{
    width: 976px;
    height: 100%;
    border: 1px solid darkcyan;
  }
  .tab_content{
    width: 100%;
    height: 100%;
  }

</style>
