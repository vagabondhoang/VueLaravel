<template>
    <div>
        <form action="#" @submit.prevent="AddNewProduct" method="POST">
            <div class="form-group">
                <label for="category_id">Category_id:</label>
                <input v-model="newProduct.category_id" type="number" name="category_id" class="form-control">
            </div>
            <div class="form-group">
                <label for="name">Name:</label>
                <input v-model="newProduct.name" type="text" name="name" class="form-control">
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input v-model="newProduct.price" type="number" name="price" class="form-control">
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <input v-model="newProduct.description" type="text" name="description" class="form-control">
            </div>
            <div class="form-group">
                <label for="discount">Discount:</label>
                <input v-model="newProduct.discount" type="number" name="discount" class="form-control">
            </div>
            <div class="form-group">
                <label for="book">Book:</label>
                <input v-model="newProduct.book" type="number" name="book" class="form-control">
            </div>
            <div class="form-group">
                <label for="view">View:</label>
                <input v-model="newProduct.view" type="number" name="view" class="form-control">
            </div>
            <div class="form-group">
                <button class="btn btn-default" type="submit" v-if="!edit">Add new product</button>
                <button class="btn btn-default" type="submit" v-if="edit" @click="EditProduct(newProduct.id)">Edit product</button>
            </div>
        </form>
        <div class="alert alert-success" v-if="success">Add new product seccessful!</div>
        <hr>
        <div class="table table-responsive">
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
                        <th>Action</th>
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
                        <td>
                            <button class="btn btn-default btn-sm" @click=showProduct(product.id)>Edit</button>
                            <button class="btn btn-danger btn-sm" @click="removeProduct(product.id)">Delete</button>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

</template>

<script>
    export default {

        data() {
            return {
                products: [],
                newProduct: {
                    id: '',
                    category_id: '',
                    name: '',
                    price: '',
                    description: '',
                    discount: '',
                    book: '',
                    view: ''
                },
                success: false,
                edit: false,
            }
        },
        methods: {
            fetchAllProducts: function() {
                var self = this;

                axios.get('products')
                .then(function(response) {
                    self.products = response.data;
                })
                .catch(function(error) {
                    console.log(error);
                });
            },

            AddNewProduct: function() {
                var self = this;

                axios.post('products', self.$data.newProduct);
                self.success = true;
                setTimeout(function() {
                    self.success = false;
                }, 5000);

                
            },

            showProduct: function(id) {
                var self = this;
                self.edit = true;

                axios.get('product1/' + id)
                .then(function(response) {
                    self.newProduct = response.data;
                });
                
            },

            removeProduct: function(id) {
                var confirmBox = confirm("Are you sure, you want to delete this product?");
                
                if(confirmBox) {
                    axios.delete('products/' + id)
                    .then(response => {this.fetchAllProducts()});
                    
                }
                
            },

            EditProduct: function(id) {

                axios.patch('product1/' + id)
                .then(function(response) {
                    console.log(response);
                })
                .catch(function(error) {
                    console.log(error);
                });

                this.fetchAllProducts();
                this.edit = false;
            }    
            
            
        },

        mounted() {
            this.fetchAllProducts();
            //this.removeProduct();
        }
    }
</script>
