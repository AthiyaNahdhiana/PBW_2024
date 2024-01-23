<?php
session_start();

include "koneksi.php";  

if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $sql = "SELECT username 
          FROM user 
          WHERE username='".$_POST['username']."' AND password='".md5($_POST['password'])."'";

  $hasil = $conn->query($sql);  
  $row = $hasil->fetch_row(); 
  
	//periksa login
	if (!empty($row)) {
		//menciptakan session
		$_SESSION['username'] = $row[0]; 

		//menuju ke halaman admin
		header("location:admin.php");
	}else{
		header("location:login.php"); 
	}
} else {
?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login | My Daily Journal</title>
    <link rel="icon" href="img/logo.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
  </head>
  <body class="bg-danger-subtle">
    <div class="container mt-5 pt-5">
        <div class="row">
            <div class="col-12 col-sm-8 col-md-6 m-auto">
                <div class="card border-0 shadow-rounded-5">
                    <div class="card-body">
                        <div class="text-center mb-3">
                            <i class="bi bi-person-circle h1 display-4"></i>
                            <p>My Daily Journal</p>
                            <hr />
                        </div>
                        <form action="" method="post">
                            <input type="text" name="passwordOld" class="form-control my-4 py-2 rounded-4" placeholder="Password Lama" />
                            <input type="text" name="passwordNew" class="form-control my-4 py-2 rounded-4" placeholder="Password Baru" />
                            <input type="password" name="passwordKonfirm" class="form-control my-4 py-2 rounded-4" placeholder="Konfirmasi Password Baru" />
                            <div class="text-center my-3 d-grid">
                                <button class="btn btn-danger rounded-4">Reset Password</button>
                            </div>
                        </form>
                    </div>

                </div>

            </div>

        </div>

    </div>
   <?php 
    $username = "admin";
    $password = "123456";

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        foreach($_POST as $key=>$val){
            echo $key." : ".$val."<br>";
        }
        
        if($_POST['passwordOld']== $password AND $_POST['passwordNew']=='passwordKonfirm'){
            echo "Password akan diganti";
        }else{
            echo "Ada Kesalahan";
        }
    }

    if (isset($_POST['id'])) {
        //update data
        $id = $_POST['id'];

        $simpan = mysqli_query($conn, "UPDATE user 
                                        SET 
                                        passwordNew = '$password',
                                        username = '$username'
                                        WHERE id = '$id'");
    } else {
        //insert data
        $simpan = mysqli_query($conn, "INSERT INTO user (id, username, passwordNew, foto)
                                        VALUES ('$id','$username', '$password', '$foto')");
    };

    
   ?>
  </body>
</html>

<?php
}

session_start();
session_destroy();
header("location:login.php"); 

?>