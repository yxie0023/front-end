<template>
  <div class="Feature">
    <h1>This session will be opened soon!!!!!</h1>
  </div>
</template>

<script src="https://YOUR-SERVER/javascripts/api/tableau-2.min.js"></script>

<script>

export default {
  name: 'Feature',
  data(){
    return {

    }
  },
  methods:{

  }
}
</script>

<style scoped lang="scss">

</style>




    <script type="text/javascript"
	    src="https://public.tableau.com/javascripts/api/tableau-2.min.js"></script>
    <script type="text/javascript">
        function initViz() {
            var containerDiv = document.getElementById("vizContainer"),
                url = "http://public.tableau.com/views/RegionalSampleWorkbook/Storms",
                options = {
                    hideTabs: true,
                    onFirstInteractive: function () {
                        console.log("Run this code when the viz has finished loading.");
                    }
                };

            var viz = new tableau.Viz(containerDiv, url, options);
            // Create a viz object and embed it in the container div.
        }
    </script>

<body onload="initViz();">
    <div id="vizContainer" style="width:800px; height:700px;"></div>
</body>

