# Traveling Salesman Problem
<img src="https://www.lystloc.com/blog/wp-content/uploads/2024/03/Travelling-Salesman-Problem.webp" alt="Logo Ruby" width="450" />


[souce image](https://www.lystloc.com/blog/what-is-a-travelling-salesman-problem-tsp/)

## Description
Traveling Salesman Problem (TSP) adalah salah satu masalah klasik dalam ilmu komputer dan matematika kombinatorik. Masalah ini berkaitan dengan pencarian rute terpendek bagi seorang penjual keliling (salesman) yang harus mengunjungi setiap kota dalam sebuah daftar tepat satu kali, dan kemudian kembali ke kota asal. Tujuannya adalah meminimalkan total jarak perjalanan atau biaya yang dikeluarkan. TSP tergolong dalam kelas masalah NP-hard, yang berarti sangat sulit diselesaikan secara efisien ketika jumlah kota bertambah besar karena jumlah kemungkinan rute bertumbuh secara eksponensial.

Dynamic Programming (DP) adalah teknik pemrograman yang digunakan untuk menyelesaikan masalah kompleks dengan memecahnya menjadi sub-masalah yang lebih kecil dan menyimpan hasil perhitungan dari sub-masalah tersebut agar tidak dihitung ulang. Dalam konteks TSP, DP digunakan untuk menghindari perhitungan berulang pada rute yang sama dengan menggunakan struktur data seperti tabel dua dimensi dan bitmask. Solusi DP untuk TSP biasanya memiliki kompleksitas waktu sebesar O(n² × 2ⁿ), di mana n adalah jumlah kota, yang jauh lebih efisien dibandingkan eksplorasi semua permutasi rute secara brute-force. Teknik ini membuat TSP dapat diselesaikan secara lebih praktis untuk ukuran n yang kecil hingga menengah.

## Penjelasan program
Pendekatan ini menggunakan teknik Bitmask DP, yaitu menyimpan status kota mana yang sudah dikunjungi dalam bentuk bilangan biner. Misalnya, jika terdapat 4 kota (n = 4), maka semua kombinasi kunjungan kota dapat direpresentasikan dengan 4-bit, contohnya:
- 0001 → hanya kota ke-0 dikunjungi
- 1111 → semua kota telah dikunjungi

Struktur data utama adalah tabel 2 dimensi:
```- 
dp[mask][u]
```

Langkah-Langkah Program
1. Inisialisasi:
   - Jumlah kota n diambil dari panjang matriks graph.
   - dp diisi dengan Float::INFINITY sebagai nilai awal (belum ada rute).
   - dp[1][0] = 0 berarti memulai dari kota ke-0 dengan biaya 0.
2. Iterasi Subset Kota:
   - Untuk setiap kombinasi mask (status kunjungan kota)
   - Untuk setiap kota u yang sudah dikunjungi (mask & (1 << u) ≠ 0)
   - Coba kunjungi kota lain v yang belum dikunjungi (mask & (1 << v) == 0)
   - Hitung mask baru new_mask = mask | (1 << v) dan perbarui dp[new_mask][v].
   - Lakukan perhitungan biaya baru
3. Menyelesaikan Rute:
   - Setelah semua kota dikunjungi (mask == (1 << n) - 1)
   - Cari biaya minimum untuk kembali ke kota asal (kota ke-0)
   - Ambil nilai minimum dari dp[all_visited][u] + graph[u][0].

## Cara menjalankan program
1. Unduh repository
   ```bash
    git clone https://github.com/AryoBama/PR-IF2211-STIMA.git
   ```
2. Pindah ke direktori
   ```bash
   cd PR-IF2211-STIMA/src
   ```
3. Jalankan progaram
   ```
   ruby tsp.rb
   ```
