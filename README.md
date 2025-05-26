# Traveling Salesman Problem
<img src="https://www.lystloc.com/blog/wp-content/uploads/2024/03/Travelling-Salesman-Problem.webp" alt="Logo Ruby" width="450" />


[souce image](https://www.lystloc.com/blog/what-is-a-travelling-salesman-problem-tsp/)

## Description
Traveling Salesman Problem (TSP) adalah salah satu masalah klasik dalam ilmu komputer dan matematika kombinatorik. Masalah ini berkaitan dengan pencarian rute terpendek bagi seorang penjual keliling (salesman) yang harus mengunjungi setiap kota dalam sebuah daftar tepat satu kali, dan kemudian kembali ke kota asal. Tujuannya adalah meminimalkan total jarak perjalanan atau biaya yang dikeluarkan. TSP tergolong dalam kelas masalah NP-hard, yang berarti sangat sulit diselesaikan secara efisien ketika jumlah kota bertambah besar karena jumlah kemungkinan rute bertumbuh secara eksponensial.

Dynamic Programming (DP) adalah teknik pemrograman yang digunakan untuk menyelesaikan masalah kompleks dengan memecahnya menjadi sub-masalah yang lebih kecil dan menyimpan hasil perhitungan dari sub-masalah tersebut agar tidak dihitung ulang. Dalam konteks TSP, DP digunakan untuk menghindari perhitungan berulang pada rute yang sama dengan menggunakan struktur data seperti tabel dua dimensi dan bitmask. Solusi DP untuk TSP biasanya memiliki kompleksitas waktu sebesar O(n² × 2ⁿ), di mana n adalah jumlah kota, yang jauh lebih efisien dibandingkan eksplorasi semua permutasi rute secara brute-force. Teknik ini membuat TSP dapat diselesaikan secara lebih praktis untuk ukuran n yang kecil hingga menengah.

