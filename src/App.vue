<template>
    <div id="app">
        <Layout>
            <div class="header">
                <Header id="header">
                    <img
                        src="./assets/imgs/logo.png"
                        alt=""
                        id="logo"
                        @click="gohome"
                        style="cursor: pointer"
                    />
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
                            <Icon type="ios-compass" />
                            Map
                        </MenuItem>
                    </Menu>
                </div>
            </div>

            <div class="contents">
                <router-view> </router-view>
            </div>
            <Footer id="footer" style="margin-top: auto; padding: 0">
                <div class="aboutUs" style="margin-top:auto">
                    <div class="summary">
                        <h1>About Us</h1>
                        <h3>
                            Each year, around 3000 people of refugee background
                            settle in Australia. It is found that people of
                            refugee background are at a risk of being
                            under-immunized. Country of origin vaccination
                            schedules are different to the Australian National
                            Immunization Program (NIP) schedule, which means the
                            chances of anyone arriving fully vaccinated is very
                            low. Moreover, they aren’t educated about what
                            vaccines are available for them here in Australia.
                            Even if they know about the vaccine, they are
                            hesitant to take the vaccine jab because they are
                            not aware of the positives of the vaccines leading
                            to vaccine hesitancy.
                            <br />
                            <br />
                            SuperProtector is a web application that will help
                            in eliminating the cause of Vaccine Hesitation in a
                            group of people, namely the refugee women and
                            children and also help in educating these people of
                            the positives and health benefits of the vaccination
                            required to be taken by them.
                        </h3>
                        <h5>Copyright ©2021 All rights reserved</h5>
                    </div>
                </div>
            </Footer>
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
        gohome() {
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
    components: {},
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
    min-height:100vh
    // height: 100%;
    // width: 100%;
    // overflow: hidden;
}
.contents {
    margin-top: 15vh;
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
.header {
    position: fixed;
    top: 0;
    width: 100vw;
    z-index: 999;
}
.nav {
    width: 100%;
    text-align: center;
    font-size: 20px;
}
.summary {
    width: 100vw;
    height: 300px;
    background-color: #03a9f4;
    color: #fff;

    h1 {
        font-size: 46px;
        line-height: 85px;
        height: 85px;
    }
    h3 {
        line-height: 25px;
        font-size: 18px;
    }
}
</style>

