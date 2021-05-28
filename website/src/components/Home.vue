<template>
  <div class="text-center">
    <div class="grid md:grid-cols-2 gap-4">
      <div v-for="(cookie,index) in cookies" :key="cookie.cookieId" class="list-group-item">
        <div class="shadow-md bg-blue-100 p-10 text-center rounded">
          <h3 class="text-2xl text-blue-900 font-bold mb-4"> Cookie {{index+1}} </h3>
          <div class="text-1xl mb-4">
            <span class="font-bold">Name:</span>
            {{ cookie.name }}
          </div>
          <div class="text-1xl mb-4">
            <span class="font-bold">Weight:</span>
            {{ cookie.weight }}
          </div>
          <div class="text-1xl mb-4">
            <span class="font-bold">Calories per 100g:</span>
            {{ cookie.caloriesPer100g }}
          </div>
          <router-link :to="{ name: 'Detail', params: {id: cookie.cookieId } }">Details</router-link>

        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'Home',
  data() {
    return {
      cookies: [],
    }
  },
  created() {
    axios.get("http://"+location.hostname+":6062/api/cookie")
    .then(response => (this.cookies = response.data));
  }

}
</script>
