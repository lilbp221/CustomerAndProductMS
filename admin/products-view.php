<?php include('includes/header.php'); ?>

<div class="container-fluid px-4">
    <div class="card mt-4 shadow">
        <div class="card-header">
            <h4 class="mb-0"> View Product
                <a href="products.php" class="btn btn-danger float-end"> Back</a>
            </h4>
        </div>
        <div class="card-body">
            <?php alertMessage(); ?>

            <?php
            $paramValue = checkParamId('id');

            if (!is_numeric($paramValue)) {
                echo '<h5> Id is not an Integer!!</h5>';
                return false;
            }

            $product = getById('products', $paramValue);

            if ($product) {
                if ($product['status'] == 200) {
            ?>
                    <div class="row">
                  <!-- <div class="col-md-6">
                            <img src="../<?= $product['data']['image']; ?>" style="width: 100%;" alt="Product Image">
                        </div>  -->     
                        <div class="col-md-6">
                        <h2><?= $product['data']['name']; ?></h2> 
                        <div class="col-md-5"><hr> </div>
                        <p><strong>Description:</strong> <?= $product['data']['description']; ?></p>
                        <p><strong>Price:</strong> <?= $product['data']['price']; ?></p>

                            <p><strong>Quantity:</strong> <?= $product['data']['quantity']; ?></p>
                            <p><strong>Status:</strong> <?= ($product['data']['status'] == 1) ? 'Hidden' : 'Visible'; ?></p>
                            <!-- Add more details if needed -->
                        </div>
                    </div>
            <?php
                } else {
                    echo '<h5> ' . $product['message'] . '</h5>';
                    return false;
                }
            } else {
                echo '<h5> Something went wrong!!</h5>';
                return false;
            }
            ?>
        </div>
    </div>
</div>

<?php include('includes/footer.php'); ?>
