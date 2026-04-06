-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 06, 2026 lúc 07:55 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `beta6s`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luans`
--

CREATE TABLE `binh_luans` (
  `MaBL` int(10) UNSIGNED NOT NULL,
  `MaKH` int(10) UNSIGNED NOT NULL,
  `MaSP` int(10) UNSIGNED NOT NULL,
  `DanhGia` int(11) NOT NULL,
  `NoiDung` text NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `MaHD` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `binh_luans`
--

INSERT INTO `binh_luans` (`MaBL`, `MaKH`, `MaSP`, `DanhGia`, `NoiDung`, `TrangThai`, `created_at`, `updated_at`, `deleted_at`, `MaHD`) VALUES
(16, 3, 1, 5, 'Sản phẩm rất đẹp, chất lượng tốt!', 0, '2025-01-10 02:40:47', NULL, NULL, 5),
(17, 3, 2, 4, 'Gói hàng kỹ, ok.', 1, '2025-01-10 02:40:47', NULL, NULL, 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogs`
--

CREATE TABLE `blogs` (
  `MaBV` int(10) UNSIGNED NOT NULL,
  `TacGia` varchar(255) NOT NULL,
  `TieuDe` varchar(255) NOT NULL,
  `Slug` varchar(255) NOT NULL,
  `NoiDung` text NOT NULL,
  `HinhAnh` varchar(255) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogs`
--

INSERT INTO `blogs` (`MaBV`, `TacGia`, `TieuDe`, `Slug`, `NoiDung`, `HinhAnh`, `TrangThai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'BEARBRICK – Biểu tượng đẳng cấp của giới thượng lưu', 'BEARBRICK', ' <figcaption class=\"blog_content\">\r\n                                    <div class=\"post_content\">\r\n                                        <br />\r\n                                        <p><b>Trong những năm gần đây, giới thượng lưu đã có thêm một thú chơi xa xỉ mới –\r\n                                                đó chính là Bearbrick. Với thiết kế đơn giản nhưng đầy nghệ thuật, nó đã trở\r\n                                                thành một biểu tượng của thế giới đồ chơi và thời trang đương đại. Hãy cùng\r\n                                                khám\r\n                                                phá thêm về thế giới Bearbrick và bí mật đằng sau sức hút làm xiêu lòng cả\r\n                                                giới\r\n                                                siêu giàu.</b></p>\r\n                                        <br />\r\n                                        <h2>Tatsuhiko Akashi – người đã thay đổi cách nhìn của thế giới về đồ chơi</h2>\r\n                                        <div class=\"blog_thumb_detail\">\r\n                                            <a href=\"#\"><img src=\"{{ asset(\'assets/img/blog/blog1.png\') }}\"\r\n                                                    alt=\"portfolio image\" /></a>\r\n                                            <span>Tatsuhiko Akashi – người sáng lập công ty Medicom Toy tại Nhật Bản</span>\r\n                                        </div>\r\n                                        <p><b>Bearbrick</b> (còn được biết dưới dạng logo <b>Be@rbrick</b>) được tạo ra bởi\r\n                                            Tatsuhiko Akashi – người sáng lập công ty Medicom Toy tại Nhật Bản vào năm 1996.\r\n                                            Trước đó,\r\n                                            ông đã từng làm công việc văn phòng, trong lĩnh vực sản xuất máy tính. Dù công\r\n                                            việc mang lại thu nhập cao, nhưng ông vẫn cảm thấy chán nản bởi sự đơn điệu và\r\n                                            lặp đi lặp lại hàng ngày.</p>\r\n\r\n                                        <p>Khi đi dạo trong khu phố Shibuya của Tokyo, ông đã bị cuốn hút vào cửa hàng bán\r\n                                            đồ chơi của ZAAP. Thương hiệu đồ chơi Mỹ đã truyền cảm hứng cho ông dùng toàn bộ\r\n                                            số tiền mình có để khởi nghiệp. </p>\r\n\r\n                                        <br />\r\n                                        <h2>Kubrick – nguồn cảm hứng của Bearbrick</h2>\r\n                                        <p>Mục tiêu của công ty là tạo ra các tác phẩm có thể sưu tập, chứ không chỉ là\r\n                                            những đồ chơi thông thường. Đồng thời hãng cũng bán với số lượng có hạn, mẫu mã\r\n                                            độc nhất nên giá thành rất cao. Tuy nhiên, nhờ chiến lược kinh doanh này, đồ\r\n                                            chơi của Medicom Toy vẫn là sản phẩm hiếm và được rất nhiều người săn đón.</p>\r\n                                        <p>Nổi bật nhất là Kubrick – sản phẩm được Tatsuhiko tạo ra để vinh danh Stanley\r\n                                            Kubrick – một nhà làm phim kinh dị nổi tiếng. Cái tên Kubrick là sự kết hợp giữa\r\n                                            “Kyu” – số 9 trong tiếng Nhật và “brick” trong Tiếng Anh. Số 9 ở đây để chỉ số\r\n                                            bộ phận cơ thể được sử dụng trong mô hình Kubrick tiêu chuẩn bao gồm đầu, thân,\r\n                                            hông, hai cánh tay, hai bàn tay và hai chân.</p>\r\n                                        <p>Sau lần phát hành đầu tiên vào năm 2000, Medicom đã cho ra hàng ngàn Kubrick\r\n                                            phiên bản mới với đa dạng màu sắc và kiểu dáng. Những bộ phim kinh điển như “The\r\n                                            Nightmare Before Christmas” hay “Amélie”, cho đến các bộ truyện tranh Nhật Bản\r\n                                            và Mỹ, đều truyền cảm hứng cho Tatsuhiko.</p>\r\n\r\n                                        <br />\r\n                                        <h2>Bearbrick – Một bước đột phá trong lịch sử của thế giới đồ chơi</h2>\r\n                                        <p>Nhờ thành công và độ phủ sóng dày đặc của mô hình Kubrick, Akashi được ban tổ\r\n                                            chức của World Character Convention (Hội nghị Nhân vật Quốc tế) ở Tokyo tìm đến\r\n                                            và đặt hàng với số lượng lớn để làm quà tặng những người tham dự triển lãm.</p>\r\n                                        <p><span style=\"font-weight: 400\">Vào ngày 27 tháng 5 năm 2001, Bearbrick ra đời\r\n                                                dưới dạng quà tặng đính kèm. Đây chính là một biến thể của Kubrick “bụng\r\n                                                phệ”, với thiết kế dạng Lego cùng với cái “đầu gấu”.</span></p>\r\n                                        <p>\r\n                                        <div class=\"blog_thumb_detail\">\r\n                                            <img src=\"{{ asset(\'assets/img/blog/blog2.png\') }}\" alt=\"portfolio image\" />\r\n                                        </div>\r\n                                        </p>\r\n                                        <p><span style=\"font-weight: 400\">Nhờ sự hưởng ứng của nhiều ngôi sao nổi tiếng trên\r\n                                                toàn thế giới, cùng trải nghiệm thú vị mà nó mang lại, Bearbrick đã nhanh\r\n                                                chóng gây sốt và trở thành một món đồ chơi có giá trị cao được giới nhà giàu\r\n                                                săn đón.</span></p>\r\n\r\n                                        <br />\r\n                                        <h2><span id=\"Cac_dac_diem_cua_mot_mo_hinh_gau_bung_phe\"><span\r\n                                                    style=\"font-weight: 400\">Các đặc điểm của một mô hình gấu “bụng\r\n                                                    phệ”</span></span></h2>\r\n                                        <p><span style=\"font-weight: 400\">Với hơn 20 năm hình thành và phát triển, Bearbrick\r\n                                                đã dần trở thành một nhân vật có tính biểu tượng trong lĩnh vực thời trang\r\n                                                cũng như nghệ thuật.</span></p>\r\n                                        <br />\r\n                                        <h3><span id=\"Ve_cau_tao\"><span style=\"font-weight: 400\">Về cấu tạo</span></span>\r\n                                        </h3>\r\n                                        <p>\r\n                                        <div class=\"blog_thumb_detail\">\r\n                                            <img src=\"{{ asset(\'assets/img/blog/blog3.png\') }}\" alt=\"portfolio image\" />\r\n                                            <span>Bearbrick cho phép tùy biến xoay chuyển các khớp, để tạo ra những tư thế\r\n                                                đa dạng và đẹp mắt</span>\r\n                                        </div>\r\n                                        </p>\r\n                                        <p><span style=\"font-weight: 400\">Thiết kế của chú gấu này được xây dựng bởi một cấu\r\n                                                trúc đơn giản với phần đầu gấu và phần thân vẫn gồm 9 bộ phận như Kubrick.\r\n                                                Nhưng ở phiên bản mới này, Bearbrick cho phép tùy biến xoay chuyển các khớp,\r\n                                                để tạo ra những tư thế đa dạng và đẹp mắt, tùy vào sự sáng tạo của người\r\n                                                chơi.</span></p>\r\n\r\n                                        <br />\r\n                                        <h3><span id=\"Ve_chat_lieu\"><span style=\"font-weight: 400\">Về chất\r\n                                                    liệu</span></span></h3>\r\n\r\n                                        <p><span style=\"font-weight: 400\">Chất liệu để tạo ra mô hình này rất đa dạng và\r\n                                                thường được thiết kế riêng cho từng phiên bản. Tuy nhiên, gỗ, nhựa tổng hợp,\r\n                                                nhựa phát sáng hay kim loại là những chất liệu được sử dụng phổ biến. Sứ,\r\n                                                vàng hay thậm chí bạch kim cũng được đưa vào sử dụng cho các phiên bản đặc\r\n                                                biệt và “siêu giới hạn”. Mỗi phiên bản đều có một tính chất và vẻ ngoài\r\n                                                riêng, phù hợp với sở thích và nhu cầu của người sử dụng.</span></p>\r\n\r\n                                        <br />\r\n                                        <h2><span id=\"Tai_sao_Bearbrick_lai_dat_nhu_vay\"><span style=\"font-weight: 400\">Tại\r\n                                                    sao Bearbrick lại đắt như vậy?</span></span></h2>\r\n                                        <p><span style=\"font-weight: 400\">Không ai có thể chỉ ra chính xác yếu tố nào khiến\r\n                                                Bearbrick trở nên phổ biến đến thế, nhưng có hai nguyên nhân thường được\r\n                                                nhắc tới là sự độc đáo trong thiết kế và số lượng giới hạn của từng mẫu sản\r\n                                                phẩm.</span></p>\r\n\r\n                                        <p>\r\n                                        <div class=\"blog_thumb_detail\">\r\n                                            <img src=\"{{ asset(\'assets/img/blog/blog4.png\') }}\" alt=\"portfolio image\" />\r\n                                        </div>\r\n                                        </p>\r\n                                        <p><span style=\"font-weight: 400\">Mỗi phiên bản đều có một bộ trang phục và chủ đề\r\n                                                khác nhau, người chơi có thể thay đổi trang phục cho chú gấu của mình theo ý\r\n                                                thích. Từ đó, nó không chỉ là một món đồ chơi hay vật phẩm sưu tập, mà còn\r\n                                                là nguồn cảm hứng để người chơi thể hiện sự sáng tạo và cá tính của bản\r\n                                                thân.</span></p>\r\n                                        <p><span style=\"font-weight: 400\">Giới trẻ còn chứng kiến nhiều phiên bản siêu giới\r\n                                                hạn do những nghệ sĩ nổi tiếng thiết kế. Đôi khi chỉ có 1 bản duy nhất được\r\n                                                sản xuất và phát hành, thường được tung ra vào các dịp lễ kỷ niệm hoặc sự\r\n                                                kiện đặc biệt. </span><span style=\"font-weight: 400\">Chính vì thế đây có thể\r\n                                                coi là thứ khẳng định độ chịu chơi, giàu có của nhiều người.</span></p>\r\n\r\n                                    </div>\r\n                                </figcaption>', 'b11.png', 1, '2024-12-23 06:25:12', NULL, NULL),
(2, 'admin', 'NIKE X UNHCR 2006 WORLD CUP CHARITY BEARBRICK: PORTUGAL MODEL', '', '                                <figcaption class=\"blog_content\">\r\n                                    <div class=\"post_content\">\r\n                                        <br />\r\n                                        <div class=\"blog_thumb_detail\">\r\n                                            <img src=\"{{ asset(\'assets/img/blog/2.png\') }}\" alt=\"portfolio image\" />\r\n                                        </div>\r\n                                        <p><b>Ngày phát hành: 01/07/2006 – Giá bán: $10.000 USD</b></p>\r\n                                        <br />\r\n\r\n\r\n                                        <p>Với mục đích hỗ trợ ninemillion.org – một chương trình từ thiện nhằm hỗ trợ giáo\r\n                                            dục cho những trẻ em tị nạn, UNHCR (United Nations High Commission for Refugees)\r\n                                            đã đấu giá chú Bearbrick trong chiếc áo đấu của đội tuyển Bồ Đào Nha mà Nike đã\r\n                                            tài trợ trong World Cup 2006. Bên cạnh Bồ Đào Nha, buổi đấu giá cũng bao gồm\r\n                                            những chú Bearbrick mặc áo những đội tuyển khác như Brazil, Úc, Croatia, Hà Lan,\r\n                                            Mexico, Hàn Quốc và Hoa Kỳ.</p>\r\n\r\n                                    </div>\r\n                                </figcaption>', '2.png', 1, '2024-12-23 06:09:25', NULL, NULL),
(3, 'admin', 'SWAROVSKI X COLETTE “WHITE CRYSTAL CHRISTMAS” 1000% BEARBRICK', '', '<figcaption class=\"blog_content\">\r\n                                    <div class=\"post_content\">\r\n                                        <br />\r\n                                        <div class=\"blog_thumb_detail\">\r\n                                            <img src=\"{{ asset(\'assets/img/blog/3.png\') }}\" alt=\"portfolio image\" />\r\n                                        </div>\r\n                                        <p><b>Ngày phát hành: 07/12/2009 – Giá: $16,954 USD</b></p>\r\n                                        <br />\r\n\r\n\r\n                                        <p>Là một trong những phiên bản Bearbrick hợp tác cùng colette, chú gấu lần này là một phần của sự kiện “White Crystal Christmas” của Colette, và sự đặc biệt của chúng chắc chắn phải kể đến chiếc áo pha lê Swarovski đầy sang chảnh. Ngoài ra, phiên bản 1000% còn đi kèm với phiên bản 400%. Giá retail của chú gấu này rơi vào khoảng $17,000 USD.</p>\r\n\r\n                                    </div>\r\n                                </figcaption>', '3.png', 1, '2024-12-23 06:09:25', NULL, NULL),
(4, 'admin', 'CHANEL (COCO CHANEL) 1000% BEARBRICK', '', '<figcaption class=\"blog_content\">\r\n                                    <div class=\"post_content\">\r\n                                        <br />\r\n                                        <div class=\"blog_thumb_detail\">\r\n                                            <img src=\"{{ asset(\'assets/img/blog/4.png\') }}\" alt=\"portfolio image\" />\r\n                                        </div>\r\n                                        <p><b>Ngày phát hành: 2006 – Giá bán: $28.000 USD</b></p>\r\n                                        <br />\r\n\r\n\r\n                                        <p>Là một phần của sự kiện từ thiện “Love Is Big, Love is Bearbrick”, mẫu đồ chơi được thiết kế bởi Chanel là một trong những sản phẩm được ra giá cao nhất tại buổi đấu giá hôm ấy. Buổi đấu giá được tổ chức nhằm ủng hộ quỹ Hong Kong Blood Cancer Foundation. Bên cạnh thiết kế từ Chanel, ngày hôm ấy cũng góp mặt những chú Bearbrick từ Moschino, Hermès và Paul Smith. Món đồ chơi mang thiết kế lấy cảm hứng từ nhà sáng lập Chanel là Coco Chanel, với bộ outfit Chanel cổ điển. Sau buổi đấu giá, phiên bản này được phát hành chỉ với số lượng 1000 tại các cửa hàng Chanel trong một khoảng thời gian ngắn. Và với độ hiếm cùng với mối liên hệ với thời trang cao cấp, không dễ gì để chúng ta có thể chạm tay vào những chú gấu này.</p>\r\n\r\n                                    </div>\r\n                                </figcaption>\r\n', '4.png', 1, '2024-12-23 06:25:31', NULL, NULL),
(5, 'admin', 'THE BLACK SENSE MARKET X THE CONTEMPORARY FIX 1000% STAINLESS STEEL BEARBRICK', '', '<figcaption class=\"blog_content\">\r\n                                    <div class=\"post_content\">\r\n                                        <br />\r\n                                        <div class=\"blog_thumb_detail\">\r\n                                            <img src=\"{{ asset(\'assets/img/blog/5.png\') }}\" alt=\"portfolio image\" />\r\n                                        </div>\r\n                                        <p><b>Ngày phát hành: 24/10/2009 – Giá bán: $43.613 USD</b></p>\r\n                                        <br />\r\n\r\n\r\n                                        <p>Được thiết kế bởi The Black Sense Market và phát hành độc quyền tại The Contemporary Fix, phiên bản Bearbrick này được làm từ chất liệu bạc không rỉ nguyên chất và nặng đến gần 14kg. Bên cạnh đó, phiên bản này được tạo ra nhằm kỉ niệm 9 năm hoạt động của tạp chí Sense (Nhật Bản).</p>\r\n\r\n                                    </div>\r\n                                </figcaption>', '5.png', 1, '2024-12-23 06:21:06', NULL, NULL),
(6, 'admin', 'YUE MINJUN “QIU TU” 1000% BEARBRICK', '', '<figcaption class=\"blog_content\">\r\n                                    <div class=\"post_content\">\r\n                                        <br />\r\n                                        <div class=\"blog_thumb_detail\">\r\n                                            <img src=\"{{ asset(\'assets/img/blog/5.png\') }}\" alt=\"portfolio image\" />\r\n                                        </div>\r\n                                        <p><b>Ngày phát hành: 25/04/2008 – Giá bán: $189.675 USD</b></p>\r\n                                        <br />\r\n\r\n\r\n                                        <p>Chú gấu này chưa bao giờ được phát hành đến với công chúng mà chỉ xuất hiện tại\r\n                                            buổi triển lãm những tác phẩm của các nghệ sĩ Trung Quốc, diễn ra vào năm 2008\r\n                                            tại Bắc Kinh. Chú Bearbrick giá đắt nhất thế giới này được thiết kế bởi Yue\r\n                                            Minjun, chú gấu này được gắn lên nụ cười, thứ tạo nên sự khác biệt trong các tác\r\n                                            phẩm của Minjun. Phiên bản này đã được bán tại một buổi đấu giá với giá tiền lên\r\n                                            đến gần $190,000 USD, biến cho nó trở thành mẫu Bearbrick 1000% đắt nhất hiện\r\n                                            tại.</p>\r\n\r\n                                        <p>Yue Minjun “Qiu Tu” chính là chú gấu Bearbrick hiếm nhất thế giới, cũng chính là\r\n                                            chú Bearbrick đắt nhất thế giới.</p>\r\n\r\n                                    </div>\r\n                                </figcaption>', '6.png', 1, '2024-12-23 06:21:06', NULL, NULL),
(7, 'admin', 'Daniel Arsham x Snarkitecture 1000% Bearbrick', '', '<figcaption class=\"blog_content\">\r\n                                    <div class=\"post_content\">\r\n                                        <br />\r\n                                        <div class=\"blog_thumb_detail\">\r\n                                            <img src=\"{{ asset(\'assets/img/blog/7.png\') }}\" alt=\"portfolio image\" />\r\n                                        </div>\r\n                                        <p><b>Năm sản xuất : 2019 – Giá bán: $7,211</b></p>\r\n                                        <br />\r\n\r\n\r\n                                        <p>Bearbrick ​này được thực hiện bởi Daniel Arsham, một nghệ nhân nổi tiếng tại Mỹ\r\n                                            và đã gây được sự chú ý của các nghệ sĩ cùng lĩnh vực cũng như những người đam\r\n                                            mê yêu thích Bearbrick. Theo thông tin từ Medicom, chỉ có 250 chú gấu bông trong\r\n                                            số này được sản xuất vào cuối năm và cơ quan sáng tạo BLACKRAINBOW đã xuất bản\r\n                                            chúng.\r\n\r\n                                            Mặc dù đây là một thiết kế hình gấu đơn giản, nhưng nó đã được bán lại với giá\r\n                                            rất cao trên StockX một cách đáng ngạc nhiên so với một số tác phẩm điêu khắc\r\n                                            “Future Relic” của Arsham, – hầu hết là các tác phẩm điêu khắc thạch cao phiên\r\n                                            bản giới hạn của anh.</p>\r\n\r\n                                    </div>\r\n                                </figcaption>', '7.png', 1, '2024-12-23 06:21:06', NULL, NULL),
(8, 'admin', 'Mastermind Japan 1000% Bearbrick', '', '<figcaption class=\"blog_content\">\r\n                                    <div class=\"post_content\">\r\n                                        <br />\r\n                                        <div class=\"blog_thumb_detail\">\r\n                                            <img src=\"{{ asset(\'assets/img/blog/8.png\') }}\" alt=\"portfolio image\" />\r\n                                        </div>\r\n                                        <p><b>Năm sản xuất : 2019 – Giá bán: $2,830</b></p>\r\n                                        <br />\r\n\r\n\r\n                                        <p>Thương hiệu Streetwear nổi tiếng của Nhật Bản Mastermind Japan đã nhiều lần hợp\r\n                                            tác với Medicom để sản xuất Bearbrick. Vì vậy, không có gì ngạc nhiên khi chúng\r\n                                            ta có thể tìm thấy một trong 10 mẫu Bearbricks đắt nhất được rao bán gần đây tại\r\n                                            StockX có một phiên bản dưới sự hợp tác của Mastermind Japan vào năm 2019.\r\n\r\n                                            Sự hợp tác đầu tiên đưa thương hiệu Mastermind Japan trở nên lớn hơn và phổ biến\r\n                                            hơn trên thế giới là mô hình Bearbrick đen với hình ảnh “đầu lâu và xương chéo”,\r\n                                            biểu tượng thương hiệu với các chi tiết màu vàng óng ánh. Bearbrick này có vẻ\r\n                                            ngoài sang trọng và mang vibe OVO.</p>\r\n\r\n                                    </div>\r\n                                </figcaption>', '8.png', 1, '2024-12-23 06:21:06', NULL, NULL),
(9, 'admin', 'Karimoku 1000% Bearbrick', '', '                                <figcaption class=\"blog_content\">\r\n                                    <div class=\"post_content\">\r\n                                        <br />\r\n                                        <div class=\"blog_thumb_detail\">\r\n                                            <img src=\"{{ asset(\'assets/img/blog/9.png\') }}\" alt=\"portfolio image\" />\r\n                                        </div>\r\n                                        <p><b>Năm sản xuất : 2018 – Giá bán: $13,000</b></p>\r\n                                        <br />\r\n\r\n\r\n                                        <p>Karimoku là công ty đồ gỗ nội thất nổi tiếng của Nhật Bản đã tồn tại được 80 năm.\r\n                                            Medicom thường xuyên làm việc với Karimoku để làm đồ chơi thủ công bằng gỗ. Một\r\n                                            trong những collab Bearbrick x Karimoku được tìm kiếm nhiều nhất là Bearbrick\r\n                                            1000% bằng gỗ đầu tiên đầu tiên.\r\n\r\n                                            Bearbrick 1000% được làm hoàn toàn bằng quả óc chó, được làm thủ công tại Nhật\r\n                                            Bản và chỉ được làm theo đơn đặt hàng vì mỗi Bearbrick 1000% bằng gỗ này đòi hỏi\r\n                                            sự cẩn thận và tỉ mỉ cao. Vì vậy chúng rất đắt tiền – một chú Baby Milo x\r\n                                            Karimoku Bearbrick 11 inch và 400 inch đã được phát hành và được bán với giá\r\n                                            2.000 đô la vào năm 2018.Theo StockX, 1000% Karimoku bearbrick đã được bán với\r\n                                            giá 13.000 đô la. Điều đáng ngạc nhiên vì giá bán lẻ thấp nhất cho của Bearbrick\r\n                                            1000% này là 40.000 USD.</p>\r\n\r\n                                    </div>\r\n                                </figcaption>', '9.png', 1, '2024-12-23 06:21:06', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_hoa_dons`
--

CREATE TABLE `chi_tiet_hoa_dons` (
  `ID` int(10) UNSIGNED NOT NULL,
  `MaHD` int(10) UNSIGNED NOT NULL,
  `MaSP` int(10) UNSIGNED NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_hoa_dons`
--

INSERT INTO `chi_tiet_hoa_dons` (`ID`, `MaHD`, `MaSP`, `SoLuong`, `DonGia`) VALUES
(4, 5, 1, 2, 131990000.00),
(5, 5, 2, 1, 49790000.00),
(6, 6, 1, 1, 131990000.00),
(7, 7, 1, 2, 131990000.00),
(8, 9, 1, 1, 131990000.00);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_phieu_nhaps`
--

CREATE TABLE `chi_tiet_phieu_nhaps` (
  `ID` int(10) UNSIGNED NOT NULL,
  `MaPN` int(10) UNSIGNED NOT NULL,
  `MaSP` int(10) UNSIGNED NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` decimal(18,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `gio_hangs`
--

CREATE TABLE `gio_hangs` (
  `id` int(10) UNSIGNED NOT NULL,
  `MaTK` int(10) UNSIGNED NOT NULL,
  `MaSP` int(10) UNSIGNED NOT NULL,
  `soLuong` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_dons`
--

CREATE TABLE `hoa_dons` (
  `MaHD` int(10) UNSIGNED NOT NULL,
  `MaKH` int(10) UNSIGNED NOT NULL,
  `ThanhToan` int(10) UNSIGNED NOT NULL,
  `TongTien` decimal(18,2) NOT NULL,
  `GhiChu` varchar(255) NOT NULL,
  `TrangThaiThanhToan` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hoa_dons`
--

INSERT INTO `hoa_dons` (`MaHD`, `MaKH`, `ThanhToan`, `TongTien`, `GhiChu`, `TrangThaiThanhToan`, `TrangThai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 3, 2, 313770000.00, 'Hóa đơn thanh toán qua thẻ.', 1, 0, '2025-01-07 12:34:49', '2025-01-07 10:22:16', NULL),
(6, 2, 1, 131990000.00, 'Hóa đơn thanh toán qua tiền mặt.', 1, 2, '2025-01-07 12:34:49', '2025-01-07 09:58:10', NULL),
(7, 2, 1, 263980000.00, 'Hóa đơn thanh toán qua thẻ', 0, 0, '2025-01-12 23:59:36', '2025-01-12 23:59:36', NULL),
(8, 2, 2, 0.00, 'Hóa đơn thanh toán qua tiền mặt', 0, 0, '2025-01-13 00:00:05', '2025-01-13 00:00:05', NULL),
(9, 2, 2, 131990000.00, 'Hóa đơn thanh toán qua thẻ', 0, 0, '2025-01-13 00:14:05', '2025-01-13 00:14:05', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `jobs`
--

INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(1, 'default', '{\"uuid\":\"bcd03ee1-6594-4aa8-9c68-a5f8cb8a7890\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736344638, 1736344638),
(2, 'default', '{\"uuid\":\"e0cec2b6-19c5-4e70-9b27-667018285acb\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736344768, 1736344768),
(3, 'default', '{\"uuid\":\"26524c2c-d12a-4698-9aba-ae76c9fff278\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736345466, 1736345466),
(4, 'default', '{\"uuid\":\"8f1fc485-e5d4-4819-8be3-3cc946656f7a\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736345480, 1736345480),
(5, 'default', '{\"uuid\":\"ee842226-60bd-457c-95ab-dcd1678663aa\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736345494, 1736345494),
(6, 'default', '{\"uuid\":\"135824f0-24c6-4470-ba6e-467532ecafe7\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736345583, 1736345583),
(7, 'default', '{\"uuid\":\"b46da21f-0585-439c-ab93-5f573d726140\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736345746, 1736345746),
(8, 'default', '{\"uuid\":\"15621b44-c759-40f5-8cb8-2fa036b1ed18\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736345907, 1736345907),
(9, 'default', '{\"uuid\":\"6a49737b-ca17-4ee4-8a24-11d0386511da\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736345929, 1736345929),
(10, 'default', '{\"uuid\":\"2422d496-e330-47db-aef9-374867afbdd0\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736346237, 1736346237),
(11, 'default', '{\"uuid\":\"67efecac-7367-445f-afe8-fa50a36bea41\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736346256, 1736346256),
(12, 'default', '{\"uuid\":\"88496953-d7b4-4d5f-a4ca-7ccf27bd7156\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736346367, 1736346367),
(13, 'default', '{\"uuid\":\"362705a1-62ce-444b-87ad-50c7d957b4e4\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736346371, 1736346371),
(14, 'default', '{\"uuid\":\"359e9fc6-2a33-4319-b3da-26d4c32172c5\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736352092, 1736352092),
(15, 'default', '{\"uuid\":\"34113b52-7909-4d2a-88a9-c976676b1f5a\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736353864, 1736353864),
(16, 'default', '{\"uuid\":\"3dd9b5ae-8dce-4bab-a3a2-5c5120e883b9\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736353902, 1736353902),
(17, 'default', '{\"uuid\":\"5b96f26f-7a09-4bff-8085-51045b34fbdd\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736353923, 1736353923),
(18, 'default', '{\"uuid\":\"dc3114b3-499a-4122-93fa-7b4f3347765f\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736353989, 1736353989),
(19, 'default', '{\"uuid\":\"cfe9c11b-4fff-4662-9b93-f446cd79c7d8\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736353999, 1736353999),
(20, 'default', '{\"uuid\":\"c9136822-0c13-4165-8ff1-1dace5575a57\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736354004, 1736354004),
(21, 'default', '{\"uuid\":\"0a70d592-ae2a-427a-ae85-3c32de538518\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736354071, 1736354071),
(22, 'default', '{\"uuid\":\"7a99146c-3bb6-415f-8662-211718da8a5c\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736354435, 1736354435),
(23, 'default', '{\"uuid\":\"705dad5e-7801-44d0-89a4-63fa4cc36e18\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736354459, 1736354459),
(24, 'default', '{\"uuid\":\"cdc8c0ba-7f03-4f6e-87c5-292b9ed30cba\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736354519, 1736354519),
(25, 'default', '{\"uuid\":\"419d9b4b-8438-40fc-bfde-9e6f09d7c067\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736355002, 1736355002),
(26, 'default', '{\"uuid\":\"2dfc5a7f-b6e8-4840-9edf-9be2feec0399\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736355007, 1736355007),
(27, 'default', '{\"uuid\":\"540f5991-00e0-4bda-b302-f3f54af390ef\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736355045, 1736355045),
(28, 'default', '{\"uuid\":\"16d3870d-6a12-4437-9344-1e2a07b3e691\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736355088, 1736355088),
(29, 'default', '{\"uuid\":\"2ecfc9a0-e1d9-403e-bb92-e253b1773f28\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736355230, 1736355230),
(30, 'default', '{\"uuid\":\"77373d01-c348-4479-be66-6ef67f1c8f1d\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736355246, 1736355246),
(31, 'default', '{\"uuid\":\"36c0d117-97d3-480f-ab3b-92ebb3c1b56e\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736355440, 1736355440),
(32, 'default', '{\"uuid\":\"cae641c4-2c47-4d4f-aea1-e6807acc4564\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736355652, 1736355652),
(33, 'default', '{\"uuid\":\"bee311e4-95c1-4a27-ae29-cdc6f0b39de2\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736355700, 1736355700),
(34, 'default', '{\"uuid\":\"8fef090f-a869-4fb5-93db-71b22de1698e\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736355707, 1736355707),
(35, 'default', '{\"uuid\":\"a46f6e99-a54c-4b2f-977e-34e05a13f4fa\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736356295, 1736356295),
(36, 'default', '{\"uuid\":\"0dc4430d-435a-44e6-a286-6fd5cd99a5b7\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736356303, 1736356303),
(37, 'default', '{\"uuid\":\"24af2403-08a8-469d-ac6a-086923dbcd40\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736414626, 1736414626),
(38, 'default', '{\"uuid\":\"9f91e48c-14e2-4466-a12b-19da12e0b5d5\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736414628, 1736414628),
(39, 'default', '{\"uuid\":\"b8328d03-cbf5-437c-aa03-973867b7eeeb\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736414640, 1736414640),
(40, 'default', '{\"uuid\":\"9b43b7e1-2e8e-4440-bce7-1573fd8681db\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736414645, 1736414645),
(41, 'default', '{\"uuid\":\"53dd107a-8183-47d5-8963-5a614f67ae2b\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736414726, 1736414726),
(42, 'default', '{\"uuid\":\"e3f8aa6a-ee93-46be-956d-b0c1555d4dbd\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736414746, 1736414746),
(43, 'default', '{\"uuid\":\"9679c349-8f1a-4275-970d-235afc75a740\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736414944, 1736414944);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(44, 'default', '{\"uuid\":\"b8ecdb02-5bba-490a-bc6a-79149dd3da25\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736414961, 1736414961),
(45, 'default', '{\"uuid\":\"7b8440bc-b336-46bc-8c79-b88cdb815dcf\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736415069, 1736415069),
(46, 'default', '{\"uuid\":\"39c44700-d947-431a-abbd-8419ffada485\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736415101, 1736415101),
(47, 'default', '{\"uuid\":\"f1b5af22-b5aa-433a-b7c6-f681af994efa\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736415261, 1736415261),
(48, 'default', '{\"uuid\":\"007c2114-c14e-4656-9f89-b724a6a65b4a\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736415498, 1736415498),
(49, 'default', '{\"uuid\":\"4eef64aa-dd4b-43e7-9fb0-3be6d6f935ed\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736415698, 1736415698),
(50, 'default', '{\"uuid\":\"b9210315-9de6-4a4f-9e55-decbdcfcbb84\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736415765, 1736415765),
(51, 'default', '{\"uuid\":\"5f92dfb6-99f1-4eb3-a424-63deee1b0dc9\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736415811, 1736415811),
(52, 'default', '{\"uuid\":\"2a16a9e6-d5c0-42a9-aaf2-33a70f50e0fa\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736415987, 1736415987),
(53, 'default', '{\"uuid\":\"f9300605-1a2b-40e6-ab9c-6abfbcf4f7f4\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736416686, 1736416686),
(54, 'default', '{\"uuid\":\"13bb0f32-ad1c-40b2-bac4-80104bad11e5\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736416717, 1736416717),
(55, 'default', '{\"uuid\":\"f933bf1f-d363-4e2d-8b2e-b8656eb78a1d\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736416787, 1736416787),
(56, 'default', '{\"uuid\":\"0054e9d8-aa46-4de3-9dd8-e799f11a9b26\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736417117, 1736417117),
(57, 'default', '{\"uuid\":\"0f0c2d9c-532d-4fad-946b-9edb28e8febf\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736417445, 1736417445),
(58, 'default', '{\"uuid\":\"42b0b61f-9784-46f5-b1e5-519c971096a7\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736417457, 1736417457),
(59, 'default', '{\"uuid\":\"9528d9a7-8c5f-4639-9ed0-303a7715d7b9\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736417547, 1736417547),
(60, 'default', '{\"uuid\":\"96e00c58-3383-4ca4-82f8-862906a79f39\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736417556, 1736417556),
(61, 'default', '{\"uuid\":\"5527b41e-0723-49cf-8bc3-bbb8527dd6b1\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736417575, 1736417575),
(62, 'default', '{\"uuid\":\"4d15c7a5-7d6c-4419-8db9-9df6fa1e472d\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736418010, 1736418010),
(63, 'default', '{\"uuid\":\"b65f01d8-1ab5-469d-991b-a3ce1d20011b\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736418036, 1736418036),
(64, 'default', '{\"uuid\":\"b9589f6f-aa74-4ded-8ec1-fcf6392bc71f\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736418352, 1736418352),
(65, 'default', '{\"uuid\":\"890301a7-dce1-4f4d-a3f2-62d54652a970\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736418563, 1736418563),
(66, 'default', '{\"uuid\":\"2b3c976f-808f-4f9e-b8aa-c73591ead875\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736418834, 1736418834),
(67, 'default', '{\"uuid\":\"f8c37d2a-6a90-469d-97d9-e0cff5f52380\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736418865, 1736418865),
(68, 'default', '{\"uuid\":\"31667a48-63db-4e57-a493-5b902f8eb6e2\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736419124, 1736419124),
(69, 'default', '{\"uuid\":\"f0301705-faa1-4d2e-b022-024b620e1413\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736420213, 1736420213),
(70, 'default', '{\"uuid\":\"95df6026-ce8c-4ad5-910e-218d139bad45\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736420216, 1736420216),
(71, 'default', '{\"uuid\":\"9f54cca6-6d4b-4155-b7eb-451eab3ad140\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:56;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422095, 1736422095),
(72, 'default', '{\"uuid\":\"4c94133b-4179-4d9a-94e7-83bc3e002f41\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422095, 1736422095),
(73, 'default', '{\"uuid\":\"45e58495-e655-4b2a-8e68-34a055b309f2\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:57;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422104, 1736422104),
(74, 'default', '{\"uuid\":\"2bdacdb1-55ad-4352-b1b8-8e3308647ab5\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422104, 1736422104),
(75, 'default', '{\"uuid\":\"ce803b94-7cc6-4dfd-9989-43b95d467231\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:58;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422128, 1736422128),
(76, 'default', '{\"uuid\":\"aa452870-298c-479d-aff6-8fe92d3e8ec2\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422128, 1736422128),
(77, 'default', '{\"uuid\":\"a234570c-45da-4e1b-adf1-5ca98f2d2227\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:59;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422168, 1736422168),
(78, 'default', '{\"uuid\":\"e6b75744-9026-4272-8387-027394b5b622\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422168, 1736422168),
(79, 'default', '{\"uuid\":\"2039dd0b-0972-477f-a55d-5d9b4f352042\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:60;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422207, 1736422207),
(80, 'default', '{\"uuid\":\"bd791ab3-3925-4c9a-94a8-952399536ebe\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422207, 1736422207),
(81, 'default', '{\"uuid\":\"f354dec3-9cf7-46bf-a3eb-296c67434de4\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:61;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422270, 1736422270),
(82, 'default', '{\"uuid\":\"89477c67-e5eb-48d0-a9ef-d37247c04c74\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422270, 1736422270),
(83, 'default', '{\"uuid\":\"d827fcc0-fcf3-4238-a10d-5938165fd643\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:62;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422482, 1736422482),
(84, 'default', '{\"uuid\":\"4497ac1c-4deb-4e17-9401-53da9ebd408a\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422482, 1736422482),
(85, 'default', '{\"uuid\":\"064d3225-b782-47e5-92b2-b7435b216a10\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:63;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422636, 1736422636),
(86, 'default', '{\"uuid\":\"634fc36d-75ae-4a07-8716-80d3985526f3\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422636, 1736422636),
(87, 'default', '{\"uuid\":\"24905bed-4577-49cc-817b-2191127d42a4\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:64;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422777, 1736422777);
INSERT INTO `jobs` (`id`, `queue`, `payload`, `attempts`, `reserved_at`, `available_at`, `created_at`) VALUES
(88, 'default', '{\"uuid\":\"218fd4fc-a1f7-4d32-96e5-87e10f8a8629\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422777, 1736422777),
(89, 'default', '{\"uuid\":\"2222289c-5daf-47cd-843a-0cf10b7082e5\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:65;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422835, 1736422835),
(90, 'default', '{\"uuid\":\"d037c1a0-b3c1-4e19-a251-b6bde3ae1d1e\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";O:45:\\\"Illuminate\\\\Contracts\\\\Database\\\\ModelIdentifier\\\":5:{s:5:\\\"class\\\";s:18:\\\"App\\\\Models\\\\SanPham\\\";s:2:\\\"id\\\";i:1;s:9:\\\"relations\\\";a:0:{}s:10:\\\"connection\\\";s:5:\\\"mysql\\\";s:15:\\\"collectionClass\\\";N;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736422835, 1736422835),
(91, 'default', '{\"uuid\":\"6096a5b3-5024-4503-96a9-c5e5e3a59bda\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:66;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736423026, 1736423026),
(92, 'default', '{\"uuid\":\"1939039d-4ec5-4280-a8a7-43e7bfa81d20\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:67;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736423041, 1736423041),
(93, 'default', '{\"uuid\":\"54e8a088-62f2-405e-9b2b-a19be3d38979\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:68;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736423134, 1736423134),
(94, 'default', '{\"uuid\":\"3242f438-cd54-4bc1-b4aa-31f3b946c68e\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:69;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736423367, 1736423367),
(95, 'default', '{\"uuid\":\"898185b5-d3bc-41b0-b7bb-adcca44a949b\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:70;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736423378, 1736423378),
(96, 'default', '{\"uuid\":\"8caae980-340b-4fe2-9591-687b575028a9\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:71;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736423763, 1736423763),
(97, 'default', '{\"uuid\":\"52f028c8-853d-4a4c-b62b-406f8e91d220\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:72;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736423937, 1736423937),
(98, 'default', '{\"uuid\":\"18e9330b-8eb6-498b-92cf-5f166dda1ed3\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:4:\\\"data\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:73;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736424315, 1736424315),
(99, 'default', '{\"uuid\":\"8e7db0ab-54c7-47d0-a0e8-2b24b9c288d2\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:74;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736425591, 1736425591),
(100, 'default', '{\"uuid\":\"4ce2803c-d071-4878-8b2b-81e27649548c\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:75;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736425619, 1736425619),
(101, 'default', '{\"uuid\":\"e0351b2b-f648-4352-b144-d9e8fcfa7992\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:76;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736425668, 1736425668),
(102, 'default', '{\"uuid\":\"47111f0c-0ea3-47d4-89d2-272813c05208\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:77;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736425822, 1736425822),
(103, 'default', '{\"uuid\":\"9301dc62-7b09-49a7-82db-6531f6de33d2\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:78;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736425927, 1736425927),
(104, 'default', '{\"uuid\":\"9e50acd3-0f9d-4572-b586-2db9ebc2b311\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:79;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736426334, 1736426334),
(105, 'default', '{\"uuid\":\"6280515f-2695-4c0a-b098-3fe609ae6703\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:80;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736426408, 1736426408),
(106, 'default', '{\"uuid\":\"fa041eed-9be5-48a0-acf9-036d546ceb2d\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:81;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736426539, 1736426539),
(107, 'default', '{\"uuid\":\"bfdd33ae-f5a9-438a-82b6-2177602fe1a4\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:82;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736426577, 1736426577),
(108, 'default', '{\"uuid\":\"b5d7fb81-5943-4d53-ac6d-c059dcc433fb\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:83;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736426622, 1736426622),
(109, 'default', '{\"uuid\":\"2aeb6922-868b-48e4-8b2c-e20250673a09\",\"displayName\":\"App\\\\Events\\\\SanPhamUpdated\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\",\"command\":\"O:38:\\\"Illuminate\\\\Broadcasting\\\\BroadcastEvent\\\":14:{s:5:\\\"event\\\";O:25:\\\"App\\\\Events\\\\SanPhamUpdated\\\":1:{s:7:\\\"sanPham\\\";a:4:{s:4:\\\"MaSP\\\";i:1;s:14:\\\"SoLuotYeuThich\\\";i:0;s:9:\\\"SoLuotXem\\\";i:84;s:12:\\\"DiemRatingTB\\\";d:5;}}s:5:\\\"tries\\\";N;s:7:\\\"timeout\\\";N;s:7:\\\"backoff\\\";N;s:13:\\\"maxExceptions\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:5:\\\"delay\\\";N;s:11:\\\"afterCommit\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;}\"}}', 0, NULL, 1736426631, 1736426631);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hangs`
--

CREATE TABLE `khach_hangs` (
  `MaTK` int(10) UNSIGNED NOT NULL,
  `TenKH` varchar(255) NOT NULL,
  `SDT` varchar(20) DEFAULT NULL,
  `DiaChi` varchar(255) NOT NULL,
  `HinhAnh` varchar(255) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `GioiTinh` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hangs`
--

INSERT INTO `khach_hangs` (`MaTK`, `TenKH`, `SDT`, `DiaChi`, `HinhAnh`, `NgaySinh`, `GioiTinh`) VALUES
(2, 'Trương Thị Hồng', '0123456789', '123, Le Loi, TP.HCM', '4-4.jpg', '2025-01-01', '0'),
(3, 'Trần Nguyễn Gia Bảo', '0987654321', '456, Nguyen Trai, TP.HCM', '4-4.jpg', '2025-01-08', '1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_hes`
--

CREATE TABLE `lien_hes` (
  `MaLH` int(10) UNSIGNED NOT NULL,
  `Email` varchar(255) NOT NULL,
  `SDT` varchar(20) NOT NULL,
  `TenKH` varchar(255) NOT NULL,
  `NoiDung` text NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lien_hes`
--

INSERT INTO `lien_hes` (`MaLH`, `Email`, `SDT`, `TenKH`, `NoiDung`, `TrangThai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '0306221253@caothang.edu.vn', '0306221253', 'staff1', 'content', 2, '2025-01-11 04:58:21', '2025-01-11 23:00:14', NULL),
(2, '0306221253@caothang.edu.vn', '0306221253', 'staff2', 'content', 0, '2025-01-11 05:02:47', '2025-01-11 05:02:47', NULL),
(3, 'customer1@example.com', '0393416405', 'staff3', 'content', 0, '2025-01-13 00:26:40', '2025-01-13 00:26:40', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_san_phams`
--

CREATE TABLE `loai_san_phams` (
  `MaLSP` int(10) UNSIGNED NOT NULL,
  `TenLSP` varchar(255) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_san_phams`
--

INSERT INTO `loai_san_phams` (`MaLSP`, `TenLSP`, `TrangThai`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Thường', 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL),
(2, 'Đặc biệt', 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_tai_khoans`
--

CREATE TABLE `loai_tai_khoans` (
  `MaLTK` int(10) UNSIGNED NOT NULL,
  `TenLTK` varchar(255) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_tai_khoans`
--

INSERT INTO `loai_tai_khoans` (`MaLTK`, `TenLTK`, `TrangThai`, `created_at`, `updated_at`) VALUES
(1, 'user', 1, '2024-12-31 17:00:00', '2024-12-31 17:00:00'),
(2, 'admin', 1, '2024-12-31 17:00:00', '2024-12-31 17:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_12_13_150503_tao_bang_loai_san_pham', 2),
(5, '2024_12_13_151325_tao_bang_loai_tai_khoan', 2),
(6, '2024_12_13_151725_tao_bang_phuong_thuc_thanh_toan', 2),
(7, '2024_12_13_152209_tao_bang_phieu_nhap', 2),
(8, '2024_12_13_152807_tao_bang_lien_he', 2),
(9, '2024_12_13_153200_tao_bang_blog', 2),
(10, '2024_12_13_153843_tao_bang_san_pham', 2),
(11, '2024_12_13_154802_tao_bang_tai_khoan', 2),
(12, '2024_12_13_160433_tao_bang_khach_hang', 2),
(13, '2024_12_13_160729_tao_bang_binh_luan', 2),
(14, '2024_12_13_161441_tao_bang_hoa_don', 2),
(15, '2024_12_13_162535_tao_bang_chi_tiet_hoa_don', 2),
(16, '2024_12_13_163030_tao_bang_chi_tiet_phieu_nhap', 2),
(17, '2024_12_17_093514_tao_bang_thong_tin_website', 3),
(18, '2024_12_28_131142_create_thong_kes_table', 4),
(19, '2024_12_30_085012_tao_bang_gio_hang', 5),
(20, '2025_01_01_155948_add_remember_token_to_tai_khoans_table', 5),
(21, '2025_01_04_115920_create_yeu_thichs_table', 5),
(22, '2025_01_08_131427_alter_san_pham_table', 6),
(23, '2025_01_08_151940_alter_san_pham_table', 7),
(26, '2025_01_10_062916_alter_binh_luan_table', 8),
(27, '2025_01_12_065642_alter_khach_hang_table', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieu_nhaps`
--

CREATE TABLE `phieu_nhaps` (
  `MaPN` int(10) UNSIGNED NOT NULL,
  `MaNV` int(11) NOT NULL,
  `TongTien` decimal(18,2) NOT NULL,
  `GhiChu` text NOT NULL,
  `NhaCungCap` varchar(255) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phuong_thuc_thanh_toans`
--

CREATE TABLE `phuong_thuc_thanh_toans` (
  `MaPT` int(10) UNSIGNED NOT NULL,
  `TenPT` varchar(255) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `MoTa` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phuong_thuc_thanh_toans`
--

INSERT INTO `phuong_thuc_thanh_toans` (`MaPT`, `TenPT`, `TrangThai`, `MoTa`) VALUES
(1, 'Momo', 1, 'Thanh toán thông qua MoMo'),
(2, 'Tiền mặt', 1, 'Thanh toán trực tiếp khi nhận hàng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_phams`
--

CREATE TABLE `san_phams` (
  `MaSP` int(10) UNSIGNED NOT NULL,
  `TenSP` varchar(255) NOT NULL,
  `Gia` decimal(18,2) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `MoTa` text NOT NULL,
  `Slug` varchar(255) NOT NULL,
  `HinhAnh` varchar(255) NOT NULL,
  `LoaiSP` int(10) UNSIGNED NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `SoLuotYeuThich` int(11) NOT NULL DEFAULT 0,
  `SoLuotXem` int(11) NOT NULL DEFAULT 0,
  `DiemRatingTB` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `san_phams`
--

INSERT INTO `san_phams` (`MaSP`, `TenSP`, `Gia`, `SoLuong`, `MoTa`, `Slug`, `HinhAnh`, `LoaiSP`, `TrangThai`, `created_at`, `updated_at`, `deleted_at`, `SoLuotYeuThich`, `SoLuotXem`, `DiemRatingTB`) VALUES
(1, 'Bearbrick X Iron Spider-man Avengers End Game 1000% BB-SAEG', 131990000.00, 497, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-x-iron-spider-man-svengers-end-game-1000%-bb-saeg', 'Bearbrick-X-Iron-Spider-man-Avengers-End-Game-1000-BB-SAEG.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 1, 177, 4),
(2, 'Bearbrick x ANNA SUI x M / mika ninagawa 1000% BB-ASMN', 49790000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-x-anna-sui-x-m-mika-ninagawa-1000%-bb-asmn', 'bearbrick-x-anna-sui-x-mika-ninagawa-1000-bb-asmn.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 9, 4),
(3, 'Bearbrick X Iron Spider-man Avengers End Game 1000% BB-SAEG', 131990000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-x-iron-spider-man-svengers-end-game-1000%-bb-saeg', 'Bearbrick-X-Iron-Spider-man-Avengers-End-Game-1000-BB-SAEG.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(4, 'Bearbrick x ANNA SUI x M / mika ninagawa 1000% BB-ASMN', 49790000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-x-anna-sui-x-m-mika-ninagawa-1000%-bb-asmn', 'bearbrick-x-anna-sui-x-mika-ninagawa-1000-bb-asmn.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(5, 'Bearbrick Peanuts Linus 400% BB-PL', 4890000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-peanuts-linus-400%-bb-pl', 'bearbrick-peanuts-linus-400-bb-pl-.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 1, 7, 0),
(6, 'Bearbrick NBA NY 400% &#038; 100% BB-NBA', 5190000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-nba-ny-400%', 'bearbrick-nba-ny-400-100-bb-nba.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 5, 0),
(7, 'Bearbrick Lucky Cat 100% &#038; 400% BB-LC14', 8390000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-lucky-cat-100%', 'bearbrick-lucky-cat-100-400-bb-lc14-2.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(8, 'Bearbrick Pushead Silver 100% &amp; 400% Set BB-PL14', 12590000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-pushead-silver-100%', 'Bearbrick-Pushead-Silver-100-400-Set-BB-PL14.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(9, 'Bearbrick Van Gogh Museum Courtesan 1000% BB-VGMC', 42390000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-van-gogh-museum-courtesan-1000%', 'bearbrick-van-gogh-museum-courtesan-1000-bb-vgmc-3.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(10, 'Bearbrick Dylan&#8217;s Candy Bar 1000% BB-DCB', 48690000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-dylan&#8217', 'bearbrick-dylans-candy-bar-1000-bb-dcb.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(11, 'Bearbrick Pushead Silver 1000% BB-PL', 34790000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-pushead-silver-1000%-bb-pl', 'bearbrick-pushead-silver-1000-bb-pl-1.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 3, 0),
(12, 'Bearbrick atmos x WIND AND SEA 100% &amp; 400% Set BB-AWAS', 4790000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-atmos-x-wind-and-sea-100%', 'Bearbrick-atmos-x-WIND-AND-SEA-100-400-Set-BB-AWAS.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(13, 'Bearbrick x Emotionally Unavailable Red Heart 100% &amp; 400% Set BB-EURH', 22980000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-x-emotionally-unavailable-red-heart-100%', 'Bearbrick-x-Emotionally-Unavailable-Red-Heart-100-amp-400-Set-BB-EURH.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(14, 'Bearbrick Star Wars FN 2187 Stormtrooper 400% BB-SWFN2187', 9090000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-star-wars-fn-2187-stormtrooper-400%-bb-SWFN2187', 'Untitled-5.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(15, 'Bearbrick Death Trooper Black 400% BB-DTB', 8090000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-death-trooper-black-400%-bb-dtb', 'Untitled-4.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(16, 'Bearbrick X-girl 2020 100% &amp; 400% Set BB-XGSET', 29590000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-x-girl-2020-100%', 'bearbrick_xgirl_2020_400_1609859764_4d8d2507_progressive.jpg', 1, 2, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(17, 'BEARBRICK MASTER-PIECE MPSC 100% &amp; 400% Set BB-MPI', 6690000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-master-piece-mpsc-100%', 'BEARBRICK-MASTER-PIECE-MPSC-100-400-Set-BB-MPI.jpg', 1, 2, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(18, 'BEARBRICK T-800 400%', 4790000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-t-800-400%', 'BEARBRICK-T-800-400.jpg', 1, 2, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(19, 'BEARBRICK NYABRICK HELLO KITTY 400%', 4690000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-nyabrick-hello-kitty-400%', 'BEARBRICK-NYABRICK-HELLO-KITTY-400.jpg', 1, 2, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(20, 'Bearbrick Elvis Presley 400% &#038; 100% BB-EP', 5290000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản, về cơ bản những chú gấu Bearbrick xuất hiện rất đơn giản ở những cái nhìn đầu tiên, một bức tượng hình gấu bằng nhựa với nhiều kích cỡ và màu sắc khác nhau.', 'bearbrick-elvis-presley-400%', 'bearbrick-elvis-presley-400-100-bb-ep-.jpg', 1, 2, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(21, 'Bearbrick Boowy “No New York” 400% BB-BNNY', 4190000.00, 0, 'Be@rbrick là gì đôi khi lại là câu hỏi đầu tiên của một tín đồ Be@rbrick tiềm năng. Được chế tác bởi Medicom Toy của Nhật Bản.', 'bearbrick-boowy-no-new-york-400%', 'Bearbrick-Boowy-No-New-York-400-BB-BNNY-2.jpg', 1, 2, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(22, 'Bearbrick Agent M (Men in Black : International) 400% BB-MIB', 5190000.00, 0, 'Phiên bản độc đáo của Men in Black.', 'bearbrick-agent-m-men-in-black-400%', 'bearbrick-agent-m-men-in-black-international-400-bb-mib.jpg', 1, 2, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(23, 'Bearbrick Guess Sport Jersey 100% & 400% BB-GSJ', 4190000.00, 0, 'Be@rbrick Guess phiên bản Sport Jersey.', 'bearbrick-guess-sport-jersey-100%-400%', 'bearbrick-guess-sport-jersey-100-400-bb-gsj.jpg', 1, 2, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(24, 'Bearbrick Pushead #5 100% & 400% Set ‘Gold’ BB-PG14', 20190000.00, 0, 'Phiên bản Pushead #5 đặc biệt.', 'bearbrick-pushead-5-100%-400%-gold', 'bearbrick-pushead-5-100-400-set-gold-bb-pg14.jpg', 1, 2, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(25, 'Bearbrick Oasis White Chrome 1000% BB-OWC', 29190000.00, 0, 'Phiên bản Oasis White Chrome sang trọng.', 'bearbrick-oasis-white-chrome-1000%', 'bearbrick-oasis-white-chrome-1000-bb-owc.jpg', 1, 2, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(26, 'Bearbrick Jean-Michel Basquiat #6 1000% BB-JMB6', 30590000.00, 0, 'Phiên bản Basquiat độc quyền.', 'bearbrick-jean-michel-basquiat-6-1000%', 'Bearbrick-Jean-Michel-Basquiat-6-1000-BB-JMB6.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(27, 'Bearbrick Andy Warhol “Brillo” 1000% BB-AWB', 22790000.00, 0, 'Phiên bản Andy Warhol ‘Brillo’.', 'bearbrick-andy-warhol-brillo-1000%', 'Bearbrick-Andy-Warhol-Brillo-1000-BB-AWB.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(28, 'Bearbrick The Joker 1000% BB-TJ', 22990000.00, 0, 'Phiên bản Bearbrick The Joker đặc biệt 1000%.', 'bearbrick-the-joker-1000%', 'bearbrick-the-joker-1000-bb-tj-.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(29, 'Bearbrick Jean-Michel Basquiat #7 1000% BB-JMB7', 25090000.00, 0, 'Phiên bản Jean-Michel Basquiat #7 1000%.', 'bearbrick-jean-michel-basquiat-7-1000%', 'Bearbrick-Jean-Michel-Basquiat-7-1000-BB-JMB7.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(30, 'Bearbrick Anna Sui ‘Red & Beige’ 1000% BB-ASRB', 29190000.00, 0, 'Phiên bản Anna Sui ‘Red & Beige’ tinh tế 1000%.', 'bearbrick-anna-sui-red-beige-1000%', 'bearbrick-anna-sui-red-beige-1000-bb-asrb-.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(31, 'Bearbrick It’s 8:16! Coffee In a Cup of Tea 1000% BB-CCT', 22290000.00, 0, 'Phiên bản độc đáo: Coffee In a Cup of Tea 1000%.', 'bearbrick-coffee-in-a-cup-of-tea-1000%', 'bearbrick-its-816-coffee-in-a-cup-of-tea-1000-bb-cct.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(32, 'Bearbrick Medicom Toy Plus ‘Silver Chrome Ver’ 1000% BB-MTSC', 34790000.00, 0, 'Phiên bản Medicom Toy Plus ‘Silver Chrome Ver’.', 'bearbrick-medicom-toy-plus-silver-chrome-1000%', 'bearbrick-medicom-toy-plus-silver-chrome-ver-1000-bb-mtsc.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(33, 'Bearbrick x Disney ‘Mickey Mouse’ (red/white) 1000% BB-DMM', 23690000.00, 0, 'Phiên bản đặc biệt Bearbrick x Disney ‘Mickey Mouse’ (red/white) 1000%.', 'bearbrick-disney-mickey-mouse-red-white-1000%', 'Bearbrick-x-Disney-‘Mickey-Mouse-redwhite-1000-BB-DMM.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(34, 'Bearbrick x Ghostbusters Stay Puft Marshmellow Man Angry Face 1000% BB-MMAF', 23690000.00, 0, 'Phiên bản Ghostbusters Stay Puft Marshmellow Man Angry Face 1000%.', 'bearbrick-ghostbusters-stay-puft-angry-face-1000%', 'bearbrick-x-ghostbusters-stay-puft-marshmellow-man-angry-face-1000-bb-mmaf.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(35, 'Bearbrick X Play Studio Akanobu Shinobu 1000% BB-PSAS', 23690000.00, 0, 'Phiên bản hợp tác Play Studio Akanobu Shinobu 1000%.', 'bearbrick-play-studio-akanobu-shinobu-1000%', 'bearbrick-x-play-studio-akanobu-shinobu-1000-bb-psas.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(36, 'Bearbrick Snoopy Belle 1000% (Peanuts) BB-SBP', 19490000.00, 0, 'Phiên bản Snoopy Belle (Peanuts) đặc biệt 1000%.', 'bearbrick-snoopy-belle-1000%', 'bearbrick-snoopy-belle-1000-peanuts-bb-sbp-1.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(37, 'Bearbrick X Atmos X Staple 1000% BB-AXS', 22290000.00, 0, 'Phiên bản hợp tác Atmos X Staple 1000%.', 'bearbrick-atmos-staple-1000%', 'bearbrick-x-atmos-x-staple-1000-bb-axs.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(38, 'Bearbrick x Atmos Elephant 1000% BB-ATEL', 23690000.00, 0, 'Phiên bản hợp tác Atmos Elephant 1000%.', 'bearbrick-atmos-elephant-1000%', 'bearbrick-x-atmos-elephant-1000-bb-atel.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(39, 'Bearbrick x Michael Jackson WEREWOLF 1000% BB-MJWW', 23690000.00, 0, 'Phiên bản hợp tác Michael Jackson WEREWOLF 1000%.', 'bearbrick-michael-jackson-werewolf-1000%', 'bearbrick-x-michael-jackson-werewolf-1000-bb-mjww.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(40, 'Bearbrick Punk Drunkers Tattoo Guy 1000% BB-PDTG', 17390000.00, 0, 'Phiên bản Punk Drunkers Tattoo Guy 1000%.', 'bearbrick-punk-drunkers-tattoo-guy-1000%', 'bearbrick-punk-drunkers-tattoo-guy-1000-bb-pdtg.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(41, 'Bearbrick Misty ‘Black’ 1000% BB-MB', 23690000.00, 0, 'Phiên bản Misty Black 1000%.', 'bearbrick-misty-black-1000%', 'bearbrick-misty-black-1000-bb-mb.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(42, 'Bearbrick x Star Wars Kylo Ren 1000% BB-SWKR', 18790000.00, 0, 'Phiên bản hợp tác Star Wars Kylo Ren 1000%.', 'bearbrick-star-wars-kylo-ren-1000%', 'bearbrick-x-star-wars-kylo-ren-1000-bb-swkr.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(43, 'Bearbrick x BAPE (R) Daruma 1000% BB-BRD', 52790000.00, 0, 'Phiên bản hợp tác BAPE (R) Daruma 1000%.', 'bearbrick-bape-daruma-1000%', 'bearbrick-x-bape-daruma-1000-bb-brd-1.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(44, 'Bearbrick x Atmos Animal Print 1000% BB-AAP', 25090000.00, 0, 'Phiên bản hợp tác Atmos Animal Print 1000%.', 'bearbrick-atmos-animal-print-1000%', 'bearbrick-x-atmos-animal-print-1000-bb-aap.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(45, 'Bearbrick MARS 1000% BB-MARS', 76390000.00, 0, 'Phiên bản MARS 1000%.', 'bearbrick-mars-1000%', 'bearbrick-mars-1000-bb-mars.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(46, 'Bearbrick X Disney Mickey Mouse Vintage 1000% BB-DMMV', 24390000.00, 0, 'Phiên bản hợp tác Disney Mickey Mouse Vintage 1000%.', 'bearbrick-disney-mickey-mouse-vintage-1000%', 'bearbrick-x-disney-mickey-mouse-vintage-1000-bb-dmmv.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(47, 'Bearbrick x Star Wars Darth Vader ‘Black’ 1000% BB-SWDV', 30590000.00, 0, 'Phiên bản hợp tác Star Wars Darth Vader Black 1000%.', 'bearbrick-star-wars-darth-vader-black-1000%', 'Bearbrick-x-Star-Wars-Darth-Vader-‘Black-1000-BB-SWDV.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(48, 'Bearbrick The Beatles ‘Anthology’ BB-TBA', 30590000.00, 0, 'Phiên bản hợp tác The Beatles ‘Anthology’ 1000%.', 'bearbrick-the-beatles-anthology-1000%', 'bearbrick-the-beatles-anthology-bb-tba.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(49, 'Bearbrick Andy Warhol’s Elvis Presley 1000% BB-AWEP', 30590000.00, 0, 'Phiên bản hợp tác Andy Warhol’s Elvis Presley 1000%.', 'bearbrick-andy-warhol-elvis-presley-1000%', 'bearbrick-andy-warhols-elvis-presley-1000-bb-awep.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(50, 'Bearbrick Medicom Toy Plus 1000% ‘Gold Chrome’ BB-MTGC', 38890000.00, 0, 'Phiên bản Medicom Toy Plus ‘Gold Chrome’ 1000%.', 'bearbrick-medicom-toy-plus-gold-chrome-1000%', 'Bearbrick-Medicom-Toy-Plus-1000-‘Gold-Chrome-BB-MTGC.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(51, 'Bearbrick Flying Balloons Girl 1000% BB-FBG', 27090000.00, 0, 'Phiên bản Flying Balloons Girl 1000%.', 'bearbrick-flying-balloons-girl-1000%', 'Bearbrick-Flying-Balloons-Girl-1000-BB-FBG-7.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(52, 'Bearbrick atmos BANDANA 100% & 400% Set of 2 BB-ABS2', 10090000.00, 0, 'Set sản phẩm atmos BANDANA 100% & 400%.', 'bearbrick-atmos-bandana-100-400-set-2', 'Untitled_auto_x2-1.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(53, 'Bearbrick x Marvel Captain America 400% BB-MCA', 23690000.00, 0, 'Phiên bản hợp tác Marvel Captain America 400%.', 'bearbrick-marvel-captain-america-400%', 'Bearbrick-x-Marvel-Captain-America-400-BB-MCA.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(54, 'Bearbrick Shoretrooper 400% BB-STMT', 9090000.00, 0, 'Phiên bản Shoretrooper 400%.', 'bearbrick-shoretrooper-400%', 'Bearbrick-Shoretrooper-400-BB-STMT.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(55, 'Bearbrick Stormtrooper Chrome Ver. 400% BB-STCR', 9090000.00, 0, 'Phiên bản Stormtrooper Chrome Ver. 400%.', 'bearbrick-stormtrooper-chrome-ver-400%', 'star-wars-medicom-toy-stormtrooper-bearbricks-01.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(56, 'Bearbrick x Keith Haring x Disney Mickey Mouse 100% & 400% Set BB-KHDMM', 7290000.00, 0, 'Set sản phẩm Keith Haring x Disney Mickey Mouse 100% & 400%.', 'bearbrick-keith-haring-disney-mickey-mouse-set-100-400%', 'mokhrdmm100400set-1.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(57, 'Bearbrick Maneki Neko Peko-chan Black 100% & 400% Set BB-MNPB', 12690000.00, 0, 'Set sản phẩm Maneki Neko Peko-chan Black 100% & 400%.', 'bearbrick-maneki-neko-peko-chan-black-set-100-400%', 'Untitled-3.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(58, 'Bearbrick MY FIRST BE@RBRICK Jester Ver. 100% & 400% Set BB-MFBBJ', 25090000.00, 0, 'Set MY FIRST BE@RBRICK Jester Ver. 100% & 400%.', 'bearbrick-my-first-bearbrick-jester-ver-set-100-400%', 'Bearbrick-MY-FIRST-BE@RBRICK-Jester-Ver.-100-400-Set-BB-MFBBJ.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(59, 'Bearbrick 8:16! 100% & 400% Set BB-816', 6090000.00, 0, 'Set Bearbrick 8:16! 100% & 400%.', 'bearbrick-816-set-100-400%', '4-4.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(60, 'Bearbrick x Xlarge x Hajime Sorayama Gold 100% & 400% Set BB-XHSG', 14590000.00, 0, 'Set hợp tác x Xlarge x Hajime Sorayama Gold 100% & 400%.', 'bearbrick-xlarge-hajime-sorayama-gold-set-100-400%', 'xlarge_400_-08.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(61, 'Bearbrick Maneki Neko Peko-chan Flurescent Pink 100% & 400% Set BB-MNPFP', 12490000.00, 0, 'Set Maneki Neko Peko-chan Flurescent Pink 100% & 400%.', 'bearbrick-maneki-neko-peko-chan-flurescent-pink-100-400%', 'Bearbrick-Maneki-Neko-Peko-chan-Flurescent-Pink-100-400-Set-BB-MNPFP.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(62, 'Bearbrick Maneki Neko Pekochan Flurescent Green 100% & 400% Set BB-MNPFP', 16490000.00, 0, 'Set Maneki Neko Peko-chan Flurescent Green 100% & 400%.', 'bearbrick-maneki-neko-peko-chan-flurescent-green-100-400%', 'Bearbrick-Maneki-Neko-Pekochan-Flurescent-Green-100-400-Set-BB-MNPFP.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(63, 'Bearbrick x MISHKA x LONG 400% BB-MLONG', 4590000.00, 0, 'Phiên bản hợp tác MISHKA x LONG 400%.', 'bearbrick-mishka-long-400%', 'Bearbrick-x-MISHKA-x-LONG-400-BB-MLONG.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(64, 'Bearbrick x Billionaire Boys Club x FDMTL 100% & 400% Set BB-BBCFDMTL', 8090000.00, 0, 'Set Bearbrick x Billionaire Boys Club x FDMTL 100% & 400%.', 'bearbrick-bbcfdmtl-set-100-400%', 'billionaire-boys-club-fdmtl-team-up-for-a-medicom-toy-berbrick-01.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(65, 'Bearbrick Shazam! 100% & 400% Set BB-SHAZ', 5690000.00, 0, 'Set Bearbrick Shazam! 100% & 400%.', 'bearbrick-shazam-set-100-400%', 'Bearbrick-Shazam-100-400-Set-BB-SHAZ.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(66, 'Bearbrick x ANNA SUI x M / mika ninagawa 100% & 400% Set BB-ASMN', 10990000.00, 0, 'Set Bearbrick x ANNA SUI x M / mika ninagawa 100% & 400%.', 'bearbrick-anna-sui-mika-ninagawa-set-100-400%', 'Bearbrick-x-ANNA-SUI-x-M-mika-ninagawa-100-amp-400-Set-BB-ASMN.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(67, 'BEARBRICK UNDERCOVER CERAMIC UFO 400% BB-UCUFO', 8490000.00, 0, 'Phiên bản BEARBRICK UNDERCOVER CERAMIC UFO 400%.', 'bearbrick-undercover-ceramic-ufo-400%', 'BEARBRICK-UNDERCOVER-WHITE-BLUE-400-2.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(68, 'BEARBRICK CARNIVAL NO.2 100% & 400% Set BB-CAR', 7290000.00, 0, 'Set BEARBRICK CARNIVAL NO.2 100% & 400%.', 'bearbrick-carnival-no2-set-100-400%', 'BEARBRICK-CARNIVAL-NO.2-100-amp-400-Set-BB-CAR.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(69, 'Bearbrick Keith Haring #5 100% & 400% Set BB-KH5', 6290000.00, 0, 'Set Bearbrick Keith Haring #5 100% & 400%.', 'bearbrick-keith-haring-5-set-100-400%', 'be-at-rbrick-keith-haring-5-100-and-400_keith-haring_gallery_5e56f22127a29.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0),
(70, 'BEARBRICK FANTASIA MICKEY 100% & 400% Set BB-FTMK', 6590000.00, 0, 'Set BEARBRICK FANTASIA MICKEY 100% & 400%.', 'bearbrick-fantasia-mickey-set-100-400%', 'BEARBRICK-FANTASIA-MICKEY-100-400-Set-BB-FTMK.jpg', 1, 1, '2024-12-17 17:00:00', '2024-12-17 17:00:00', NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('xjiZhMKN5OkKJTBb84Eye9JeubrSKTCfZ6qKnPBV', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidWFVWktoaHFncVlLY2x0TFpDdXdTWEtheEFjYk1LNkczbHZ5OVYzWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fX0=', 1775498100);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tai_khoans`
--

CREATE TABLE `tai_khoans` (
  `MaTK` int(10) UNSIGNED NOT NULL,
  `TenDN` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `LoaiTK` int(10) UNSIGNED NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tai_khoans`
--

INSERT INTO `tai_khoans` (`MaTK`, `TenDN`, `Email`, `Password`, `LoaiTK`, `TrangThai`, `created_at`, `updated_at`, `deleted_at`, `remember_token`) VALUES
(1, 'admin', 'admin@example.com', '$2y$12$GQD3sALaMcklYVykWuHIqeyOAVzPIHm0sUV7wwR5hGiEea9C5.AbK', 2, 1, '2025-01-04 14:46:28', '2025-01-04 14:46:28', NULL, NULL),
(2, 'customer1', 'customer1@example.com', '$2y$12$GQD3sALaMcklYVykWuHIqeyOAVzPIHm0sUV7wwR5hGiEea9C5.AbK', 1, 1, '2025-01-04 14:46:28', '2025-01-04 14:46:28', NULL, NULL),
(3, 'customer2', 'customer2@example.com', '$2y$12$GQD3sALaMcklYVykWuHIqeyOAVzPIHm0sUV7wwR5hGiEea9C5.AbK', 1, 1, '2025-01-04 14:46:28', '2025-01-04 14:46:28', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_kes`
--

CREATE TABLE `thong_kes` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_date` date NOT NULL,
  `sales` decimal(18,2) NOT NULL,
  `profit` decimal(18,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thong_kes`
--

INSERT INTO `thong_kes` (`id`, `order_date`, `sales`, `profit`, `quantity`, `total_order`, `created_at`, `updated_at`) VALUES
(1, '2024-12-26', 100000.00, 50000.00, 5, 3, '2024-12-28 06:23:50', '2024-12-28 06:23:50'),
(2, '2024-12-27', 789000.00, 250000.00, 10, 10, '2024-12-28 07:17:58', '2024-12-28 07:17:58'),
(3, '2025-01-02', 1000000.00, 500000.00, 5, 3, '2025-01-02 08:16:09', NULL),
(4, '2025-01-01', 1000000.00, 500000.00, 5, 3, '2025-01-02 08:16:09', NULL),
(5, '2024-12-28', 1000000.00, 500000.00, 5, 3, '2024-12-28 08:16:09', NULL),
(6, '2025-01-07', 313770000.00, 313770000.00, 3, 1, '2025-01-07 10:22:16', '2025-01-07 10:22:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_tin_website`
--

CREATE TABLE `thong_tin_website` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `hotline` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thong_tin_website`
--

INSERT INTO `thong_tin_website` (`id`, `logo`, `address`, `hotline`, `email`, `facebook`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, 'logo-web.jpg', '65 huỳnh thúc kháng, phường bến nghé, quận 1, tp.hcm', '8484841234567890', 'support@example.com', 'https://www.facebook.com/', 'https://www.instagram.com/', 'https://x.com/?lang=vi&mx=2', '2024-12-17 02:50:16', '2025-01-10 05:39:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `yeu_thichs`
--

CREATE TABLE `yeu_thichs` (
  `id` int(10) UNSIGNED NOT NULL,
  `MaTK` int(10) UNSIGNED NOT NULL,
  `MaSP` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `yeu_thichs`
--

INSERT INTO `yeu_thichs` (`id`, `MaTK`, `MaSP`, `created_at`, `updated_at`, `deleted_at`) VALUES
(5, 2, 1, '2025-01-12 00:06:12', '2025-01-12 00:06:12', NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `binh_luans`
--
ALTER TABLE `binh_luans`
  ADD PRIMARY KEY (`MaBL`),
  ADD KEY `binh_luans_makh_foreign` (`MaKH`),
  ADD KEY `binh_luans_masp_foreign` (`MaSP`),
  ADD KEY `binh_luans_mahd_foreign` (`MaHD`);

--
-- Chỉ mục cho bảng `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`MaBV`);

--
-- Chỉ mục cho bảng `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Chỉ mục cho bảng `chi_tiet_hoa_dons`
--
ALTER TABLE `chi_tiet_hoa_dons`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `chi_tiet_hoa_dons_mahd_foreign` (`MaHD`),
  ADD KEY `chi_tiet_hoa_dons_masp_foreign` (`MaSP`);

--
-- Chỉ mục cho bảng `chi_tiet_phieu_nhaps`
--
ALTER TABLE `chi_tiet_phieu_nhaps`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `chi_tiet_phieu_nhaps_mapn_foreign` (`MaPN`),
  ADD KEY `chi_tiet_phieu_nhaps_masp_foreign` (`MaSP`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `gio_hangs`
--
ALTER TABLE `gio_hangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `gio_hangs_matk_foreign` (`MaTK`),
  ADD KEY `gio_hangs_masp_foreign` (`MaSP`);

--
-- Chỉ mục cho bảng `hoa_dons`
--
ALTER TABLE `hoa_dons`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `hoa_dons_makh_foreign` (`MaKH`),
  ADD KEY `hoa_dons_thanhtoan_foreign` (`ThanhToan`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `khach_hangs`
--
ALTER TABLE `khach_hangs`
  ADD PRIMARY KEY (`MaTK`);

--
-- Chỉ mục cho bảng `lien_hes`
--
ALTER TABLE `lien_hes`
  ADD PRIMARY KEY (`MaLH`);

--
-- Chỉ mục cho bảng `loai_san_phams`
--
ALTER TABLE `loai_san_phams`
  ADD PRIMARY KEY (`MaLSP`);

--
-- Chỉ mục cho bảng `loai_tai_khoans`
--
ALTER TABLE `loai_tai_khoans`
  ADD PRIMARY KEY (`MaLTK`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `phieu_nhaps`
--
ALTER TABLE `phieu_nhaps`
  ADD PRIMARY KEY (`MaPN`);

--
-- Chỉ mục cho bảng `phuong_thuc_thanh_toans`
--
ALTER TABLE `phuong_thuc_thanh_toans`
  ADD PRIMARY KEY (`MaPT`);

--
-- Chỉ mục cho bảng `san_phams`
--
ALTER TABLE `san_phams`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `san_phams_loaisp_foreign` (`LoaiSP`);

--
-- Chỉ mục cho bảng `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Chỉ mục cho bảng `tai_khoans`
--
ALTER TABLE `tai_khoans`
  ADD PRIMARY KEY (`MaTK`),
  ADD KEY `tai_khoans_loaitk_foreign` (`LoaiTK`);

--
-- Chỉ mục cho bảng `thong_kes`
--
ALTER TABLE `thong_kes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thong_tin_website`
--
ALTER TABLE `thong_tin_website`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Chỉ mục cho bảng `yeu_thichs`
--
ALTER TABLE `yeu_thichs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `yeu_thichs_matk_foreign` (`MaTK`),
  ADD KEY `yeu_thichs_masp_foreign` (`MaSP`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `binh_luans`
--
ALTER TABLE `binh_luans`
  MODIFY `MaBL` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `blogs`
--
ALTER TABLE `blogs`
  MODIFY `MaBV` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_hoa_dons`
--
ALTER TABLE `chi_tiet_hoa_dons`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `chi_tiet_phieu_nhaps`
--
ALTER TABLE `chi_tiet_phieu_nhaps`
  MODIFY `ID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `gio_hangs`
--
ALTER TABLE `gio_hangs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `hoa_dons`
--
ALTER TABLE `hoa_dons`
  MODIFY `MaHD` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT cho bảng `khach_hangs`
--
ALTER TABLE `khach_hangs`
  MODIFY `MaTK` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `lien_hes`
--
ALTER TABLE `lien_hes`
  MODIFY `MaLH` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `loai_san_phams`
--
ALTER TABLE `loai_san_phams`
  MODIFY `MaLSP` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `loai_tai_khoans`
--
ALTER TABLE `loai_tai_khoans`
  MODIFY `MaLTK` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `phieu_nhaps`
--
ALTER TABLE `phieu_nhaps`
  MODIFY `MaPN` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `phuong_thuc_thanh_toans`
--
ALTER TABLE `phuong_thuc_thanh_toans`
  MODIFY `MaPT` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `san_phams`
--
ALTER TABLE `san_phams`
  MODIFY `MaSP` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT cho bảng `tai_khoans`
--
ALTER TABLE `tai_khoans`
  MODIFY `MaTK` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `thong_kes`
--
ALTER TABLE `thong_kes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `thong_tin_website`
--
ALTER TABLE `thong_tin_website`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `yeu_thichs`
--
ALTER TABLE `yeu_thichs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binh_luans`
--
ALTER TABLE `binh_luans`
  ADD CONSTRAINT `binh_luans_mahd_foreign` FOREIGN KEY (`MaHD`) REFERENCES `hoa_dons` (`MaHD`) ON DELETE CASCADE,
  ADD CONSTRAINT `binh_luans_makh_foreign` FOREIGN KEY (`MaKH`) REFERENCES `khach_hangs` (`MaTK`) ON DELETE CASCADE,
  ADD CONSTRAINT `binh_luans_masp_foreign` FOREIGN KEY (`MaSP`) REFERENCES `san_phams` (`MaSP`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chi_tiet_hoa_dons`
--
ALTER TABLE `chi_tiet_hoa_dons`
  ADD CONSTRAINT `chi_tiet_hoa_dons_mahd_foreign` FOREIGN KEY (`MaHD`) REFERENCES `hoa_dons` (`MaHD`) ON DELETE CASCADE,
  ADD CONSTRAINT `chi_tiet_hoa_dons_masp_foreign` FOREIGN KEY (`MaSP`) REFERENCES `san_phams` (`MaSP`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `chi_tiet_phieu_nhaps`
--
ALTER TABLE `chi_tiet_phieu_nhaps`
  ADD CONSTRAINT `chi_tiet_phieu_nhaps_mapn_foreign` FOREIGN KEY (`MaPN`) REFERENCES `phieu_nhaps` (`MaPN`) ON DELETE CASCADE,
  ADD CONSTRAINT `chi_tiet_phieu_nhaps_masp_foreign` FOREIGN KEY (`MaSP`) REFERENCES `san_phams` (`MaSP`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `gio_hangs`
--
ALTER TABLE `gio_hangs`
  ADD CONSTRAINT `gio_hangs_masp_foreign` FOREIGN KEY (`MaSP`) REFERENCES `san_phams` (`MaSP`) ON DELETE CASCADE,
  ADD CONSTRAINT `gio_hangs_matk_foreign` FOREIGN KEY (`MaTK`) REFERENCES `tai_khoans` (`MaTK`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `hoa_dons`
--
ALTER TABLE `hoa_dons`
  ADD CONSTRAINT `hoa_dons_makh_foreign` FOREIGN KEY (`MaKH`) REFERENCES `khach_hangs` (`MaTK`) ON DELETE CASCADE,
  ADD CONSTRAINT `hoa_dons_thanhtoan_foreign` FOREIGN KEY (`ThanhToan`) REFERENCES `phuong_thuc_thanh_toans` (`MaPT`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `khach_hangs`
--
ALTER TABLE `khach_hangs`
  ADD CONSTRAINT `khach_hangs_matk_foreign` FOREIGN KEY (`MaTK`) REFERENCES `tai_khoans` (`MaTK`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `san_phams`
--
ALTER TABLE `san_phams`
  ADD CONSTRAINT `san_phams_loaisp_foreign` FOREIGN KEY (`LoaiSP`) REFERENCES `loai_san_phams` (`MaLSP`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `tai_khoans`
--
ALTER TABLE `tai_khoans`
  ADD CONSTRAINT `tai_khoans_loaitk_foreign` FOREIGN KEY (`LoaiTK`) REFERENCES `loai_tai_khoans` (`MaLTK`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `yeu_thichs`
--
ALTER TABLE `yeu_thichs`
  ADD CONSTRAINT `yeu_thichs_masp_foreign` FOREIGN KEY (`MaSP`) REFERENCES `san_phams` (`MaSP`) ON DELETE CASCADE,
  ADD CONSTRAINT `yeu_thichs_matk_foreign` FOREIGN KEY (`MaTK`) REFERENCES `tai_khoans` (`MaTK`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
