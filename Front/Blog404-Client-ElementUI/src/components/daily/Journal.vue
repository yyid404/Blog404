<template>
  <div class="container">
      <div class="journals">
        <el-timeline>
          <el-timeline-item timestamp="2020-08-04" placement="top" color="#83A0B9">
            <el-card>
              <img class="content-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/photograph/photograph-Lemon-1.jpg">
              <p class="content-desc">和平饭店</p>
              <el-divider></el-divider>
              <p class="content-tag">Commit by Lemon 2020-08-04 20:46</p>
            </el-card>
            <el-card>
              <h3>服装是流动的建筑</h3>
              <p class="content-desc">一切具有创造性的人类活动最终目的形式便是建筑。所有实体艺术要彰显品格都往建筑上靠，所有非实体艺术则往诗歌和神话上靠。因为认识创造形式，而时间造就认识。越古早的，越可能是包容的、高蹈的。</p>
              <el-divider></el-divider>
              <p class="content-tag">Commit by Lemon 2020-08-04 12:06</p>
            </el-card>
          </el-timeline-item>
          <el-timeline-item timestamp="2020-06-16" placement="top">
            <el-card>
              <img class="content-pic" src="https://myblog-pics.oss-cn-shenzhen.aliyuncs.com/journal/journal-Lemon-1.jpg">
              <p class="content-desc">少贴标签，世界还由不得你定义。</p>
              <el-divider></el-divider>
              <p class="content-tag">Commit by Lemon 2020-06-16 3:42</p>
            </el-card>
          </el-timeline-item>
        </el-timeline>
      </div>
  </div>
</template>

<script>
  import { getJournalListByAdminId } from '@/api/daily'

  export default {
    name: 'Journal'
  }
</script>

<style scoped>
  .journals{
    padding-top: 10px;
    padding-bottom: 15px;
  }

  .el-timeline-item{
    margin-left: 16%;
  }

  .el-card{
    width: 747px;
    padding-left: 30px;
    padding-top: 10px;
    margin-bottom: 10px;
  }

  h3{
    margin-top: 0px;
  }

  .content-pic{
    width: 677px;
  }

  .content-tag{
    font-size: 10px;
    color: darkgray;
  }
</style>
