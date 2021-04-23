<template>
    <div style="width: 100%; height: 50%">
        <h3>We provide relevant news based on the vaccines on our website, which are grouped by vaccine type so that users can easily browse the categories in need. These vaccine-related news help users keep abreast of the latest vaccine developments around the world, which helps people better understand vaccines and motivate people to get vaccinated.</h3>
        <div class="list">
            <div class="item" v-for="(item, index) in list" :key="index">
                <img :src="item.img" alt="" />
                <div style="font-size:150%">{{item.vaccineName}}</div>
                <div style="padding:0 2vw;height:18vh;font-weight:bold;font-size:150%">{{item.title}}</div>
                <el-button type="primary" style="margin-left:2vw;" @click="url(item.url)">Read Article</el-button>
            </div>
        </div>
    </div>
</template>

<script>
    export default {
        name: "page",
        data() {
            return {
                activeIndex: "6",
                list: [],
            };
        },
        mounted() {
            fetch("http://47.100.78.119:8880/news/getNews", {
                method: "GET",
            })
                .then((res) => {
                    return res.json(); //请求成功，获请求元数据
                })
                .then((result) => {
                    console.log(result);
                    result[0].img = require("@/assets/imgs/DTP.jpg");
                    result[1].img = require("@/assets/imgs/Poliomyelitis.jpg");
                    result[2].img = require("@/assets/imgs/MMR.jpg");
                    result[3].img = require("@/assets/imgs/MMR.jpg");
                    result[4].img = require("@/assets/imgs/Varicella.jpg");
                    result[5].img = require("@/assets/imgs/Pneumoccocal.jpg");
                    result[6].img = require("@/assets/imgs/Rotavirus.jpg");

                    this.list = result;
                });
        },

        methods: {
            handleSelect(key, keyPath) {
                console.log(key, keyPath);
            },
            url(e){
                window.open(e)
            }
        },
    };
</script>
<style  scoped>
    .header img {
        width: 12vw;
        height: 10vh;
    }
    .list {
        max-width: 90vw;
        padding: 20vh 5vw 0 5vw;
        display: flex;
        flex-direction: row;
        justify-content: space-between;
        flex-wrap: wrap;
        margin-bottom:20vh;
    }
    .item {
        width: 25vw;
        height: 60vh;
        margin-bottom: 5vh;
        background-color: #f2f2f2;
    }
    .item img{
        width: 25vw;
        height: 30vh;
    }
</style>