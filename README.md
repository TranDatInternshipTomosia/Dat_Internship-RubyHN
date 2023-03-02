Report 2023-02-20
  - Task 1 cai cac git va cong cu lam viec (done)
  - Task 2 tao tai khoan github (done)
  - Task 3 tim hieu cac cau lenh git (reviewing)
  - Task 4 tao project ten cua minh (done)
Nexday:
  - Task 1 On tap lai HTLM, CSS and JS
  - Task 2 Tim hieu ve Ruby
  - Task 3 Cai dat moi truong cho ruby
Tiến độ: Tiến độ thực hiện task
Vấn đề: Chua quen he dieu hanh ubuntu thao tac voi he dieu hanh con nhieu han che

# Dat_Internship-RubyHN
# tao username : $ git config --global "Tran Dat"
# tao email : $ git config --global "tt.dat.tran@tomosia.com";
# tao nhanh : git branch <new branch>
# chuyen nhanh branch : git checkout <name branch>
# Xoa bnhanh: git checkout -d <name branch>
# cap nhat all file : git add .
# cap nhat 1 file : git add <ten file>
# kiem tra thay doi trong file : git status
# day file len : git commit -m "noi dung"
# cap nhat len server : git push origin <name branch>
# kiem tra lich su thay doi: git log
# git push origin main :Chuyển sang nhánh "main" trong kho lưu trữ cục bộ, nhận tất cả các commit và tìm nhánh "main" trong kho chứa từ xa tên là "origin". Thêm tất cả các commit không có trong nhánh đó và báo cho tôi biết khi nào hoàn tất.
Bằng cách chỉ định main trong tham số "vị trí",ta báo với git nơi mà commit xuất phát và nơi chúng sẽ đến. Về căn bản nó là "địa điểm" để đồng bộ hóa 2 kho chứa.
# git fetch origin <vi tri> Ta chỉ tải xuống commit ở trên nhánh foo và đặt chúng ở nhánh o/foo
# git fetch origin <tham so>~vi tri:<tham so>:day len cac nhanh o tren
# git push origin :side xoa ca 2 nhanh
# git fetch origin :bugFix
# git pull origin main:Bằng cách chỉ định nhánh main ta tải các commit xuống nhánh o/main như thường lệ. Sau đó hợp nhất nhánh o/main vào nhánh cục bộ mà ta đang đứng, nhánh mà không phải nhánh cục bộ main. Nhờ vậy mà ta có thể chạy cùng một lệnh git pull(với cùng tham số) nhiều lần ở những vị trí khác nhau để áp dụng cùng cập nhật lên các nhánh khác nhau
