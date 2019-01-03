<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Thông tin cá nhân</title>
</head>
<body>
<form role="form" action="" id="user_profile" method="POST">
  
    <div class="form-group col-md-6">
        <label for="nickname">Họ Tên</label>
        <input type="text" class="form-control" id="nickname" name="nickname" placeholder="Họ Tên" value="<?php the_author_meta( 'nickname', $author_id ); ?>">
    </div>
    <div class="form-group col-md-6">
        <label for="email">Email</label>
        <input disabled type="email" class="form-control" id="email" name="email" placeholder="Enter email" value="<?php the_author_meta( 'user_email', $author_id ); ?>">
    </div>
    <div class="form-group col-md-6">
        <label for="user_url">Website</label>
        <input type="text" class="form-control" id="user_url" name="user_url" placeholder="Website của bạn" value="<?php the_author_meta( 'user_url', $author_id ); ?>">
    </div>
    <div class="form-group col-md-6">
        <label for="facebook">Facebook</label>
        <input type="text" class="form-control" id="facebook" name="facebook" placeholder="Facebook của bạn" value="<?php the_author_meta( 'facebook', $author_id ); ?>">
    </div>
    <div class="form-group col-md-6">
        <label for="googleplus">Google Plus</label>
        <input type="text" class="form-control" id="googleplus" name="googleplus" placeholder="Google Plus của bạn" value="<?php the_author_meta( 'googleplus', $author_id ); ?>">
    </div>
    <div class="form-group col-md-6">
        <label for="twitter">Twitter</label>
        <input type="text" class="form-control" id="twitter" name="twitter" placeholder="Twitter của bạn" value="<?php the_author_meta( 'twitter', $author_id ); ?>">
    </div>
    <div class="form-group col-md-12">
        <label for="description">Mô tả về bạn</label>
        <textarea class="form-control" name="description" id="description" rows="3" cols="50"><?php the_author_meta( 'description', $author_id ); ?></textarea>
    </div>
    <div class="form-group col-md-6">
        <label for="pass1">Password</label>
        <input type="password" class="form-control" id="pass1" name="pass1" placeholder="Password">
    </div>
    <div class="form-group col-md-6">
        <label for="pass2">Nhập lại Password</label>
        <input type="password" class="form-control" id="pass2" name="pass2" placeholder="Password">
    </div>
    <div class="form-group col-md-12"><button type="submit" class="btn btn-success">Cập nhật</button></div>
</form>

</body>
</html>