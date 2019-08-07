<template>
  <div>
    <button :type="test.type" class="btn btn-sm" v-text="test.name"></button>
  </div>
</template>

<script>
export default {
  mounted() {
    console.log("Component mounted.");

    axios.post("api/vue", {}).then(response => {
      this.test = response.data;
      console.log("dati recuperati");
    });
  },

  data: function() {
    return {
      test: "null"
    };
  },

  props: ["text", "type"]
};
</script>
