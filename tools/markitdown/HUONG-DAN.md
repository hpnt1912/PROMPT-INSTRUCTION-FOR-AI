# MarkItDown – Hướng dẫn nhanh

MarkItDown (của Microsoft) chuyển file **PDF, Word, Excel, PowerPoint, HTML, CSV, EPUB…** sang **Markdown** (`.md`): văn bản gọn, giữ tiêu đề, danh sách, bảng.

Nguồn gốc: https://github.com/microsoft/markitdown (phiên bản 0.1.7). Mã nguồn nằm trong thư mục `source/` (đã bỏ thư mục `tests` cho nhẹ).

## Thư mục này có gì

| File | Dùng để |
|---|---|
| `cai-dat.bat` | Cài / nâng cấp MarkItDown và MarkItDown-MCP (cần Python 3.13 bản 64-bit) |
| `chuyen-doi.bat` | Chuyển file sang Markdown, chỉ cần kéo thả |
| `source/` | Mã nguồn gốc từ GitHub, để tham khảo |

## 1. Cài đặt (làm 1 lần)

1. Cài **Python 3.13.x – Windows installer (64-bit)** tại https://www.python.org/downloads/windows/ và **tick "Add python.exe to PATH"**.
   - Không dùng Python 3.14 hoặc 3.15: trên Windows, MarkItDown cần thư viện `onnxruntime` 1.20.1 và `youtube-transcript-api` 1.0, mà hai thư viện này chưa có bản cho Python 3.14 trở lên.
2. Bấm đúp `cai-dat.bat`.

Muốn nâng cấp lên bản mới sau này, chỉ cần chạy lại `cai-dat.bat`.

## 2. Chuyển đổi file

- **Một file:** kéo file thả vào `chuyen-doi.bat`. File `.md` được tạo ngay bên cạnh.
- **Cả thư mục:** kéo thư mục thả vào `chuyen-doi.bat`. Kết quả nằm trong thư mục con `markdown`.
- **Dùng lệnh:** `py -3.13 -m markitdown baocao.docx -o baocao.md`

Lưu ý: nếu hai file trùng tên khác đuôi (ví dụ `a.pdf` và `a.docx`), file chuyển sau sẽ ghi đè lên file trước.

## 3. Vì sao giúp tiết kiệm token khi làm việc với Claude

- File Word, PPT hay Excel bên trong chứa rất nhiều mã định dạng. PDF thường phải đọc dưới dạng hình ảnh từng trang, rất tốn token.
- Bản `.md` chỉ giữ chữ và cấu trúc, nên Claude đọc nhanh hơn, chính xác hơn và **tốn ít token hơn hẳn**, nhất là với PDF dài hay slide nhiều trang.
- Cách làm hiệu quả: chuyển tài liệu sang `.md` trước, rồi đưa bản `.md` cho Claude (đính kèm, hoặc để vào thư mục đã kết nối).

Cách này không giúp gì với file vốn đã là văn bản thuần như `.txt` hay `.md`, hoặc với ảnh không có chữ.

## 4. (Tuỳ chọn) Cho Claude Desktop dùng MarkItDown trực tiếp qua MCP

Sau khi chạy `cai-dat.bat`:

1. Mở file `%APPDATA%\Claude\claude_desktop_config.json`, hoặc vào Claude Desktop → Settings → Developer → Edit Config.
2. Thêm đoạn sau (nếu file đã có `mcpServers` thì chỉ thêm mục `markitdown`):

```json
{
  "mcpServers": {
    "markitdown": {
      "command": "py",
      "args": ["-3.13", "-m", "markitdown_mcp"]
    }
  }
}
```

3. Khởi động lại Claude Desktop. Claude sẽ có thêm công cụ `convert_to_markdown` để tự chuyển file trên máy bạn.

MCP này chỉ dùng trên máy cá nhân. Không mở nó ra mạng ngoài.
