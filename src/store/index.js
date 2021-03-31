import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    screenHeight: window.innerHeight,
    getPicture: false,
    // 全局加载loading
    globalLoading: true,
  },
  getters:{
    getPictures(state){
      return state.getPicture
    }
  },
  mutations: {
    changePic(state,data){
      state.getPicture = data
    },
    setGlobalLoading(state, data) {
      state.globalLoading = data;
    },
  },
  actions: {
    setPicture({commit,state},name){
      commit('changePic',name)
    }
  },
  modules: {
  }
})
