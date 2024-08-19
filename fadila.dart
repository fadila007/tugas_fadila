// Fungsi untuk menghitung jumlah dari sebuah set
int calculateSum(Set<int> numbersSet) {
  return numbersSet.reduce((a, b) => a + b);
}

// Fungsi utama
void main() {
  // Membuat set angka
  Set<int> numbersSet = {9, 17, 100, 12, 15};
  
  // Menampilkan angka awal
  print("Angka awal: $numbersSet");
  
  // Menghitung jumlah angka
  int sum = calculateSum(numbersSet);
  print("Jumlah angka: $sum");
  
  // Nilai batas
  int threshold = 20;
  
  // Percabangan: Memeriksa apakah jumlah lebih besar dari batas
  if (sum > threshold) {
    print("Jumlah angka lebih besar dari $threshold");
  } else {
    print("Jumlah angka tidak lebih besar dari $threshold");
  }
  
  // Perulangan: Menampilkan angka yang lebih besar dari batas
  print("Angka yang lebih besar dari $threshold:");
  for (int num in numbersSet) {
    if (num > threshold) {
      print(num);
    }
  }
  
  // Closure: Membuat fungsi pengali
  Function makeMultiplier(int factor) {
    return (int number) => number * factor;
  }
  
  // Menggunakan closure
  var double = makeMultiplier(2);
  print("2 x 5 = ${double(5)}");  // Output: 10
  
  var triple = makeMultiplier(3);
  print("3 x 5 = ${triple(5)}");  // Output: 15
}
