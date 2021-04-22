<template>
    <div style="width: 100vw; height: 100vh">
        <div style="width: 100vw; height: 10vh">
            <h1>Data Comparsion</h1>
            <h3>The percentage of the people who has taken the selected vaccine between the countries in 2019. Users can choose a country and compare it with Australia, and the data will show which one of these two countries has a higher rate of coverage for this vaccine.
            </h3>
            <el-select
                    v-model="value"
                    placeholder="Please select a country: "
                    style="margin-top: 2vh; margin-left: 1vw"
                    @change="drawLine"
            >
                <el-option
                        v-for="item in options"
                        :key="item.value"
                        :label="item.label"
                        :value="item.value"
                >
                </el-option>
            </el-select>
        </div>
        <div style="width: 100vw; height: 90vh" id="chart"></div>
    </div>
</template>

<script>
    export default {
        name: "chart",
        data() {
            return {
                dataList: [],
                options: [
                    {
                        value: "BBG",
                        label: "BBG",
                    },
                    {
                        value: "DTP3",
                        label: "DTP3",
                    },
                    {
                        value: "HepB3",
                        label: "HepB3",
                    },
                    {
                        value: "Hib",
                        label: "Hib",
                    },
                    {
                        value: "IPV1",
                        label: "IPV1",
                    },
                    {
                        value: "MMR1",
                        label: "MMR1",
                    },
                    {
                        value: "MMR2",
                        label: "MMR2",
                    },
                    {
                        value: "PCV",
                        label: "PCV",
                    },
                    {
                        value: "Pol3",
                        label: "Pol3",
                    },
                    {
                        value: "RCV1",
                        label: "RCV1",
                    },
                    {
                        value: "RotaC",
                        label: "RotaC",
                    },
                    {
                        value: "YFV",
                        label: "YFV",
                    },
                ],
                value: "",
            };
        },
        mounted() {
            fetch("http://47.100.78.119:8880/vacRate/getVaccineRate", {
                method: "GET",
            })
                .then((res) => {
                    return res.json(); //请求成功，获请求元数据
                })
                .then((result) => {
                    this.result = result;
                    let country = [];
                    for (let i in result) {
                        country.push(result[i].countryName);
                    }
                    let countryKey = Array.from(new Set(country));
                    let options = [];
                    for (let i in countryKey) {
                        options.push({
                            value: countryKey[i],
                            label: countryKey[i],
                        });
                        let value = countryKey[i];
                        countryKey[value] = {
                            BBG: 0,
                            DTP3: 0,
                            HepB3: 0,
                            Hib: 0,
                            IPV1: 0,
                            MMR1: 0,
                            MMR2: 0,
                            PCV: 0,
                            Pol3: 0,
                            RCV1: 0,
                            RotaC: 0,
                            YFV: 0,
                        };
                        delete countryKey[i];
                    }
                    this.options = options;
                    for (let j in result) {
                        countryKey[result[j].countryName][result[j].vaccineCode] =
                            result[j].vaccineRate;
                    }
                    this.dataList = countryKey;
                    this.drawLine(options[0].value)
                    this.value = options[0].value
                });
        },

        methods: {
            drawLine(e) {
                const originalList = this.dataList[e]
                let lineY = [];
                let dataList = [];
                for (let i in originalList) {
                    lineY.push(i);
                    dataList.push( parseInt( originalList[i]))
                }





                const echarts = require("echarts");
                let myChart = echarts.init(document.getElementById("chart"));

                myChart.setOption({
                    tooltip: {
                        trigger: "axis",
                        axisPointer: {
                            type: "shadow",
                        },
                    },

                    grid: {
                        left: "3%",
                        right: "4%",
                        bottom: "3%",
                        containLabel: true,
                    },
                    xAxis: {
                        type: "value",
                    },
                    yAxis: {
                        type: "category",
                        data: lineY,
                    },
                    series: [
                        {
                            name: "2019年",
                            type: "bar",
                            data: dataList,
                            itemStyle: {
                                normal: {
                                    color: function (params) {
                                        const colorList = [
                                            "#9db2c9",
                                            "#a0cbe8",
                                            "#f28e2b",
                                            "#ffbe7d",
                                            "#59a14f",
                                            "#8cd17d",
                                            "#b6992d",
                                            "#f1ce63",
                                            "#499894",
                                            "#86bcb6",
                                            "#e15759",
                                            "#f5c4c2",
                                        ];

                                        return colorList[params.dataIndex];
                                    },
                                },
                            },
                        },
                    ],
                });
            },
        },
    };
</script>

<style  scoped>
</style>