import Vue from 'vue'
import App from './App'
import axios from 'axios'
import VueAxios from 'vue-axios'



axios.defaults.baseURL = 'http://localhost:9001'
Vue.use(VueAxios, axios)

//turn off that pesky note in the console
Vue.config.productionTip = false


new Vue({
        el: '#vue-app',
        render: h => h(App)
    }
)
