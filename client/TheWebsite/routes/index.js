import {createRouter, createWebHistory} from 'vue-router';

import HomePage from "@/components/HomePage.vue"
import Products from "@/components/Products.vue";
import AboutUs from "@/components/AboutUs.vue";
import ContactUs from "@/components/ContactUs.vue";


const routes = [
    {
        path: '/',
        name: 'homePage',
        component: HomePage,
    },
    {
        path: '/aboutus',
        name: 'aboutUs',
        component: AboutUs,
    },
    {
        path: '/products',
        name: 'products',
        component: Products,
    },
    {
        path: '/contactus',
        name: 'contactUs',
        component: ContactUs,
    }
]

 

const router = createRouter({
    history: createWebHistory(),
    routes,
})

export default router




