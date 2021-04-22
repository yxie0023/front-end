<template>
    <div id="app">
        <Layout>
            <Header id="header">
                <img src="./assets/imgs/logo.png" alt="" id="logo" @click="gohome" style="cursor: pointer"/>
                SuperProtector</Header
            >
            <div class="nav">
                <Menu
                    mode="horizontal"
                    :active-name="nameindex"
                    @on-select="menuChange"
                >
                    <MenuItem name="1">
                        <Icon type="ios-home" />
                        Home
                    </MenuItem>
                    <MenuItem name="2">
                        <Icon type="md-funnel" />
                        Vaccine List
                    </MenuItem>
                    <MenuItem name="3">
                        <Icon type="ios-people" />
                        Data Comparison
                    </MenuItem>
                    <MenuItem name="4">
                        <Icon type="ios-aperture" />
                        News
                    </MenuItem>
                    <MenuItem name="5">
                        <Icon type="ios-stats" />
                        About us
                    </MenuItem>
                </Menu>
            </div>
            <div class="contents">
                <router-view> </router-view>
            </div>
            <Footer id="footer">@copyright</Footer>
        </Layout>
    </div>
</template>
<script>
export default {
    name: 'app',
    data() {
        return {
            nameindex: '-1',
        }
    },
    watch: {
        '$route.path': function (newVal, oldVal) {
            switch (newVal) {
                case '/index':
                    this.nameindex = '1'
                    break
                case '/vaccinelist':
                    this.nameindex = '2'
                    break
                case '/vaccineComp':
                    this.nameindex = '3'
                    break
                case '/side':
                    this.nameindex = '4'
                    break
                case '/aboutUs':
                    this.nameindex = '5'
                    break
                default:
                    break
            }
        },
    },
    methods: {
      gohome(){
        this.$router.push({
          path: '/index',
        })
      },
        menuChange(data) {
            // console.log(data)
            switch (data) {
                case '1':
                    this.$router.push({
                        path: '/index',
                    })
                    break
                case '2':
                    this.$router.push({
                        path: '/vaccinelist',
                    })
                    break
                case '3':
                    this.$router.push({
                        path: '/vaccineComp',
                    })
                    break
                case '4':
                    this.$router.push({
                        path: '/side',
                    })
                    break
                case '5':
                    this.$router.push({
                        path: '/aboutUs',
                    })
                    break
                default:
                    break
            }
        },
    },
}
</script>
<style lang="scss">
html,
body {
    width: 100%;
    height: 100%;
}
* {
    margin: 0;
    padding: 0;
}

#app {
    font-family: Avenir, Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
  overflow: hidden;
    // height: 100%;
    // width: 100%;
    // overflow: hidden;
}
.contents {
    // height: calc(100% - 193px);
    // overflow: auto;
}
// #footer {
//     position: fixed;
//     bottom: 0;
//     width: 100%;
// }
#header {
    color: #fff;
    font-size: 35px;
    background-color: #009aff;
    position: relative;
    #logo {
        position: absolute;
        height: 64px;
        left: 10px;
    }
}
#nav {
    width: 100%;
    text-align: center;
    font-size: 20px;
}
</style>

