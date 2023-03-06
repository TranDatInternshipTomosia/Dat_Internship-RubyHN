file = File.new("Note-ruby.txt", "r+")
file.puts("Tran Viet Dat")
file << "Tran\nViet\nDat"
while line = file.gets()
  puts line
end
file.close

File.readlines("Note-ruby.txt").each { |line| puts "------ #{line}" }
File.delete("test.txt")
p File.size("Note-ruby.txt")
puts Time.now
require "csv"

data = CSV.read("Fifa22.csv")
puts data
data.each do |row|
  puts row[1] + " is " + row[2] + " years old" + row[3] + " is " + row[4] + " years old" + row[5] + " is " + row[6] + " years old" + row[7] + " is " + row[8] + " years old"
end

data = File.read("./Note-ruby.txt")
puts data

require "csv"
average_money_spent = Array.new
CSV.foreach("Fifa22.csv", converters: :numeric) do |row|
  average_money_spent << row[2] / row[1]
end
customers_array = CSV.read("test.txt")
customers_array.each do |customer|
  customer << average_money_spent.shift
end
CSV.open("our-new-customers-file.csv", "w") do |csv_object|
  customers.array.each do |row_array|
    csv_object << row_array
  end
end

r = File.open("Note-ruby.txt", "r") # mo file de doc neu ko co file bao loi
puts r
w = File.open("test.txt", "w") # mo file de ghi neu ko co tao file moi de ghi de` len
w.close
a = File.open("test.txt", "a") # mo file de gi tiep ko co file tao file moi
a.puts("tran viet dat")
puts a
rp = File.open("test.txt", "r+") #Mở file để đọc và ghi. Nếu file không tồn tại, lệnh đọc sẽ bị lỗi.
wp = File.open("test.txt", "w+") # Mở file để đọc và ghi. Nếu file không tồn tại, file sẽ được tạo ra. Nếu file đã tồn tại, nội dung của file sẽ bị xóa đi trước khi ghi.
ap = File.open("test.txt", "a+") #Chế độ đọc/ghi (read and write): Mở file để đọc và ghi tiếp vào nội dung đã có trong file. Nếu file không tồn tại, file sẽ được tạo ra.
rp.puts("tran viet dat")
ap.puts("chế độ đọ") # them vao file

ap = File.open("test.txt", "a+")
puts ap.size  # kich thuoc file
# ap.write("foo") #
puts ap.read(3) # tra ve 3 tu dau tien
puts ap.read(3)
puts ap.read(3)
puts ap.read(3)
puts ap.read(3)
puts ap.seek(8)
ap.flush
puts ap.pos = 2 # doc vi tri ban dau cua tep
puts ap.readlines # doc tep voi khoang cach le
puts ap.rewind #=> di chuyển con trỏ trở lại vị trí bắt đầu của tệp.

ap.write("ddadt") # them noi tiep vao tep
path = "\nNote-ruby.txt"
ap.write(path)
File.delete("test1.txt") # xoa file

puts Dir.glob("**") #ệt kê tất cả các file trong thư mục hiện tại và tất cả các thư mục con.
puts Dir.glob("*", File::FNM_DOTMATCH)
puts Dir.glob("*.rb") # Liệt kê những file có đuổi là rb trong thư mục hiện tai.
puts Dir.glob(["*.txt", "*.rb"]) # Liệt kê nhữn file có đuổi txt và rb trong thư mục hiện tai
puts Dir.glob("*.[a-z][a-z]") #Liệt kê nhữn file có duoi 2 chu trong thư mục hiện tai
puts Dir.glob("*.{txt,csv}") # Trả về những file txt và csv

rb = File.join("**", "*.rb")
puts Dir.glob(rb) # lay tat ca cac file va floder co duoi .rb
puts Dir.glob("{*,.*}") { |f| puts f }
i = 0
Dir.foreach (".") do |f| # "."la thu muc hien tai dang dung
  puts "so #{i += 1} filenames: #{f} "
