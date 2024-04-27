<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="banhang.TrangChu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Web Bán Hàng</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
     <link rel="stylesheet" href="slshow11.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css"/>
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

.navbar2{
    position:relative;
    bottom:200px;
    margin-left:32%;
   
  overflow: auto;
}
.fa{
    color:white;
  ;
}
.navbar2 a{
    color:white;

}
.fa-search{
    margin-left:50px;
}
.fa-envelope{
        margin-left:50px;
}

    .slick-prev,
        .slick-next {
            font-size: 24px;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            z-index: 1;
            color: #fff;
            background-color: rgba(0, 0, 0, 0.5);
            width: 40px;
            height: 40px;
            border-radius: 50%;
            text-align: center;
            line-height: 40px;
            cursor: pointer;
        }
        .slick-prev {
            left: 10px;
        }
        .slick-next {
            right: 10px;
        }
         /* Di chuyển nút vào bên trong slideshow */
        
        .slick-prev:before,
        .slick-next:before {
            content: ''; /* Xóa nội dung hiển thị mặc định */
        }
        .slick-prev {
            left: 0;
        }
        .slick-next {
            right: 190px;
        }
        .slideshow{
           margin-left:460px;
           position:relative;
           top:20px;
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
                        
  <a href="#" class="active">Menu</a>
  <a href="#">Link 1</a>
  <a href="#">Link 2</a>
  <a href="#">Link 3</a>
  <a href="#">Link 4</a>

</div>
                    <div class="navbar2">
                                          <a class="active1" href="#"><i class="fa fa-fw fa-home"></i> Trang Chủ</a> 
<a href="#"><i class="fa fa-fw fa-search"></i> Liên Hệ</a> 
<a href="#"><i class="fa fa-fw fa-envelope"></i> Tin Tức</a> 

                    </div>
                </div>
            </div>
            </header>
    
  
        <div class="slideshow">
        <div><img src="anh/vn-50009109-3b4844af326ff3b9c1e1793d0dbda9f3_xxhdpi.jpg"  alt="Slide 1"></div>
        <div><img src="anh/vn-50009109-3b4844af326ff3b9c1e1793d0dbda9f3_xxhdpi.jpg" alt="Slide 2"></div>
        <div><img src="anh/vn-50009109-3b4844af326ff3b9c1e1793d0dbda9f3_xxhdpi.jpg" alt="Slide 3"></div>
    </div>

    <!-- Thêm JavaScript của Slick Carousel -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>
    <script>
        $(document).ready(function () {
            $('.slideshow').slick({
                arrows: true, // Hiển thị nút điều hướng
                prevArrow: '<button type="button" class="slick-prev">&#10094;</button>', // HTML cho nút prev
                nextArrow: '<button type="button" class="slick-next">&#10095;</button>' // HTML cho nút next
            });
        });
    </script>
            <script>JavaScript.js</script>
    </form>
</body>
</html>
