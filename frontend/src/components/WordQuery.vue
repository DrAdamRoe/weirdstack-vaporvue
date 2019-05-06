<template>
    <div class="container"> 
        <form method="post" action="/word">
            word: <input type="text" name="word">
            <input type="submit" value="Submit">
        </form>
    </div>
</template>

<script>
export default {
    data: function(){
        return
    }
}
</script>

<style scoped>
    .container {
        color:blue;
    }
</style>
