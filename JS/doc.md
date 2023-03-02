# toLowerCase() 
là một phương thức của đối tượng chuỗi (String) trong JavaScript, được sử dụng để chuyển đổi tất cả các ký tự trong chuỗi sang chữ thường.

Ví dụ, nếu bạn có một chuỗi "Hello World", bạn có thể sử dụng phương thức toLowerCase() để chuyển đổi nó thành "hello world". Ví dụ sau minh họa cách sử dụng phương thức này:

let str = "Hello World";
let lowerCaseStr = str.toLowerCase();
console.log(lowerCaseStr); // kết quả: "hello world"

Lưu ý rằng phương thức toLowerCase() chỉ chuyển đổi các ký tự từ chữ hoa sang chữ thường và không ảnh hưởng đến các ký tự khác như số, ký tự đặc biệt hoặc khoảng trắng.

# toLowerCase().split(" ")
Phương thức toLowerCase() trong JavaScript sẽ chuyển đổi tất cả các ký tự trong chuỗi sang chữ thường, trong khi phương thức split() sẽ tách một chuỗi thành một mảng các phần tử dựa trên một chuỗi phân tách được chỉ định.

Khi kết hợp cả hai phương thức, toLowerCase().split(" ") sẽ chuyển đổi tất cả các ký tự trong chuỗi thành chữ thường, sau đó tách chuỗi thành một mảng các phần tử dựa trên khoảng trắng. Điều này rất hữu ích khi bạn muốn tách một câu hoặc một đoạn văn thành các từ riêng biệt để xử lý dữ liệu.

Ví dụ, nếu bạn có một chuỗi "Hello World, How are you?", bạn có thể sử dụng phương thức toLowerCase().split(" ") để chuyển đổi tất cả các ký tự trong chuỗi sang chữ thường và sau đó tách chuỗi thành các từ riêng biệt:


let str = "Hello World, How are you?";
let lowerCaseArray = str.toLowerCase().split(" ");
console.log(lowerCaseArray); // kết quả: ["hello", "world,", "how", "are", "you?"]

# slice(1)

Trong JavaScript, slice(1) là một phương thức của đối tượng chuỗi (String) được sử dụng để trích xuất một phần của chuỗi từ vị trí index 1 đến hết chuỗi.

Phương thức slice() nhận vào hai tham số, tham số đầu tiên là vị trí bắt đầu của phần chuỗi muốn trích xuất, và tham số thứ hai (không bắt buộc) là vị trí kết thúc của phần chuỗi muốn trích xuất. Nếu tham số thứ hai không được cung cấp, phương thức sẽ trả về một phần của chuỗi bắt đầu từ vị trí được chỉ định đến hết chuỗi.

Khi sử dụng slice(1) trên một chuỗi, phương thức sẽ trích xuất phần của chuỗi từ vị trí index 1 đến hết chuỗi. Ví dụ:


let str = "Hello";
let result = str.slice(1);
console.log(result); // kết quả: "ello"
Trong ví dụ trên, phương thức slice(1) sẽ trả về chuỗi "ello", bắt đầu từ vị trí index 1 (ký tự "e") đến hết chuỗi.


# join(" ")
Trong JavaScript, join(" ") là một phương thức của mảng (Array) được sử dụng để chuyển đổi các phần tử trong mảng thành một chuỗi, với các phần tử được phân tách bằng một chuỗi phân tách được chỉ định.

Phương thức join() nhận vào một tham số là chuỗi phân tách, và trả về một chuỗi mới chứa các phần tử của mảng được nối lại với nhau, với mỗi phần tử được phân tách bằng chuỗi phân tách được chỉ định. Nếu không cung cấp chuỗi phân tách, mặc định sẽ sử dụng dấu phẩy để phân tách các phần tử.

Khi sử dụng join(" ") trên một mảng, phương thức sẽ chuyển đổi các phần tử trong mảng thành một chuỗi, với các phần tử được phân tách bằng khoảng trắng. Ví dụ:

