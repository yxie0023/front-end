<template>
    <div class="Feature">
        <div>
            <p class="tab1">
                <Input
                    suffix="ios-search"
                    placeholder="Enter text"
                    style="width: 300px"
                    class="searchBtn"
                />
                <span>Are you an adult or a child?</span>
                <span>
                    <RadioGroup @on-change="radio_change">
                        <Radio label="adult"></Radio>
                        <Radio label="child"></Radio>
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
                        {{ item.des }}
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
            <div
                v-for="(item, index) of effectList"
                :key="index"
                class="effectList"
            >
                <div class="title">{{ item.name }}</div>
                <div class="description">{{ item.description }}</div>
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
import { getAll } from '@/api/index'
export default {
    name: 'Feature',
    data() {
        return {
            modal2: false,
            effectList: [],
            modal1: false,
            detail_data: '',
            vaccineList: [],
        }
    },
    created() {
        this.getData()
    },
    methods: {
        getData() {
            this.vaccineList = []
            getAll().then((res) => {
                res.forEach((item, index) => {
                    let nowData = {}
                    if (item != null) {
                        switch (item.vaccine) {
                            case 'dT *':
                                nowData = {
                                    src: Diphtheria,
                                    vaccine: item.vaccine,
                                    des: 'Yes',
                                    details:
                                        'It totally contains 3 doses, after the first one taken, the second one should be taken after 4 weeks, and then the last dose should be taken after 4 weeks more.',
                                    effects: [
                                        {
                                            name: 'side-effect1: Tiredness',
                                            description:
                                                'It can cause fatigue and weakness after you get the vaccine.',
                                        },
                                        {
                                            name: 'side-effect2: Pain and swelling in the arm',
                                            description:
                                                'There may be varying degrees of pain and swelling at the site of your injection.',
                                        },
                                    ],
                                }
                                break
                            case 'Pertussis':
                                nowData = {
                                    src: Pertussis,
                                    vaccine: item.vaccine,
                                    clinically:
                                        'sflkajlfkalc wejivunru cvirqfnmeriv kalvj avnwqe cvwrvqejvulsflkcmicqruvnfev uqrfjewmcv rjfinmif',
                                    details:
                                        'sflkajlfkalvj avnwqe kalvj avnwqe cvwrvqejvulsflkcjc eqjrivn wdcwjiv',
                                    effects: [
                                        {
                                            name: 'effect1: Redness',
                                            description:
                                                'It may cause varying degrees of redness at the inoculation site after you have been vaccinated.',
                                        },
                                        {
                                            name: 'side-effect2: Nausea',
                                            description:
                                                'It may cause a certain degree of nausea after you get vaccinated.o',
                                        },
                                    ],
                                }
                                break
                            case 'Poliomyelitis (IPV)':
                                nowData = {
                                    src: Poliomyelitis,
                                    vaccine: item.vaccine,
                                    des: 'Yes',
                                    details:
                                        'It totally contains 3 doses, after the first one taken, the second one should be taken after 4 weeks, and then the last dose should be taken after 4 weeks more.',
                                    effects: [
                                        {
                                            name: 'side-effect1: Anaphylaxis',
                                            description:
                                                'If you are allergic to one of the ingredients in the vaccine, you may experience systemic adverse effects, like welts, hives, lip and throat or blood pressure changes after getting the vaccine.',
                                        },
                                        {
                                            name: 'side-effect2: Headache',
                                            description:
                                                'It may cause varying degrees of headache or dizziness after you get the vaccine.',
                                        },
                                    ],
                                }
                                break
                            case 'MMR':
                                nowData = {
                                    src: Measles,
                                    vaccine: item.vaccine,
                                    des: 'Yes',
                                    details:
                                        'It totally contains 3 doses, after the first one taken, the second one should be taken after 4 weeks, and then the last dose should be taken after 4 weeks more.',
                                    effects: [
                                        {
                                            name: 'side-effect1: Pain and swelling in the arm',
                                            description:
                                                'There may be varying degrees of pain and swelling at the site of your injection.',
                                        },
                                        {
                                            name: 'side-effect2: Redness',
                                            description:
                                                'It may cause varying degrees of redness at the inoculation site after you have been vaccinated.',
                                        },
                                    ],
                                }
                                break
                        }
                        if (JSON.stringify(nowData) !== '{}')
                            this.vaccineList.push(nowData)
                    }
                })
            })
        },
        effects(item) {
            this.modal2 = true
            this.effectList = item.effects
        },
        radio_change(data) {
            // 成年人  孩子更换数据  this.vaccineList 数组数据更换
            console.log(data)
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
