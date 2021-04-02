<template>
  <div class="Feature">
    <div>
      <p class="tab1">
<!--        <Input-->
<!--            suffix="ios-search"-->
<!--            placeholder="Enter text"-->
<!--            style="width: 300px"-->
<!--            class="searchBtn"-->
<!--        />-->
        <span>Are you an adult or a child?</span>
        <span>
                    <RadioGroup @on-change="radio_change" v-model="radios">
                        <Radio label="child"></Radio>
                        <Radio label="adult"></Radio>
                        <Radio label="all"></Radio>
                    </RadioGroup>
                </span>
      </p>
      <div
          class="vaccineList"
          v-for="(item, index) of vaccineList"
          :key="index"
      >
        <div class="vaccineSon">
          <img :src="item.src" alt="" />
        </div>
        <div class="vaccineSon2">
          <div class="title">
            {{ item.vaccine }}
          </div>
          <div class="des">
            {{ item.description }}
          </div>
        </div>
        <div class="vaccineSon3">
          <Button type="primary" @click="effects(item)"
          >Side effects</Button
          >
        </div>
      </div>
    </div>
    <!--    不良反映弹框-->
    <Modal v-model="modal2" title="effcet description" footer-hide>
      <p>{{sideEffect}}</p>
    </Modal>
  </div>
</template>

<script>
import Diphtheria from '@/assets/imgs/Diphtheria.jpg'
import HepatitisB from '@/assets/imgs/HepatitisB.jpg'
import HIB from '@/assets/imgs/HIB.jpg'
import Measles from '@/assets/imgs/Measles.jpg'
import Meningococcal from '@/assets/imgs/Meningococcal.jpg'
import Mumps from '@/assets/imgs/Mumps.jpg'
import Pertussis from '@/assets/imgs/Pertussis.jpg'
import Poliomyelitis from '@/assets/imgs/Poliomyelitis.jpg'
import Rubella from '@/assets/imgs/Rubella.jpg'
import Tetanus from '@/assets/imgs/Tetanus.jpg'
import Varicella from '@/assets/imgs/Varicella.jpg'
import { getVaccineList } from '@/api/index'
export default {
  name: 'Feature',
  data() {
    return {
      radios:'all',
      modal2: false,
      sideEffect: "",
      modal1: false,
      detail_data: '',
      vaccineList: [],
      totalData:[]
    }
  },
  created() {
    this.getData()
  },
  methods: {
    getData() {
      this.vaccineList = []
      getVaccineList().then((res) => {
        res.forEach((item, index) => {
          let nowData = {}
          if (item != null) {
            let obj = {
              vaccine: item.vaccineName,
              vaccineAgeType:item.vaccineAgeType,
              sideEffect: item.sideEffect,
              description:item.description
            }
            switch (item.vaccineName) {
              case 'Diphtheria':
                nowData = Object.assign({},{src: Diphtheria},obj)
                break
              case 'Measles':
                nowData = Object.assign({},{src: Measles},obj)
                break
              case 'Mumps':
                nowData = Object.assign({},{src: Mumps},obj)
                break
              case 'Rubella':
                nowData = Object.assign({},{src: Rubella},obj)
                break
              case 'Tetanus':
                nowData = Object.assign({},{src: Tetanus},obj)
                break
              case 'Pertussis':
                nowData = Object.assign({},{src: Pertussis},obj)
                break
              case 'Varicella':
                nowData = Object.assign({},{src: Varicella},obj)
                break
              case 'Hepatitis B':
                nowData = Object.assign({},{src: HepatitisB},obj)
                break
              case 'HIB':
                nowData = Object.assign({},{src: HIB},obj)
                break
              case 'Measles':
                nowData = Object.assign({},{src: Measles},obj)
                break
              case 'Meningococcal':
                nowData = Object.assign({},{src: Meningococcal},obj)
                break
              case 'Mumps':
                nowData = Object.assign({},{src: Mumps},obj)
                break
              case 'Rubella':
                nowData = Object.assign({},{src: Rubella},obj)
                break
              case 'Varicella':
                nowData = Object.assign({},{src: Varicella},obj)
                break
            }
            if (JSON.stringify(nowData) !== '{}')
              this.vaccineList.push(nowData)
          }
        })
        console.log(this.vaccineList);
        this.totalData = this.vaccineList
      })
    },
    effects(item) {
      this.modal2 = true
      this.sideEffect = item.sideEffect
    },
    radio_change(data) {
      // 成年人  孩子更换数据  this.vaccineList 数组数据更换
      // console.log(data)
      this.vaccineList = []
      // debugger
      if(data == 'adult'){
       this.totalData.forEach(v=>{
          if(v.vaccineAgeType==1){
            this.vaccineList.push(v)
          }
        })
      }else if(data == 'child') {
        this.totalData.forEach(v=>{
          if(v.vaccineAgeType==0){
            this.vaccineList.push(v)
          }
        })
      }else{
        this.vaccineList = this.totalData
      }
      // console.log(this.vaccineList,111);
    },
  },
}
</script>

<style scoped lang="scss">
.Feature {
  padding: 10px;
  height: 100%;
  .tab1 {
    text-align: left;
    position: relative;
    min-height: 60px;
    .searchBtn {
      position: absolute;
      top: 3px;
      right: 10px;
    }
    span {
      float: left;
      margin-left: 20px;
      font-size: 16px;
      font-weight: bold;
    }
  }
  .vaccineList {
    display: flex;
    border-bottom: 1px solid #ccc;
    margin-bottom: 10px;
    height: 220px;
    .vaccineSon:nth-child(1) {
      width: 200px;
      height: 100%;
      padding: 10px;
      img {
        width: 100%;
        max-height: 100%;
        border-radius: 20px;
      }
    }
    .vaccineSon3 {
      flex: 1;
      padding: 10px;
      //text-align: left;

      button {
        margin-bottom: 10px;
      }
    }
    .vaccineSon2 {
      flex: 3;
      text-align: left;
      padding: 10px;
      .title {
        text-align: center;
        font-size: 16px;
        font-weight: bold;
      }
      .des {
        text-indent: 2em;
        line-height: 25px;
        font-size: 14px;
      }
    }
  }
}
.effectList {
  border-bottom: 1px solid #ccc;
  margin-bottom: 10px;
  .title {
    font-weight: bold;
    line-height: 30px;
    font-size: 16px;
  }
  .description {
    //text-indent: 2em;
    line-height: 25px;
  }
}
</style>
