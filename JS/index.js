console.log("Hello world!");

let a=5;
let b=6;
console.log("Tong 2 so la ",a+b);

let arr = [1,2,3,4,5,6,7,9,8];
let max=arr[0];
for (let i=0;i<arr.length;i++){

  if (arr[i]>max)
  max=arr[i];
  else
  continue;
}
console.log("So lon nhat trong mang la",max);

  let min=arr[0]
  for (let i=10;i>arr.length;i--){
  if (arr[i]<min)
  min=arr[i];
}
console.log("so nho nhat trong mang la", min);

// function findNextPrime(n) {
//   let i = n + 1;
//   while (!isPrime(i)) {
//     i++;
//   }
//   return i;
// }


//   console.log("So nguyen to dau tien lon hon hoac bang 10 la: " + findNextPrime(20));

function toTitleCase(str) {
  let words = str.toLowerCase().split(" ");
  for (let i = 0; i < words.length; i++) {
    words[i] = words[i][0].toUpperCase() + words[i].slice(1);
  }
  return words.join(" ");
}

console.log(toTitleCase("hello world!"));