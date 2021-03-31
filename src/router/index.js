import Vue from 'vue'
import Router from 'vue-router'

const originalPush = Router.prototype.push
Router.prototype.push = function push(location) {
    return originalPush.call(this, location).catch(err => err)
}

Vue.use(Router)

let routes = [
    {
        path: '/',
        redirect: '/index'
    }
]

const routerContext = require.context('./', true, /index\.js$/)
routerContext.keys().forEach(route => {
    // 如果是根目录的index.js 不处理
    if (route.startsWith('./index')) {
        return
    }
    const routerModule = routerContext(route)
    /**
     * 兼容 import export 和 require module.export 两种规范
     */
    let indexModule = [...(routerModule.default || routerModule)]
    // routerIndex.children = [...routerIndex.children, ...indexModule];
    routes = [...routes, ...indexModule]
})
// 合并路由
// routes = [routerIndex,...routes];

const router = new Router({
    mode: 'hash',
    base: process.env.BASE_URL,
    routes: routes
})

/** ********************** router.beforeEach ***************************************************/
router.beforeEach((to, from, next) => {
  //to: 从哪个路由来
  //from: 去哪个路由
  //next：是一个方法，使用路由拦截，必须在后面添加next()，否则路由无法跳转
    next()
})

export default router
