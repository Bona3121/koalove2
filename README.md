# <strong>Tugas PBP 7</strong>
<p>
1 Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.
Stateless Widget adalah widget yang mempunyai sifat tidak akan berubah, ketika disebabkan oleh interaksi user maupun variabel dan nilai yang ditemukan. Stateful Widget adalah widget yang mempunyai sifat dinamis. Widget dapat berubah dengan adanya interaksi user maupun variabel dan nilai yang ditemukan.

2 Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.
Icon untuk setiap button agar lebih mudah dipahami, text untuk menampilkan teks, dan snackbar untuk menampilkan pesan sementara ketika di tombol di tekan.

<details>
<summary><strong>View More</strong></summary>
</p>
3 Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
setState() merencanakan suatu pembaruan ke suatu state objek komponen. Ketika state berubah, komponen merespons dengan me-render ulang.
</br>
a. State Variable: Hanya variabel state yang didefinisikan dalam this.state di dalam komponen yang akan berubah. State ini biasanya berupa objek, array, atau nilai primitif yang mewakili data internal yang digunakan oleh komponen.
b. Derived UI Elements: Karena React merender ulang UI berdasarkan perubahan state, maka elemen-elemen UI yang bergantung pada nilai state juga akan diperbarui setiap kali setState() dipanggil. Misalnya, jika ada kondisi yang memengaruhi elemen visual berdasarkan state, elemen tersebut akan di-render ulang sesuai nilai state baru.
c. Props-dependent Variables: Jika state yang diubah memengaruhi nilai props yang dikirimkan ke komponen turunannya, komponen-komponen tersebut juga akan menerima props baru sesuai perubahan yang dilakukan di setState().
d. Lifecycle Methods: setState() dapat memicu beberapa metode lifecycle seperti componentDidUpdate() di class component atau efek dalam React hooks (useEffect), sehingga variabel atau proses yang bergantung pada nilai state sebelumnya bisa mengalami pembaruan.
</br></br>

4 Jelaskan perbedaan antara const dengan final.
final:
a. Variabel final dapat diinisialisasi hanya sekali, biasanya saat deklarasi atau dalam konstruktor.
b. Setelah diinisialisasi, nilai dari variabel final tidak dapat diubah selama waktu runtime program.
c. Nilai dari variabel final dapat dihitung secara dinamis selama waktu runtime, yang berarti Anda dapat menginisialisasinya dengan ekspresi atau fungsi yang dihasilkan saat aplikasi berjalan.

const :
a. Variabel const harus diinisialisasi selama waktu kompilasi, yang berarti nilai-nilai ini harus diketahui sebelum program dijalankan.
b. Nilai dari variabel const harus konstan selama waktu kompilasi dan waktu runtime, yang berarti nilai-nilai ini tidak dapat diubah setelah diinisialisasi.
c. Variabel const biasanya digunakan untuk mendefinisikan konstanta yang tetap nilainya sepanjang eksekusi program.

5 Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.
a. Pertama saya membuat aplikasi flutter 
b. Saya buat widget dan button-button yang diperlukan kemudian memberikan warna 
c. serta menampilkan snack bar di dalam button card sederhana dengan icon
</details>
</br>

# <strong>Tugas PBP 8</strong>

1  Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?
Const digunakan untuk membuat objek yang immutable dan diinisialisasi pada waktu kompilasi, bukan waktu runtime. Objek yang diberi tanda const dapat dipakai ulang (reused) di seluruh aplikasi. Const ini berfungsi untuk membuat objek yang immutable atau tidak bisa diubah. Dan const sebaiknya digunakan untuk objek yang ingin anda set immutable dan untuk pengoptimalan memori pada objek yang berulang.

