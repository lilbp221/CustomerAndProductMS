<?php include('includes/header.php'); ?>

<div class="container-fluid px-4">
    <div class="card mt-4 shadow">
        <div class="card-header">
            <h4 class="mb-0"> Products
                <a href="products-create.php" class="btn btn-primary float-end"> Add Products</a>
            </h4>
        </div>
        <div class="card-body">
            <?php alertMessage(); ?>

            <!-- Search Bar -->
            <form action="" method="GET" class="mb-3">
                <div class="input-group">
                    <input type="text" name="search" class="form-control" placeholder="Search by name...">
                    <button type="submit" class="btn btn-outline-secondary">Search</button>
                </div>
            </form>

            <div class="table-responsive">
                <table class="table table-striped table-bordered">
                    <thead>
                        <th>ID</th>
                       <!--  <th>Image</th> --> 
                        <th>Name</th>
                        <th>Price</th>
                        <th>Quantity</th>
                        <th>Status</th>
                        <th>Action</th>
                    </thead>
                    <tbody>
                        <?php
                        $products = getAll('products');
                        $search = isset($_GET['search']) ? $_GET['search'] : '';

                        if (mysqli_num_rows($products) > 0) {
                            foreach ($products as $item) {
                                // Filter results based on search query
                                if (empty($search) || strpos(strtolower($item['name']), strtolower($search)) !== false) {
                        ?>
                                    <tr>
                                        <td><?= $item['id'] ?></td>
                                 <!--  <td>
                                            <img src="../<?= $item['image']; ?>" style="width: 60px; height: 60px;" alt="img">
                                        </td> -->      
                                        <td><?= $item['name'] ?></td>
                                        <td><?= $item['price'] ?></td>
                                        <td><?= $item['quantity'] ?></td>
                                        <td>
                                            <?php
                                            if ($item['status'] == 1) {
                                                echo '<span class="badge bg-danger"> Hidden </span>';
                                            } else {
                                                echo '<span class="badge bg-primary"> Visible</span>';
                                            }
                                            ?>
                                        </td>
                                        <td>
                                            <a href="products-view.php?id=<?= $item['id']; ?>" class="btn btn-info btn-sm">View</a>
                                            <a href="products-edit.php?id=<?= $item['id']; ?>" class="btn btn-success btn-sm">Edit</a>
                                            <a href="products-delete.php?id=<?= $item['id']; ?>" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this?');">Delete</a>
                                        </td>
                                    </tr>
                        <?php
                                }
                            }
                        } else {
                        ?>
                            <tr>
                                <td colspan="7">No Record Found</td>
                            </tr>
                        <?php
                        }
                        ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>

<?php include('includes/footer.php'); ?>
