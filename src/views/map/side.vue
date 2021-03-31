<template>
    <div>
        <h1>Top 8 side effects</h1>
        <Table
            :row-class-name="rowClassName"
            :columns="columns1"
            :data="data1"
            border
        ></Table>
        <!-- <p>Custom column styles:</p>
    <Table :columns="columns9" :data="data1"></Table>
    <p>Custom arbitrary cell styles:</p>
    <Table :columns="columns1" :data="data8"></Table> -->
    </div>
</template>

<script>
export default {
    data() {
        return {
            columns1: [
                {
                    title: 'Side-effect Name',
                    key: 'name',
                  align:'center',
                  width:'300px'
                },
                {
                    title: 'Side-effect Description',
                    key: 'desc',
                    align:'center'
                },
            ],
            data1: [
                {
                    name: 'Pain and swelling in the arm',
                    desc:
                        'There may be varying degrees of pain and swelling at the site of your injection.',
                },
                {
                    name: 'Fever',
                    desc:
                        'It may cause a mild fever after you get the vaccine.',
                },
                {
                    name: 'Tiredness',
                    desc:
                        'It can cause fatigue and weakness after you get the vaccine.',
                },
                {
                    name: 'Headache',
                    desc:
                        'It may cause varying degrees of headache or dizziness after you get the vaccine.',
                },
                {
                    name: 'Anaphylaxis',
                    desc:
                        'If you are allergic to one of the ingredients in the vaccine, you may experience systemic adverse effects, like welts, hives, lip and throat or blood pressure changes after getting the vaccine.',
                },
                {
                    name: 'Chills',
                    desc:
                        'It can cause chills of varying degrees after you have been vaccinated.',
                },
                {
                    name: 'Redness',
                    desc:
                        'It may cause varying degrees of redness at the inoculation site after you have been vaccinated.s',
                },
                {
                    name: 'Nausea',
                    desc:
                        'It may cause a certain degree of nausea after you get vaccinated.',
                },
            ],
        }
    },
    methods: {
        rowClassName(row, index) {
            if (index === 1 || index === 3 || index === 5 || index === 7) {
                return 'demo-table-info-row'
            } else {
                return 'demo-table-white'
            }
            return ''
        },
    },
}
</script>

<style>
.ivu-table .demo-table-info-row td {
    background-color: #e6f5fc;
    color: #666;
    text-align: center;
}
.ivu-table .demo-table-white td {
    background-color: #fff;
    color: #060606;
        text-align: center;
}
.ivu-table .demo-table-error-row td {
    background-color: #ff6600;
    color: #fff;
        text-align: center;
}
</style>
   