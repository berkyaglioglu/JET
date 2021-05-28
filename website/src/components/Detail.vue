<template>

  <div class="shadow-md bg-blue-100 p-10 text-center rounded">
    <div class="text-1xl mb-4">
      <span class="font-bold">Name:</span>
      {{ detail.name }}
    </div>
    <div class="text-1xl mb-4">
      <span class="font-bold">Weight:</span>
      {{ detail.weight }}
    </div>
    <div class="text-1xl mb-4">
      <span class="font-bold">Calories:</span>
      {{ detail.calories }}
    </div>
    <div class="text-1xl mb-4">
      <span class="font-bold">Calories per 100g:</span>
      {{ detail.caloriesPer100g }}
    </div>
    <div class="text-1xl mb-4">
      <span class="font-bold">Ingredients:</span>
      <div v-for="item in detail.ingredientNames" :key="item">
        {{ item }}
      </div>
    </div>
  </div>

</template>

<script>
import axios from 'axios'
export default {
  name: 'Detail',
  props: [
    'id',
  ],
  data() {
    return {
      detail: {},
    }
  },
  created() {
    axios.get("http://"+location.hostname+":6062/api/cookie/"+this.id)
    .then(response => (this.detail = response.data));
  }

}
</script>
