# Website Bán Gấu Bearbrick (Beta6s)

Dự án này là một nền tảng bán hàng trực tuyến dành cho người yêu thích sưu tầm Bearbrick. Mục tiêu của dự án là tối ưu hóa quy trình quản lý kho và mang lại trải nghiệm mua sắm tối giản, hiện đại.

## Những điểm nổi bật
* **Hệ thống quản trị trực quan:** Quản lý danh mục sản phẩm thông minh.
* **Theo dõi hành vi người dùng:** Tích hợp logic thống kê lượt mua để xác định các mẫu gấu "Trending", giúp chủ cửa hàng đưa ra quyết định nhập hàng chính xác.

## Công nghệ sử dụng
* **Backend:** PHP & Laravel Framework.
* **Database:** MySQL.
* **Frontend:** HTML5 & Blade Template, CSS3, JavaScript.

## Hướng dẫn chạy dự án
* **Clone dự án:** Mở `CMD` gõ lệnh `git clone https://github.com/KhoaNguyen-IT2K4/Beta6s.git`.
* **Cài đặt thư viên:** `composer install`.
* **Cấu hình:** Copy file `.env.example` thành `.env`.
* **Khởi tạo:**
  * Chạy lệnh `php artisan key:generate` để tạo App Key.
  * Chạy lệnh `php artisan storage:link` để liên kết thư mục ảnh (nếu có).
* **Database:** Import file SQL tại thư mục `database/sql/beta6s.sql` vào MySQL.
* **Chạy:** Gõ lệnh `php artisan serve` và truy cập `http://localhost:8000`.

## Tài khoản Demo
* **Admin:** `admin@example.com` / `123456`.
* **Customer:** `customer1@example.com` / `123456`.

*Đồ án hoàn thành trong khuôn khổ đồ án môn học*
