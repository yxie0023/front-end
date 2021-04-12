// const base_url = process.env.NODE_ENV === 'production' ? '/dist' : '/'
module.exports = {
    publicPath: '/',
    lintOnSave: false,
    chainWebpack: config => {
        // 让 babel 转码一些最新的 js API
        config.entry('main').add('babel-polyfill')
    },
    // 不需要生产环境的 source map
    productionSourceMap: false,
    // 开发环境下的服务端配置
    devServer: {
        host: '0.0.0.0',
        port: '9005',
        proxy: {
            '/*': {
                //target: 'http://localhost:8880/', //本地
                target: 'http://3.134.83.160:8880/',//外网
                ws: false,
                changeOrigin: true
            }
        }
    }
}
