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
    <script type="text/javascript" src="../js/updateDetail.js"></script>
    <title>MyWeb Update</title>
</head>
<body>
    <!-- update content -->
    <div class="container-sm my-5">
        <form action="write.jsp" method="post" id="updateDetailForm">
            <h3 class="text-muted fw-bold text-center mb-5">글 수정</h3>
            <div class="form-group">
                <input type="text" class="form-control" name="detailTitle" maxlength="50" value="detail title" id="detailTitle">
            </div>
            <div class="form-group">
                <textarea type="text" class="form-control my-3" name="detailContent" maxlength="2048" style="height:350px" id="detailContent">detail content</textarea>
            </div>
            <div class="form-groun justify-content-end d-flex">
                <input type="submit" class="btn btn-primary btn-lg" value="수정">
            </div>
        </form>
    </div>
    
    <!-- js setting -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="../bootstrap/js/bootstrap.js"></script>
</body>
</html>