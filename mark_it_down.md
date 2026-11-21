QUY TẮC XỬ LÝ FILE TÀI LIỆU (MarkItDown)

Bối cảnh: Laptop của tôi đã cài MarkItDown (Python 3.13) và gắn vào Claude Desktop dưới dạng MCP server tên markitdown, có công cụ convert_to_markdown. Thư mục công cụ nằm ở D:\github_git\repo\PROMPT-INSTRUCTION-FOR-AI\tools\markitdown.

1. Khi tôi ĐÍNH KÈM file (PDF, DOCX, PPTX, XLSX, XLS, CSV, HTML, EPUB, MSG...):

CHƯA xử lý file ngay. Trước tiên gửi lời nhắc ngắn:

💡 Máy bạn đã cài MarkItDown. Công cụ này chuyển file sang dạng chữ ngay trên máy, giúp tôi đọc nhanh hơn và tiết kiệm token.

Sau đó đưa ra 2 lựa chọn (dùng câu hỏi trắc nghiệm nếu có, không thì liệt kê đánh số) và chờ tôi chọn:
(1) Tiếp tục xử lý file đã gửi: đọc file đính kèm theo cách thường.
(2) Dùng MarkItDown: tôi sẽ gửi lại bằng đường dẫn file.
Nếu tôi chọn (1): xử lý file đính kèm ngay, không nhắc thêm.
Nếu tôi chọn (2): hướng dẫn tôi từng bước:
Mở File Explorer, tìm tới file vừa gửi.
Chuột phải vào file → Copy as path, hoặc chọn file rồi bấm Ctrl + Shift + C.
Dán đường dẫn vào chat, kèm yêu cầu, ví dụ: "Tóm tắt "D:\TaiLieu\baocao.pdf"".
Sau đó chờ tôi gửi đường dẫn.
Bỏ qua bước nhắc và chọn, xử lý luôn nếu: file là ảnh, PDF dạng ảnh scan, tài liệu mà hình vẽ/sơ đồ/bố cục là nội dung chính, tôi đã nói "đọc luôn", hoặc tôi đã chọn (1) trước đó trong cùng đoạn chat.

2. Khi tôi GỬI ĐƯỜNG DẪN file:

Bỏ dấu ngoặc kép bao quanh đường dẫn (nếu có), rồi dùng công cụ convert_to_markdown với URI dạng file:///D:/duong/dan/file.pdf: đổi \ thành /, dấu cách viết thành %20.
Chuyển xong thì báo ngắn: đã đọc file nào, dài khoảng bao nhiêu, rồi làm tiếp việc tôi yêu cầu.
Nếu tôi muốn lưu bản .md, lưu cạnh file gốc với cùng tên và đuôi .md (chỉ làm khi thư mục đó đã được add cho Claude).

3. Khi công cụ markitdown KHÔNG có sẵn (máy khác, chat trên web/điện thoại, hoặc MCP lỗi):

Không đưa lựa chọn (2). Báo tôi trong 1 câu là MarkItDown không khả dụng ở đây, rồi xử lý file theo cách thường. Nếu môi trường của Claude có mạng, có thể tự cài markitdown trên cloud để chuyển file.
Nếu tôi hỏi cách cài trên máy mới, hướng dẫn tôi:
Gõ py install 3.13.
Chạy cai-dat.bat trong thư mục tools\markitdown.
Lấy đường dẫn Python bằng lệnh py -3.13 -c "import sys; print(sys.executable)".
Tắt hẳn Claude, rồi thêm vào claude_desktop_config.json:
"mcpServers": {"markitdown": {"command": "<đường dẫn python, mỗi \ viết thành \\>", "args": ["-m", "markitdown_mcp"]}}
Mở lại Claude, kiểm tra trong Settings → Desktop app → Extensions có markitdown "Running".

4. Khi MCP markitdown báo lỗi: hướng dẫn tôi vào Settings → Desktop app → Extensions → markitdown → View logs, rồi chụp màn hình gửi cho Claude.

5. Khi tôi hỏi "dùng MarkItDown thế nào":

Cách 1, qua Claude: gửi đường dẫn file kèm yêu cầu.
Cách 2, kéo thả: kéo file hoặc thư mục thả lên chuyen-doi.bat. File .md nằm cạnh file gốc, hoặc trong thư mục con markdown nếu kéo cả thư mục.
Cách 3, dòng lệnh: py -3.13 -m markitdown file.pdf -o file.md
Nâng cấp: chạy lại cai-dat.bat.
Luôn trả lời bằng tiếng Việt, ngắn gọn.
