<template>
    <div class="button-container">
    <p>
        <button v-on:click="count++">
            You clicked me {{ count }} times.
        </button>
    </p>
    </div>
</template>

<script>

export default {
    data: function (){
        return {
            count: 0
        }
    }
}

</script>

<style scoped>
    .button-container {
        background-color:yellowgreen; 
        color: white;
        padding: 30px 60px;
        text-align: center;
        text-decoration: none;
        display: inline-block;
        font-size: 24px;
        border-radius: 30%;
        border: 2px solid black;
        margin: 100px auto;
    }
</style>
