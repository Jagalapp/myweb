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
    <link rel="stylesheet" href="../css/reg.css">
    <script type="text/javascript" src="../js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="../js/reg.js"></script>
    <title>MyWeb Reg</title>
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

    <!-- reg form -->
    <section class="cotainer-lg mx-2 my-5">
        <div class="row justify-content-center">
            <form action="regAction" method="post" class="col-md-6" id="regForm">
                <h3 class="text-muted fw-bold text-center">회원가입</h3>
                <div class="form-group">
                    <label for="regName">NAME</label>
                    <input type="text" class="form-control" placeholder="NAME" id="regName">
                </div>
                <div class="form-group">
                    <label for="regId">ID</label>
                    <input type="text" class="form-control" placeholder="ID" id="regId">
                    <input type="button" class="btn btn-secondary btn-sm" id="idCheckBtn" value="ID CHECK" onclick="idOverlapCheck">
                    <div class="text-success" id="idCheckedText">checked!</div>
                </div>
                <div class="form-group">
                    <label for="regPassword">PASSWORD</label>
                    <input type="password" class="form-control" placeholder="PASSWORD" id="regPassword">
                </div>
                <div class="form-group">
                    <label for="regPasswordCheck">PASSWORD CHECK</label>
                    <input type="password" class="form-control" placeholder="PASSWORD CHECK" id="regPasswordCheck">
                </div>
                <div class="form-group">
                    <label for="regEmail">EMAIL</label>
                    <input type="text" class="form-control" placeholder="EMAIL" id="regEmail">
                </div>
                <div class="form-group" id="genderFormGroup">
                    <label class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="regGender" value="regMale">
                        <span class="form-check-label"> Male </span>
                    </label>
                    <label class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" name="regGender" value="regMale">
                        <span class="form-check-label"> Female</span>
                    </label>
                </div>
                <div class="form-groun justify-content-center d-flex" id="regFormSubmitBtn">
                    <input type="submit" class="btn btn-primary" value="회원가입" id="regSubmitBtn">
                </div>
            </form>
        </div>
    </section>

    <!-- go to login -->
    <a href="login.jsp"><div class="text-center">가입된 계정이 있나요?(click)</div></a>

    <!-- js setting -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="../bootstrap/js/bootstrap.js"></script>
</body>
</html>