<?php
require '../config/function.php';

$paraResultId= checkParamId('id');

if(is_numeric($paraResultId))
{
$customerId= validate($paraResultId);

$customer= getById('customers',$customerId);
if($customer['status']==200)
{
    
      $response= deleted('customers',$customerId);
if($response)
{
      redirect('customers.php','Customers Deleted Successfully');

}
else{
redirect('customers.php','something is wrong');
      
}
}
else{
      redirect('customers.php',$category['message']);
}
//echo $adminId;
}

else{
redirect('customers.php','something is wrong');
}

?>