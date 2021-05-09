<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create User</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/table.css">
    <link rel="stylesheet" type="text/css" href="css/createuser.css">
    <link rel="stylesheet" type="text/css" href="css/navbar.css">
</head>

<body style="background-color :  black;">
<?php
    include 'config.php';
    if(isset($_POST['submit'])){
    $name=$_POST['name'];
    $email=$_POST['email'];
    $balance=$_POST['balance'];
    $sql="insert into users(name,email,balance) values('{$name}','{$email}','{$balance}')";
    $result=mysqli_query($conn,$sql);
    if($result){
               echo "<script> alert('Hurray! User created');
                               window.location='transfermoney.php';
                     </script>";
                    
    }
  }
?>

<?php
  include 'navbar.php';
?>

        

  <div class="background" style="background-image: url(1.jpg); background-position: center; background-size: cover; ">
  <div class="container">

    <div class="login-box" style="top: 350px">
      <h5 style="text-align: center;color: white">CREATE A USER</h5>
      <form method="POST" action="createuser.php">
        <div class="user-box">
          <input placeholder="NAME" type="text" name="name" required>
        </div>
        <div class="user-box">
          <input placeholder="EMAIL" type="email" name="email" required></div>
        <div class="user-box">
          <input placeholder="BALANCE" type="NUMBER"  name="balance" required>
        </div>
        <a href="#">
          <span></span>
          <span></span>
          <span></span>
          <span></span>
           <input style="background: transparent;border: none;color: white" type="submit" value="CREATE" name="submit">
        </a>
        <a href="#">
          <span></span>
          <span></span>
          <span></span>
          <span></span>
          <input style="background: transparent;border: none;color: white;" type="reset" value="RESET" name="reset">
        </a>
      </form>
    </div>

  </div>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
</body>
</html>