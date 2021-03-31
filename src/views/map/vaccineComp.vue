<template>
  <div class="Feature">
    <Tabs type="card">
      <TabPane label="List of vaccine">
        <p class="tab1">
          <Input suffix="ios-search" placeholder="Enter text" style="width: 300px" class="searchBtn"/>
          <span>Are you an adult or a child?</span>
          <span>
            <RadioGroup @on-change="radio_change">
                <Radio label="adult"></Radio>
                <Radio label="child"></Radio>
            </RadioGroup>
          </span>
        </p>
        <div class="vaccineList" v-for="(item,index) of vaccineList" :key="index">
          <div class="vaccineSon">
            <img :src="item.src" alt="">
          </div>
          <div class="vaccineSon2">
            <div class="title">
              {{item.vaccine}}
            </div>
            <div class="des">
              {{item.des}}
            </div>
          </div>
          <div class="vaccineSon">
            <Button type="primary" @click="goto_details(item)">learn more>></Button>
            <br>
            <Button type="primary" @click="effects(item)">Side effects</Button>
          </div>
        </div>
      </TabPane>
      <TabPane label="vaccine comparation">
        标签2的内容
      </TabPane>
<!--      <TabPane label="Side effects">-->
<!--       <dl>-->
<!--         <dt>-->
<!--           <img src="" alt="">-->
<!--         </dt>-->
<!--         <dd>-->
<!--           名称-->
<!--         </dd>-->
<!--       </dl>-->
<!--        <div class="effectList">-->
<!--          <div class="title"></div>-->
<!--          <div class="des"></div>-->
<!--        </div>-->
<!--      </TabPane>-->
    </Tabs>
<!--    详情弹框-->
    <Modal
        v-model="modal1"
        title="details description"
        footer-hide>
      <p>{{detail_data}}</p>
    </Modal>
    <!--    不良反映弹框-->
    <Modal
        v-model="modal2"
        title="effcet description"
        footer-hide
        >
      <div v-for="(item,index) of effectList" :key="index" class="effectList">
        <div class="title">{{item.name}}</div>
        <div class="description">{{item.description}}</div>
      </div>
    </Modal>

  </div>
</template>

<script>
import Diphtheria from '@/assets/imgs/Diphtheria.jpg'
import HepatitisB from '@/assets/imgs/HepatitisB.jpg'
import Measles from '@/assets/imgs/Measles.jpg'
import Pertussis from '@/assets/imgs/Pertussis.jpg'
import Poliomyelitis from '@/assets/imgs/Poliomyelitis.jpg'
import Varicella from '@/assets/imgs/Varicella.jpg'

