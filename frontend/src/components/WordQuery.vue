<template>
    <div class="container"> 
        <form @submit="submit">
            word: <input type="text" v-model="word">
            <input type="submit" value="Submit">
        </form>
        <h2>Word: </h2>
        <pre>
            {{word}}
        </pre>
        <h2>Output: </h2>
        <pre>
            {{output}}
        </pre>
    </div>
</template>

<script>
export default {
    data: function(){
        return{
            word:'',
            output:''
        }
    },
    methods: {
        submit(e) {
            this.axios.post('http://localhost:8080/word',{
                word: this.word
            }
            )
            .then(function (response){
                this.output = response.data
            })
            .catch(function (error){
                this.output = error
            })
        }
    }
}
</script>

<style scoped>
    .container {
        color:blue;
    }
</style>
