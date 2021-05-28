<template>
  <div id="app">
    <header class="text-center bg-blue-800 text-white p-4 mb-10">
      <router-link :to="{ name: 'Home' }">Home Page</router-link>
    </header>
    <router-view/>
  </div>
</template>

<script>

export default {
  name: 'App'
}
</script>
