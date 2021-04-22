import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import iView from 'iview'
import 'iview/dist/styles/iview.css' // 使用 CSS
// iview覆盖样式
import './assets/css/reset.css'
import globalLoading from '@/components/globalLoading'

import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';

Vue.use(iView)
Vue.use(ElementUI);
Vue.component('globalLoading', globalLoading)
// echarts
import echarts from 'echarts'
Vue.prototype.$echarts = echarts

Vue.config.productionTip = false

new Vue({
    router,
    store,
    render: h => h(App)
}).$mount('#app')
