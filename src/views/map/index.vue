<!--问题：时间参数的问题-->
<template>
    <div id="index">
        <div class="banner">
            <img :src="banner1" alt="" style="width:100%"/>
        </div>
        <!-- <div class="content">
            <div class="data">
                <p class="title">Top 1:xxx</p>
                <p class="desc">
                   yingwen
                </p>
            </div>
            <div class="data">
                <img :src="data22" alt="" />
                <p>introduce the data meaning</p>
            </div>
            <div class="data">
                <ul class="effect">
                    <li>side effect</li>
                    <li>side effect</li>
                    <li>side effect</li>
                    <li>side effect</li>
                    <li>side effect</li>
                    <li>side effect</li>
                </ul>
            </div>
        </div> -->
    </div>
</template>

<script>

import banner1 from '@/assets/imgs/banner1.jpg'
import data22 from '@/assets/imgs/data22.jpg'
export default {
    name: 'index',
    components: {},
    data() {
        return {
            banner1,
            data22,
        }
    },
    methods: {
        
    }
    
}
</script>
<style scoped lang="scss">
// #index {
//     width: 100%;
//     height: 100%;
// }
// .banner {
//     height: 180px;
//     img {
//         height: 100%;
//     }
// }
.content {
    height: calc(100% - 180px);
    min-height: 100px;
    overflow: auto;
    display: flex;
    .data {
        flex: 1;
        margin: 30px;
        margin-bottom: 0px;
        background-color: #fff;
        padding: 10px;
        img {
            width: 100%;
            max-height: 100px;
        }
        p.desc {
            font-size: 16px;
            text-align: left;
            text-indent: 2em;
        }
        .title {
            line-height: 60px;
            font-weight: bold;
            font-size: 20px;
        }
        .effect {
            text-align: left;
            padding-left: 30px;
        }
    }
}
</style>
<style lang="scss">
</style>
