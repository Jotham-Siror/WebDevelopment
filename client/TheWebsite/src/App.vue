<script setup>

import Navbar from "./components/NavBar.vue"
import Footer from "./components/Footer.vue";

</script>

<template>
  <v-app>
    <Navbar/>
    <v-main>
      <router-view></router-view>
    </v-main>
    <Footer></Footer>
  </v-app>
</template>
