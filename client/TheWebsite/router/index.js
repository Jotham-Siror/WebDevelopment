import { createRouter, createWebHistory } from "vue-router";



const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: "/",
      name: "homePage",
      component: HomePageVue,
    },

    // {
    //   path: '/about',
    //   name: 'about',
    //   // route level code-splitting
    //   // this generates a separate chunk (About.[hash].js) for this route
    //   // which is lazy-loaded when the route is visited.
    //   component: () => import('../views/AboutView.vue')
    // }

    {
      path: "/aboutUs",
      name: "aboutUs",
      component: AboutUs,
    },
    {
      path: "/products",
      name: "products",
      component: Events,
    },
    {
      path: "/contactUs",
      name: "contactUs",
      component: ContactUs,
    },
  ],
});

export default router;
