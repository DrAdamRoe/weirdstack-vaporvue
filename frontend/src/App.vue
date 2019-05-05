<template>
    <div class="app">
        <counter-button></counter-button>
        <hello-world></hello-world>
    </div>
</template>

<script>

import CounterButton from './components/CounterButton.vue'
import HelloWorld from './components/HelloWorld.vue'

export default {
    name: 'App',
    components: { CounterButton, HelloWorld }   
};
</script>