export default {
  name: 'Feature',
  data(){
    return{
      modal2:false,
      effectList:[],
      modal1:false,
      detail_data:"",
      vaccineList:[
        {
          src:Diphtheria,
          vaccine:"dT *",
          des:"Yes",
          details:"It totally contains 3 doses, after the first one taken, the second one should be taken after 4 weeks, and then the last dose should be taken after 4 weeks more.",
          effects:[
            {
              name:'side-effect1',
              description:"the description of side effect one"
            },
            {
              name:'side-effect2',
              description:"the description of side effect two"
            }
          ]
        },
        {
          src:HepatitisB,
          vaccine:"sflkajlfkalmicnwdivbuiervnccuawreiu",
          clinically:"sflkajlfkalc wejivunru cvirqfnmeriv kalvj avnwqe cvwrvqejvulsflkcmicqruvnfev uqrfjewmcv rjfinmif",
          details:"sflkajlfkalvj avnwqe kalvj avnwqe cvwrvqejvulsflkcjc eqjrivn wdcwjiv",
          effects:[
            {
              name:'effect1',
              description:"the description of side effect one"
            },
            {
              name:'side-effect2',
              description:"the description of side effect two"
            }
          ]
        },
        {
          src:Measles,
          vaccine:"sflkajlfkalmicnwdivbuiervnccuawreiu",
          clinically:"sflkajlfkalc wejivunru cvirqfnmeriv kalvj avnwqe cvwrvqejvulsflkcmicqruvnfev uqrfjewmcv rjfinmif",
          details:"sflkajlfkalvj avnwqe kalvj avnwqe cvwrvqejvulsflkcjc eqjrivn wdcwjiv",
          effects:[
            {
              name:'effect1',
              description:"the description of side effect one"
            },
            {
              name:'side-effect2',
              description:"the description of side effect two"
            }
          ]
        }
        ,
        {
          src:Pertussis,
          vaccine:"sflkajlfkalmicnwdivbuiervnccuawreiu",
          clinically:"sflkajlfkalc wejivunru cvirqfnmeriv kalvj avnwqe cvwrvqejvulsflkcmicqruvnfev uqrfjewmcv rjfinmif",
          details:"sflkajlfkalvj avnwqe kalvj avnwqe cvwrvqejvulsflkcjc eqjrivn wdcwjiv",
          effects:[
            {
              name:'effect1',
              description:"the description of side effect one"
            },
            {
              name:'side-effect2',
              description:"the description of side effect two"
            }
          ]
        }
        ,
        {
          src:Poliomyelitis,
          vaccine:"sflkajlfkalmicnwdivbuiervnccuawreiu",
          clinically:"sflkajlfkalc wejivunru cvirqfnmeriv kalvj avnwqe cvwrvqejvulsflkcmicqruvnfev uqrfjewmcv rjfinmif",
          details:"sflkajlfkalvj avnwqe kalvj avnwqe cvwrvqejvulsflkcjc eqjrivn wdcwjiv",
          effects:[
            {
              name:'effect1',
              description:"the description of side effect one"
            },
            {
              name:'side-effect2',
              description:"the description of side effect two"
            }
          ]
        },
        {
          src:Varicella,
          vaccine:"sflkajlfkalmicnwdivbuiervnccuawreiu",
          clinically:"sflkajlfkalc wejivunru cvirqfnmeriv kalvj avnwqe cvwrvqejvulsflkcmicqruvnfev uqrfjewmcv rjfinmif",
          details:"sflkajlfkalvj avnwqe kalvj avnwqe cvwrvqejvulsflkcjc eqjrivn wdcwjiv",
          effects:[
            {
              name:'effect1',
              description:"the description of side effect one"
            },
            {
              name:'side-effect2',
              description:"the description of side effect two"
            }
          ]
        }
      ]
    }
  },
  methods:{
    effects(item){
      this.modal2 = true
      this.effectList = item.effects
    },
    goto_details(item){
      this.modal1 = true
      this.detail_data = item.details
    },
    cancel(){
      this.modal1 = false
    },
    ok(){
      this.modal1 = false
    },
    radio_change(data){
      // 成年人  孩子更换数据  this.vaccineList 数组数据更换
      console.log(data)
    }
  }
}
</script>

<style scoped lang="scss">
.Feature {
  padding: 10px;
  height: 100%;
  .tab1{
      text-align: left;
      position: relative;
      min-height: 60px;
      .searchBtn{
        position: absolute;
        top:3px;
        right: 10px;
      }
      span {
        float: left;
        margin-left: 20px;
        font-size: 16px;
        font-weight: bold;
      }
  }
  .vaccineList{
    display: flex;
    border-bottom:1px solid #ccc;
    margin-bottom: 10px;
    height: 200px;
    .vaccineSon{
      flex: 1;
      //text-align: left;
      img{
        width: 80%;
        max-height: 95%;
        border-radius: 20px;
      }
      button{
        margin-bottom:10px
      }
    }
    .vaccineSon2{
      flex: 3;
      text-align: left;
      padding:10px;
      .title{
        text-align: center;
        font-size: 16px;
        font-weight: bold;
      }
      .des{
        text-indent: 2em;
        line-height: 25px;
        font-size: 14px;
      }
    }
  }
}
.effectList{
  border-bottom: 1px solid #ccc;
  margin-bottom: 10px;
  .title{
    font-weight: bold;
    line-height: 30px;
    font-size: 16px;
  }
  .description{
    //text-indent: 2em;
    line-height: 25px;
  }
}

</style>