end # vong lap in ra danh sach cac file va floder nam trong thu muc
puts Dir.pwd # tra ve duong dan thu muc dang dung
puts Dir.home # tra ve duong dan thu muc nguoi dung
Dir.mkdir("Ruby6", 9) # tao them  thu muc moi tham so thu 2 la quyen truy cap thu muc do
Dir.rmdir("Ruby6") # xoa 1 thu muc hien co trong floder
puts Dir.exist?(".vscode") # kiem tra xem THU MUC co ton tai hay khong
home = Dir.home
puts File.join(home, ".ssh") # them .ssh vao cuoi duong dan
puts File.absolute_path("ssh") # lay duong dan tuyet doi
puts File.basename("/home/tomosiavn/Documents/Dat_Internship-RubyHN/learn-ruby") # lay file basename
puts File.expand_path("~/.vscode")

puts Dir.entries(".") # in ra danh sach cac file co trong thu muc hien tai

puts Dir.foreach("/home/tomosiavn/Documents/Dat_Internship-RubyHN/learn-ruby")
puts Dir.getwd # tra ve duong dan thu muc dang dung
# puts Dir.mkdir(File.join("/home/tomosiavn/Documents/Dat_Internship-RubyHN/" ".foo"), 0700)

Dir.open(".vscode") do |d|
  d.each do |f|
    puts f
  end
end
Dir.unlink(".rb")

d = Dir.new("/home/tomosiavn/Documents/Dat_Internship-RubyHN/")
puts d.tell
puts File.atime("/home/tomosiavn/Documents/Dat_Internship-RubyHN/") # thoi gian tao file
f = File.open("test.txt", "w")
f.write ("Hello, world!")
puts File.blockdev?("test.txt") # kiem tra xem file la 1 khoi tao hay ko

puts File.chmod(0, "Note-ruby") # thay doi quyen truy cap tep
puts File.chown(-1, 100, "file.rb") # thay doi va nhom va quyen truy cap tep
puts File.ctime("file.rb") # hien thi thoi gian truy cap tep

puts File.delete("tss.txt")
f = File.new("tss.txt", "a")
File.f
puts File.directory?("ruby") # kiem tra xem thu muc(true) hay file(false)
puts File.executable?("Module.rb") # kiem tra xem tep co kha dung hay ko
puts File.file?("ruby.rb") #  kiem tra xem file co ton tai  hay ko

puts File.fnmatch("*.rb", "ruby.rb", File::FNM_DOTMATCH) # Kiem tra 1 chuoi co khop voi 1 bieu thuc chinh quy hay khong
puts File.ftype(".vscode") # xac dinh loai tep
puts IO.popen({ "FOO" => "bar" }, "ruby", "r+") do |pipe|
  pipe.puts "puts ENV['FOO']"
  pipe.close_write
  pipe.gets
end

puts IO.popen("uname") do |pipe|
  pipe.readlines
end
puts IO.popen("/Dat_Internship-RubyHN/sh", "r+") do |pipe|
  pipe.puts("ls")
  pipe.close_write
  $stderr.puts pipe.readlines.size
end

# Set IO encoding.
IO.popen("nkf -e file.rb", :external_encoding => "EUC-JP") { |nkf_io|
  euc_jp_string = nkf_io.read
}

# Merge standard output and standard error using Kernel#spawn option. See Kernel#spawn.
IO.popen(["ls", "/", :err => [:child, :out]]) do |io|
  ls_result_with_error = io.read
end

# Use mixture of spawn options and IO options.
IO.popen(["ls", "/"], :err => [:child, :out]) do |io|
  ls_result_with_error = io.read
end

f = IO.popen("uname")
p f.readlines
f.close
puts "Parent is #{Process.pid}"
IO.popen("date") { |f| puts f.gets }
IO.popen("-") { |f| $stderr.puts "#{Process.pid} is here, f is #{f.inspect}" }
p $?
IO.popen(%w"sed -e s|^|<foo>| -e s&$&;zot;&", "r+") { |f|
  f.puts "bar"; f.close_write; puts f.gets
}
puts IO.read("| cat Note-ruby.txt")
# => "First line\nSecond line\n\nThird line\nFourth line\n
