export default [
  {
    path: "/index",
    name: "index",
    component: () =>
      import(/* webpackChunkName: "map" */ "@/views/map/index.vue"),
    meta: {
      title: "index"
    },
    children: []
  },
  {
    path: "/vaccinelist",
    name: "vaccinelist",
    component: () =>
        import(/* webpackChunkName: "map" */ "@/views/map/vaccinelist.vue"),
    meta: {
      title: "vaccinelist"
    },
    children: []
  },
  {
    path: "/vaccineComp",
    name: "vaccineComp",
    component: () =>
        import(/* webpackChunkName: "map" */ "@/views/map/vaccineComp.vue"),
    meta: {
      title: "vaccineComp"
    },
    children: []
  },
  {
    path: "/side",
    name: "side",
    component: () =>
        import(/* webpackChunkName: "map" */ "@/views/map/side.vue"),
    meta: {
      title: "side"
    },
    children: []
  },
  {
    path: "/aboutUs",
    name: "aboutUs",
    component: () =>
        import(/* webpackChunkName: "map" */ "@/views/map/aboutUs.vue"),
    meta: {
      title: "首页"
    },
    children: []
  },
  {
    path: "/403",
    name: "403",
    component: () =>
        import(/* webpackChunkName: "error-page" */ "@/views/error-page/403"),
    meta: {
      title: "403"
    },
    children: []
  },
  {
    path: "/global",
    name: "global",
    component: () =>
        import(/* webpackChunkName: "map" */ "@/components/globalLoading.vue"),
    meta: {
      title: "loading"
    },
    children: []
  }
];
