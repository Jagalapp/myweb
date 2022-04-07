<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
    <script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
    <title>MyWeb Login</title>
</head>
<body>
    <!-- header -->
    <nav class="navbar navbar-expand-md navbar-light" style="background-color: #F5F5F5;">
        <div class="container-fluid">
            <a href="#" class="navbar-brand">
                <i class="bi bi-tree ms-2 fs-3"></i>
                <span class="fw-bold fs-3 mx-1">MyWeb</span>
            </a>
            <!-- toggle button for mobile nav -->
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav"
            aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <!-- navbar links -->
            <div class="collapse navbar-collapse justify-content-end align-center" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a href="list.jsp" class="nav-link">
                            <span class="fs-4 mx-1">List</span>    
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="login.jsp" class="nav-link">
                            <span class="fs-4 mx-1">로그인</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="reg.jsp" class="nav-link">
                            <span class="fs-4 mx-1">회원가입</span>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- login form -->
    <section class="container-lg my-5">
        <div class="row justify-content-center">
            <form action="loginAction" method="post" class="col-md-6">
                <h3 class="text-center fw-bold text-muted mb-5">로그인</h3>
                <div class="form-grounp my-2">
                    <input type="text" class="form-control" placeholder="ID" name="userId" maxlength="20">
                </div>
                <div class="form-groupd my-2">
                    <input type="password" class="form-control" placeholder="PASSWORD" name="userPassword" maxlength="20">
                </div>
                <input type="submit" class="btn btn-secondary form-control" value="로그인">
            </form>
        </div>
    </section>

    <!-- go to reg -->
    <a href="reg.jsp"><div class="text-center">가입된 계정이 없나요?(click)</div></a>
    
    <!-- js setting -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="../bootstrap/js/bootstrap.js"></script>
</body>
</html>