2 Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!
Column adalah widget yang digunakan untuk menata elemen-elemen secara vertikal (dari atas ke bawah). Semua child widget di dalam Column akan ditampilkan dalam satu kolom, satu per satu.
Contoh :
<pre><code>
Column(
  crossAxisAlignment: CrossAxisAlignment.start, 
  children: [
    Text('Nama:'),
    TextField(),
    SizedBox(height: 10), 
    Text('Email:'),
    TextField(),
  ],
)
</code></pre>
Row adalah widget yang digunakan untuk menata elemen-elemen secara horizontal (dari kiri ke kanan). Semua child widget di dalam Row akan ditampilkan dalam satu baris horizontal.
Contoh: 
<pre><code>
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Menyebar item di antara ruang kosong
  children: [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.notifications),
  ],
)
</code></pre>
<details>
<summary><strong>View More</strong></summary>
3 Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!
Elemen input yang saya gunakan pada halaman form yang saya buat kali ini adalah name, amount, description,tapi saya tidak menggunakan seperti radio button,dropdown, switch, slider , dll.

4 Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
Iya, saya mendefinisikan tema di dalam widget MaterialApp dengan contoh implementasinya sbb:
<code>
colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 55, 111, 118)),
</code>

5 Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?
Untuk menangani navigasi dalam aplikasi saya menggunakan widget Navigator dengan menampilkan halaman-halaman yang ada kepada layar seakan sebagai sebuah tumpukan (stack). Untuk menavigasi sebuah halaman baru, kita dapat mengakses Navigator melalui BuildContext dan memanggil fungsi yang ada, seperti misalnya push(), pop(), serta pushReplacement().
</details>

</br>

# <strong>Tugas PBP 9</strong>
<p>
1.Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Model penting dibuat untuk menetapkan struktur dan tipe data yang diinginkan , hal ini juga memudahkan pemrosesan data dengan dokumentasi kode yang lebih baik dapat membantu menghindari error waktu eksekusi dan mempermudah integrasi dengan framework. 

Jika struktur dan tipe data JSON tidak sesuai dengan yang diharapkan, aplikasi bisa mengalami error runtime, crash, atau malah memproses data dengan cara yang salah, yang bisa menyebabkan bug atau kerentanan keamanan. Model membantu meminimalkan risiko ini dengan memastikan data JSON selalu sesuai dengan standar yang ditetapkan.

2.Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Http pada tugas ini digunakan untuk mengambil dan menerima data dari server serta membuat aplikasi bersifat asynchronus sehingga ketika permintaan dikirim ke server tidak akan membekukan tampilan dari aplikasi dengan menggunakan keyword await dan async

<details>
<summary><strong>View More</strong></summary>
</p>

3.Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Cookie request membantu mengelola permintaan HTTP dimana autentikasi nya berbasis pada cookie. Cookie request ini perlu dibagikan agar menjaga konsistensi sesi pengguna dengan meminimalkan pengulangan login dan otentikasi terpusat dengan membagikan hanya 1 instance saja. 

4.Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Konsepnya sebenarnya mirip dengan menampilkan di website dengan langkah langkah sbb :
a. Pengguna memasukkan data atau melakukan input data
b. Data yang masuk akan di validasi dan dikirimkan ke server atau backend
c. Data akan disimpan di server dalam bentuk json 
d. Data akan dikirimkan kembali ke aplikasi flutter apabila diminta dan memperbarui tampilan dengan tambahan data yang baru 

5.Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
a. User yang baru pertama kali ke aplikasi diharapkan melakukan register terlebih dahulu dengan mengisi form registrasi yang berupa input data. Data ini akan dikirim ke django (back end) dimana django akan memvalidasi data dan django akan mengirimkan respons sukses atau tidaknya proses tersebut.
b. Ketika sudah berhasil register, pengguna akan diarahkan ke menu login dengan memasukkan data validasi yang diminta dan data yang masuk akan dikirim ke backend untuk di cek apakah cocok dengan data pengguna yang terdaftar di database , jika tidak valid amaka django akan mengirimkan respons ke flutter untuk meminta input ulang dan jika valid django akan membuat token untuk login berikutnya. 
c. setelah pengguna berhasil login, pengguna akan melihat tampilan menu utama aplikasi, dan jika pengguna sudah selesai, pengguna dapat logout dengan mengirimkan post ke server dan menghapus sesi di djangonya. 

6.Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
a. yang pertama saya lakukan adalah dengan membuat app autentikasi di proyek django saya.
b. melakukan integrasi autentikasi proyek dengan flutter
c. membuat autentikasi logout 

</details>