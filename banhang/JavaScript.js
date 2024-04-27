// Lắng nghe sự kiện khi người dùng di chuột vào biểu tượng giỏ hàng
document.querySelector('.cart-contents').addEventListener('mouseenter', function () {
    // Hiển thị nội dung "Chưa có sản phẩm trong giỏ hàng" khi di chuột vào
    document.querySelector('.empty-message').style.display = 'inline';
});

// Lắng nghe sự kiện khi người dùng di chuột ra khỏi biểu tượng giỏ hàng
document.querySelector('.cart-contents').addEventListener('mouseleave', function () {
    // Ẩn nội dung khi di chuột ra khỏi biểu tượng giỏ hàng
    document.querySelector('.empty-message').style.display = 'none';
});
