# nature-skills – Hướng dẫn cài vào Claude

Nguồn: https://github.com/Yuan1z0825/nature-skills (giấy phép Apache-2.0).

Đây là bộ **Skills** (sổ tay nghiệp vụ) giúp Claude làm việc học thuật theo chuẩn tạp chí *Nature*. Mỗi file `.zip` trong thư mục này là **một skill**, đã được đóng gói sẵn để tải lên Claude.

Những gì đã chỉnh so với bản gốc:
- Gói kèm `nature-shared` (thư viện dùng chung) vào từng skill cần nó.
- Bỏ các thư mục test và đánh giá, cùng thư mục ảnh mẫu `figures4papers` (28 MB) để file nhẹ.
- Đổi tên `researchwrite` thành `nature-proposal-writer` cho khớp với tên thư mục.

## Cách tải lên

1. Mở Claude → **Settings → Capabilities**, tìm mục **Skills**.
   Nếu không thấy, gõ "Skills" vào ô Search trong Settings.
2. Bấm **Upload skill** (hoặc nút **+**), rồi chọn một file `.zip`.
3. Lặp lại với từng skill bạn muốn dùng. Bật công tắc của skill nếu nó đang tắt.

Không cần cài hết. Nên bắt đầu với các skill ⭐.

## Danh sách skill

| Skill | Mức độ | Dùng để |
|---|---|---|
| ⭐ nature-polishing | Stable | Chuốt hoặc dịch văn bản sang tiếng Anh học thuật kiểu Nature |
| ⭐ nature-figure | Stable | Vẽ hình đạt chuẩn xuất bản bằng Python hoặc R |
| ⭐ nature-ref-verifier | Stable | Kiểm tra tài liệu tham khảo (tác giả, năm, tập, trang) |
| ⭐ nature-reviewer | Draft | Giả lập phản biện trước khi nộp bài |
| ⭐ nature-paper-xray | Beta | Đọc sâu bài báo: lập luận, thiết kế, giới hạn |
| ⭐ nature-writing | Draft | Viết các phần của bài báo (Abstract, Intro, Results...) |
| nature-statistics | Draft | Rà soát cách trình bày thống kê |
| nature-reader | Beta | Đọc bài báo thành Markdown có chú thích nguồn |
| nature-paper-card | Beta | Thẻ tóm tắt bài báo 16 mục |
| nature-paper2word | Beta | Chuyển Markdown thành file Word (công thức, bảng, trích dẫn) |
| nature-response | Beta | Soạn thư trả lời phản biện |
| nature-proposal-writer | Beta | Viết đề cương / đề xuất nghiên cứu |
| nature-data | Draft | Tuyên bố dữ liệu (Data Availability), FAIR |
| nature-citation | Beta | Tìm tài liệu trích dẫn trong các tạp chí Nature/CNS |
| nature-academic-search | Beta | Tìm kiếm học thuật, kiểm tra DOI (cần thêm cấu hình) |
| nature-literature-pipeline | Stable | Tự động theo dõi tài liệu mới (cần cấu hình) |
| nature-social-science | Draft | Dành cho khoa học xã hội |
| nature-experiment-log | Draft | Nhật ký thí nghiệm dạng Obsidian |
| nature-paper2ppt | Beta | Làm slide (tiếng Trung) để trình bày bài báo |
| nature-image2ppt | Beta | Dựng lại ảnh slide thành PowerPoint chỉnh sửa được |
| nature-paper-trans | Beta | Dịch PDF tiếng Anh sang **tiếng Trung** |
| nature-paper-to-patent | Beta | Soạn bằng sáng chế **Trung Quốc** |
| nature-downloader | Beta | Tải PDF qua tài khoản thư viện (cần đăng nhập) |

Mức độ: Stable là đã kiểm chứng trên nội dung thật, Beta là đã thử trên ví dụ, Draft là mới viết quy tắc.

## Cách dùng

Cứ nói bình thường, Claude sẽ tự chọn skill phù hợp. Nếu muốn chắc chắn, gọi tên skill, ví dụ:
- "Dùng nature-polishing chuốt đoạn này sang tiếng Anh học thuật: ..."
- "Dùng nature-reviewer phản biện bản thảo này."
- "Dùng nature-figure vẽ biểu đồ từ dữ liệu này."

## Cập nhật

Khi repo gốc có bản mới, bảo Claude: "cập nhật lại nature-skills", rồi tải lên lại các file zip đã được đóng gói mới.
