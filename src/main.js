import Vue from 'vue'
import App from './App.vue'
import VueRouter from 'vue-router'
import index from './components/index.vue'
import Gdpsui from './components/Gdpsui.vue'

import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
Vue.use(VueRouter)
Vue.use(ElementUI);

const routes = [
    { path: '/', component: index, name: 'index', exact: true },
    { path: '/Gdpsui', component: Gdpsui, name: 'Gdpsui', exact: true },

]
const router = new VueRouter({
    routes
})

Vue.config.productionTip = false

new Vue({
    render: h => h(App),
    router
}).$mount('#app')