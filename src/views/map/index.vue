<!--问题：时间参数的问题-->
<template>
  <div id="index">
    <div class="banner">
      <img :src="banner1" alt="" style="width:100%;cursor: pointer"/>
    </div>
    <Row class="block" v-for="(item,index) of blockList" :key="index">
      <Col span="12" class="col left">
          <span class="title">{{item.title}}</span>
          <p>{{item.pinner}}</p>
      </Col>
      <Col span="12" class="col right">
        <div class="box">
          <img :src="item.imgs" alt="">
          <div class="border"></div>
        </div>
      </Col>
    </Row>
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

import img1 from '@/assets/imgs/111.jpg'
import img2 from '@/assets/imgs/222.jpg'
import img3 from '@/assets/imgs/333.jpg'
import banner1 from '@/assets/imgs/banner1.jpg'
import data22 from '@/assets/imgs/data22.jpg'

export default {
  name: 'index',
  components: {},
  data() {
    return {
      banner1,
      data22,
      img1,
      blockList:[
        {
          title:"Protect the children",
          pinner:"Most epidemics can be prevented by vaccinating children effectively to produce antibodies. It has enabled a significant reduction in child mortality.",
          imgs:img1
        },
        {
          title:"Popularization of vaccines",
          pinner:"Almost all the necessary vaccines are now available in hospitals, and all you need to know is which one to get.",
          imgs:img2
        },
        {
          title:"Side effects of vaccine",
          pinner:"We cannot ignore the possible side effects of vaccines. When you know what side effects a vaccine has and how to deal with it, it will give you more confidence to get the vaccine.",
          imgs:img3
        }
      ]
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
.block:nth-child(odd){
  background-color: #fff;
  .left{
    float: right;
  }
}
.block{
  height: 550px;
  //background-color: #337ab7;
  padding:60px;
  .col:first-of-type{
    padding:50px;
    .title{
      font-size:46px;
      font-weight: bold;
    }
    p{
      font-size:24px
    }
  }
  .col{
    height: 100%;
    padding:0 20px;
    .box{
      width: 556px;
      height: 417px;
      position: relative;
      margin:0 auto
    }
    img{
      height: 100%;
      max-width: 100%;
    }
    .border{
      position: absolute;
      bottom:-20px;
      right:-20px;
      max-width: 100%;
      width: 100%;
      height: 100%;
      border:10px solid #03a9f4;
    }
  }
}
</style>
<style lang="scss">
</style>
