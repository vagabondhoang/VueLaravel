<template lang="html">
    <div>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Category_id</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Description</th>
                    <th>Discount</th>
                    <th>Book</th>
                    <th>View</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="product in products">
                    <td>{{ product.id }}</td>
                    <td>{{ product.category_id }}</td>
                    <td>{{ product.name }}</td>
                    <td>{{ product.price }}</td>
                    <td>{{ product.description }}</td>
                    <td>{{ product.discount }}</td>
                    <td>{{ product.book }}</td>
                    <td>{{ product.view }}</td>
                </tr>
            </tbody>
        </table>
    </div>

</template>

<script>
import axios from 'axios';
    export default {

        data() {
            return {
                products: []
            }
        },
        created() {
            axios.get('products')
                .then(function(response) {
                    console.log(response);
                })
                .catch(function(error) {
                    console.log(error);
                });
        },
        mounted() {
            console.log('Component mounted.');
        }
    }
</script>
