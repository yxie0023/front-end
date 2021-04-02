<template>
<div class="aboutUs">
  <div class="summary">
      <h1>About Us</h1>
      <h3>SuperProtector is a website that will help in eliminating the cause of Vaccine Hesitation in a group of people, namely the migrants, refugee women and their children. Country of origin vaccination schedules are different to the Australian National Immunisation Program (NIP) schedule, which means the chances of anyone arriving fully vaccinated is very low. We provide a pathway for vaccine awareness, which can be availed by them.
      </h3>
  </div>
 <Row :gutter="16" class="our">
    <Col span="6">
      <div class="content">
        <dl>
          <dt><img :src="me1" alt="" class="images"></dt>
          <dd>
            <div class="title">谢易辰</div>
          </dd>
        </dl>
      </div>
    </Col>
   <Col span="6">
     <div class="content">
       <dl>
         <dt><img :src="me1" alt="" class="images"></dt>
         <dd>
           <div class="title">谢易辰</div>
         </dd>
       </dl>
     </div>
   </Col>
   <Col span="6">
     <div class="content">
       <dl>
         <dt><img :src="me1" alt="" class="images"></dt>
         <dd>
           <div class="title">谢易辰</div>
         </dd>
       </dl>
     </div>
   </Col>
   <Col span="6">
     <div class="content">
       <dl>
         <dt><img :src="me1" alt="" class="images"></dt>
         <dd>
           <div class="title">谢易辰</div>
         </dd>
       </dl>
     </div>
   </Col>
  </Row>
</div>
</template>

<script>
import me1 from '@/assets/imgs/me1.jpeg'
export default {
name: "about us",
  data(){
  return {
    me1
  }
  }
}
</script>

<style scoped lang="scss">
.summary{
  height: 300px;
  background-color: #03a9f4;
  color:#fff;
  padding:40px;
  h1{
    font-size: 46px;
    line-height: 85px;
    height: 85px;
  }
  h3{
    line-height: 25px;
    font-size: 18px;
  }
}
.our{
  .content{
    dl{
      text-align: center;
      dt{
        //border-radius: 50%;
        height: 300px;
        width: 300px;
        padding:20px;
        text-align: center;
        margin: 0 auto;
        //margin-bottom:20px;
        .images{
          width: 100%;
          border-radius: 50%;
        }
      }
      dd{
        line-height: 20px;
        text-align: center;
        .title{
          font-size: 20px;
          font-weight: bold;
        }
      }
    }
  }
}
</style>
