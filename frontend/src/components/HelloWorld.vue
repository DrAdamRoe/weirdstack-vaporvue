<template>
    <div class="message-container">
        <input 
            v-model="message"
            type="text"
            size="50">
            <h1> {{ message }} </h1>            
    </div>
</template>

<script>

export default {
    data: function (){
        return {
            message: 'hello vue world, from inside a parcel.'
        }
    }
}

</script>

<style scoped>
    .message-container {
        width: 300px;
        margin: 100px auto;
        text-align: center;
        color:blue;
    }
</style>