let arr = ["apple", "banana", "orange"];
let result = arr.join(" ");
console.log(result); // kết quả: "apple banana orange"
Trong ví dụ trên, phương thức join(" ") sẽ trả về chuỗi "apple banana orange", trong đó các phần tử của mảng được nối lại với nhau bằng khoảng trắng.

# pop() trong javascript

Trong JavaScript, pop() là một phương thức được sử dụng để loại bỏ phần tử cuối cùng của một mảng và trả về giá trị của phần tử đó.

Cú pháp của phương thức pop() như sau:


array.pop()
Trong đó, array là mảng mà bạn muốn loại bỏ phần tử cuối cùng.

Khi bạn gọi phương thức pop() trên một mảng, nó sẽ xóa phần tử cuối cùng của mảng và trả về giá trị của phần tử đó. Nếu mảng rỗng, phương thức pop() sẽ trả về undefined.

Ví dụ:


let fruits = ['apple', 'banana', 'orange'];
let lastFruit = fruits.pop();

console.log(fruits); // ['apple', 'banana']
console.log(lastFruit); // 'orange'

Trong ví dụ này, pop() được sử dụng để loại bỏ phần tử cuối cùng ('orange') khỏi mảng fruits và trả về giá trị của phần tử đó. Kết quả hiển thị trong log là mảng fruits sau khi loại bỏ phần tử cuối cùng là ['apple', 'banana'], và giá trị được gán cho lastFruit là 'orange'.

# push()

Trong JavaScript, push() là một phương thức được sử dụng để thêm một hoặc nhiều phần tử vào cuối của một mảng.

Cú pháp của phương thức push() như sau:

c
Copy code
array.push(item1, item2, ..., itemN)
Trong đó, array là mảng mà bạn muốn thêm phần tử vào cuối, và item1, item2, ..., itemN là các phần tử mà bạn muốn thêm vào.

Khi bạn gọi phương thức push() trên một mảng, các phần tử được chuyển vào sẽ được thêm vào cuối mảng, và phương thức sẽ trả về độ dài mới của mảng sau khi đã thêm phần tử.

Ví dụ:

javascript
Copy code
let fruits = ['apple', 'banana'];
let newLength = fruits.push('orange', 'kiwi');

console.log(fruits); // ['apple', 'banana', 'orange', 'kiwi']
console.log(newLength); // 4
Trong ví dụ này, push() được sử dụng để thêm hai phần tử ('orange' và 'kiwi') vào cuối mảng fruits. Kết quả hiển thị trong log là mảng fruits sau khi đã thêm phần tử là ['apple', 'banana', 'orange', 'kiwi'], và giá trị được gán cho newLength là 4, tương ứng với độ dài mới của mảng.
 # function 
 Trong JavaScript, một function (hàm) là một khối mã có thể được gọi và thực thi nhiều lần trong chương trình.

Ví dụ về một hàm đơn giản trong JavaScript như sau:

function sayHello() {
  console.log("Xin chào, thế giới!");
}
Hàm này có tên là sayHello, và nó không nhận bất kỳ đối số nào. Nó chỉ đơn giản là ghi ra chuỗi "Xin chào, thế giới!" vào console khi được gọi.

Các hàm trong JavaScript cũng có thể nhận đối số và trả về giá trị. Dưới đây là ví dụ về một hàm lấy hai số làm đối số, cộng chúng lại với nhau và trả về kết quả:


function addNumbers(num1, num2) {
  return num1 + num2;
}
Hàm này có tên là addNumbers và lấy hai tham số, num1 và num2. Nó trả về tổng của hai số này khi được gọi.

Bạn có thể gọi một hàm trong JavaScript bằng cách sử dụng tên của nó theo sau là dấu ngoặc đơn, như sau:

sayHello(); // ghi chuỗi "Xin chào, thế giới!" vào console

var sum = addNumbers(5, 10); // sum sẽ là 15

#  
const
 được sử dụng để khai báo 1 hằng số, và giá trị của nó không thay đổi trong suốt chương trình.

let 
khai báo biến chỉ có thể truy cập được trong block bao quanh nó được xác định bằng cặp

var
khai báo biến có thể truy cập ở phạm vi hàm số hoặc bên ngoài hàm số, toàn cục.
