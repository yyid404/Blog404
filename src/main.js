// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import ElementUI from 'element-ui'
import 'element-ui/lib/theme-chalk/index.css'
import echarts from "echarts" //引入组件
import '../node_modules/echarts/map/js/world.js' // 引入世界地图
import '../node_modules/echarts/map/js/province/beijing.js' // 引入北京地图数据
import '../node_modules/echarts/map/js/province/fujian.js' // 引入福建地图数据
import '../node_modules/echarts/map/js/province/anhui.js' // 引入安徽地图数据
import '../node_modules/echarts/map/js/province/xinjiang.js' // 引入新疆地图数据
import '../node_modules/echarts/map/js/province/xizang.js' // 引入西藏地图数据

Vue.use(ElementUI)

// 引入公共JS
Vue.config.productionTip = false
Vue.prototype.$echarts = echarts

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  // 在Vue实例中注册router
  components: { App },
  template: '<App/>'
})
