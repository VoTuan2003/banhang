<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="banhang.TrangChu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Bán Hàng</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <style>
        .navbar {
            position:relative;
    background-color: gray;
    height: 50px; /* Đặt chiều cao của thanh ngang */
    width: 100%; /* Chiều rộng sẽ tự động mở rộng để đảm bảo nó chiếm toàn bộ chiều rộng của cửa sổ trình duyệt */
    bottom:10px;
    color:white;    
  
   
}
                .navbar1 {
            position:relative;
    background-color: red;
    height: 50px; /* Đặt chiều cao của thanh ngang */
    width: 100%; /* Chiều rộng sẽ tự động mở rộng để đảm bảo nó chiếm toàn bộ chiều rộng của cửa sổ trình duyệt */
    bottom:-20px;
    color:white;    
  
   
}
        body {
    margin: 0;
    padding: 0;
   
}
     .top_header_left{
         position:relative;
         float:left;
         bottom:-20px;
         left:70px;
     }
     .header_account{
         position:relative;
         margin-left:50%;
         top:20px;
         
     }
     .search_header{
         margin:7px 0 0 400px;
    
     }
    .search_header input#s, .search_header #woocommerce-product-search-field {
        width: 300px;
        height:35px;
        
    }
  button#searchsubmit {
    border: 1px solid #e03232;
    background-color:red;
    
}
  .btn {
    display: inline-block;
    padding: 6px 12px;
    margin-bottom: 0;
    font-size: 14px;
    font-weight: 400;
    line-height: 1.42857143;
    text-align: center;
    white-space: nowrap;
    vertical-align: middle;
    -ms-touch-action: manipulation;
    touch-action: manipulation;
    cursor: pointer;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-image: none;
    border: 1px solid transparent;
    border-radius: 4px;
}

   .logo {

    margin: 0;
    padding: 0;
    float: left;
}
   .cart-contents i {
    font-size: 30px; /* Kích thước phông chữ của biểu tượng */
    width: 32px; /* Chiều rộng của biểu tượng */
    height: 32px; /* Chiều cao của biểu tượng */
  }
   .cart_header {
    float: right;
    margin-top: -30px;
    right:30%;
    position: relative;
    z-index: 999999;
}
   .popup_cart_hover {
    position: relative;
    padding-bottom: 10px;
    margin-bottom: -10px;
}
   a.cart-contents {
    padding: 0 0 0 40px;
    background-size: auto 100%;
    position: relative;
    display: block;
    line-height: 17px;
    text-decoration: none;
}
   a.cart-contents span {
    display: block;
    text-transform: uppercase;
    margin-left:50px;
    margin-top:-25px;
}

   a.cart-contents small.qty_mobile_only {
    position: absolute;
    top: 0;
    left: 20px;
    background: #d33;
    color: #fff;
    border-radius: 50%;
    height: 20px;
    width: 20px;
    text-align: center;
    line-height: 20px;
    display: none;
}

   .empty-message {
  display: none; /* Ẩn nội dung ban đầu */
}
   .vertical-menu {
  width: 200px;
  padding-left: 250px;
  
}

.vertical-menu a {
  background-color: #eee;
  color: black;
  display: block;
  padding: 12px;
  text-decoration: none;
}

.vertical-menu a:hover {
  background-color: #ccc;
}

.vertical-menu a.active {
  background-color: red;
  color: white;
  height:26px;
  
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header>
             <div class="navbar">
             <div class="top_header_left"> Chào mừng bạn đến với shopOnline</div>
                 <span class="header_account"><a href="#" style="color:white;">Đăng Nhập | Đăng Ký</a></span>
        </div>


        <div class="logo">
        <a href="TrangChu.aspx" title="Công nghệ cho cuộc sống"><img width="162" height="50" 
            src="https://seeklogo.com/images/S/shopee-logo-065D1ADCB9-seeklogo.com.png" alt="Shopee Logo PNG Vector" data-lazy-src="
            <img src="https://seeklogo.com/images/S/shopee-logo-065D1ADCB9-seeklogo.com.png"  data-ll-status="loaded" class="entered lazyloaded">
            <noscript><img width="162" height="50"  src="https://seeklogo.com/images/S/shopee-logo-065D1ADCB9-seeklogo.com.png"  alt="Tech360"/></noscript></a>
		  		</div>
       
        <div class="search_header">
        <form role="search" method="get" class="woocommerce-product-search" action="">
	    <input type="search" id="woocommerce-product-search-field" class="search-field" placeholder="Tìm kiếm sản phẩm" value="" name="s" title="Search for:">
	    <button type="submit" class="btn btn-default" id="searchsubmit">Tìm kiếm</button>
	    <input type="hidden" name="post_type" value="product">
        </form>
        </div>


     <div class="cart_header woocommerce">
  <div class="popup_cart_hover">
    <a class="cart-contents" href="#" title="Hiển thị giỏ hàng">
      <i class="fas fa-shopping-cart"></i> <!-- Sử dụng biểu tượng giỏ hàng từ thư viện FontAwesome -->
      <span>Giỏ hàng của bạn</span>
      <small class="empty-message">Chưa có sản phẩm trong giỏ hàng.</small>

    </a>
  </div>
</div>

            <div class="navbar1">
                <div class="container">
                    <div class="vertical-menu">
  <a href="#" class="active">Home</a>
  <a href="#">Link 1</a>
  <a href="#">Link 2</a>
  <a href="#">Link 3</a>
  <a href="#">Link 4</a>
</div>
                </div>
            </div>
            </header>
    

            <script>JavaScript.js</script>
    </form>
</body>
</html>
