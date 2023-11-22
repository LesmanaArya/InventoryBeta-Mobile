Tugas 7

1. Stateful Widget adalah widget yang bisa berubah atau menyebabkan perubahan pada widget lain jika di - _interact_ oleh user, contoh : TextField, Form. Stateless Widget adalah kebalikan dari Stateful Widget, artinya widget yang tetap atau tidak pernah berubah alias immutable, contoh : Text

2.  Inkwell                 : Widget yang menciptakan area yang bisa mendeteksi sentuhan
    Container               : Tempat untuk menyimpan widget Icon dan Text
    Center                  : Widget yang akan meletakkan child nya di tengah
    Column                  : Widget yang bisa menyimpan banyak child dan menampilkannya secara veetikal
    Icon                    : Widget untuk membuat icon
    Padding                 : Widget yang menciptakan jarak antara border dengan child di dalamnya
    Text                    : Widget untuk menampilkan teks
    Scaffold                : Widget untuk kerangka aplikasi, tempat meletakkan semua widget yang ada
    Appbar                  : Widget untuk membuat bar di bagian atas halaman
    IconButton              : WIdget button yang umumnya digunakan pada Appbar
    SingleChildScrollView   : Widget box yang bisa di scroll
    Align                   : Widget yang child nya bisa di Align sesuai setting yang kita berikan
    GridLayout              : Menampilkan child nya dalam bentuk grid
    BottomNavigationBarItem : Menampilkan suatu item di bagian bawah halaman

3. Pertama-tama kita buat dulu project aplikasi dengan flutter create. Kemudian kita buat file menu.dart di folder lib, yang nantinya menu.dart ini akan berisi konten dari halaman main kita. Kemudian saya buat class InventoryItem yang merupakan class untuk komponen tombol di halaman menu ini. Atribut yang ia miliki adalah String name, Icon icon, dan Color color. Kemudian kita buat juga InventoryCard yang merupakan StatelessWidget dan memiliki atribut InventoryComponent item. Kemudian kita harus meng-override method WIdget build dari Abstract Class StatelessWidget dan kita buat sesuai requirement yang diminta. Kita set color dari Material nya seperti color dari atribut InventoryComponent item nya, kemudian buat fungsi onClick pada InventoryCard yang akan menampilkan pesan berupa Snackbar ketika di klik. Setelah itu kita buat MyHomePage yang merupakan class untuk men-generate isi dari halaman utama kita, class ini juga meng-extend StatelessWIdget. SAya tambahkan App bar yang memiliki child Appbutton sebagai tombol tambahan saja. Selanjutnya kita buat List yang berisi InventoryComponent yang diminta di requirement, yaitu add, login, dan view. Kemudian kita override Widget build seperti tadi. Kita gunakan Scaffold sebagai skeleton untuk tampilannya, setelah kita setting posisi-posisinya sesuai tutorial, tinggal kita iterasikan objek yang ada di List InventoryComponent tadi untuk ditampilkan. Terakhir saya juga menambahkan bottomNavigationBar sebagai tombol-tombol tambahan

Tugas 8
1. Navigator.Push berarti kita menambahkan route baru ke dalam stack route saat ini. Dengan Push, kita bisaa kembali lagi ke route sebelumnya dengan melakukan Pop. Navigator.PushReplacement berarti kita menambahkan route baru ke dalam stack route serta menghapus juga route di kondisi sebelumnya. Dengan PushReplacement, kita tidak bisa kembali ke halaman sebelumnya jika menggunakan Pop

2.  Single Child Layout Widget  : Widget layout yang hanya memiliki satu child. Biasa digunakan jika hanya ingin menampilkan teks atau mengatur posisi satu widget saja

    Multi Child Layout WIdget   : Widget layout yang memiliki lebih dari satu child. Biasa digunakan sebagai root dari suatu halaman atau jika ingin mengatur layout dari suatu kumpulan widget

    Sliver Widget               : Widget untuk memberikan efek scrolling *custom*

3. TextFormField. Digunakan untuk menerima input berupa text dari user

4. Clean Architecture membagi project ke dalam tiga buah layer. Layer pertama adalah Data & Development. Ini merupakan layer terluar yang terdiri dari kode sumber data seperti Rest API, local database, Firebase, atau sumber lainnnya. Layer ini juga berisi kode platform untuk membangun widgets. Yang kedua adalah Layer Presentation. Layer ini terdiri dari kode yang menjembatani komunikasi antara data dengan tampilan aplikasi yang disebut repository. Layer ini juga berisi kode untuk mengatur state management aplikasi seperti provider, controller, BLoC, dan lain sebagainya. Layer ketiga adalah Domain. Pada layer ini terdapat kode untuk business-logic aplikasi seperti entities atau models dan usecases. Masing-masing layer saling bergantung pada layer lainnya kecuali layer Domain yang merupakan kode untuk business-logic

5. Pertama-tama kita buat file left_drawer.dart sebagai file widget untuk membuat drawer. Drawer yang kita buat ini akan memiliki layout ListView dan akan berisi tombol untuk melakukan direct ke halaman utama, halaman untuk menambah item, dan halaman untuk melihat item. Selanjutnya kita buat file inventory_list_form.dart. File ini akan berisi halaman yang menampilkan filed untuk input sebuah item. Item sendiri memiliki atribut name, price, description, dan value. Untuk memvalidasi form, menyimpan hasil form, serta meng-handle state form, kita buat suatu GlobalKey dengan nama _formKey. Kita juga manfaatkan argumen onChanged yang merupakan argumen dari widget Form yang hal tersebut akan berfungsi untuk mengecek secara real time apa isi dari input field yang dimasukkan user. Lalu kita buat ssuatu tombol yang jika ditekan akan melakukan validasi terhadap GlobalKey kita tadi dan selanjutnya akan menampilkan pop up ringkasan dari atribut item yang kita masukkan tadi serta tombol tambahan yang bertuliskan "Ok", jika tombol "Ok" ditekan, maka akan direct ke halaman utama dengan memanfaatkan PushReplacement. Saya juga membuat tombol tambahan yaitu tombol Back, yang fungsinya sama dengan tombol "Ok". Untuk menampilkan list item yang sudah kita input dari form, pertama-tama saya buat dulu class Item nya di dalam file inventory_list.dart dengan field atributnya menyesuaikan dengan field yang ada pada form. Lalu saya membuat file list_item.dart yang isinya hanyalah sebuah List yang akan menampung class Item kita. Kita buat juga file display_item.dart. File ini akan melakukan iterasi terhadap List Item yangada di file list_item.dart dan kemudian akan menampilkan list atribut dari masing-masing item yang kita input melalui form. Selanjutnya kita tambahakan kode baru pada button Submit yang ada pada inventory_list_form.dart, jika kita menekan tombol tersebut, maka otomatis akan membuat instance dari class Item dan menambahkannya ke List Item yang ada di file list_item.dart.

Tugas 9
1. Pengambilan data json dapat dilakukan tanpa membuat model dulu tetapi hanya berlaku jika data nya bersifat sederhana dan tidak perlu pemrosesan yang lebih rumit lagi. Dengan menggunakan model, kita bisa lebih mudah lagi mengolah data yang lebih kompleks seperti data-data yang memiliki banyak atribut, atau data yang akan diproses lebih lanjut lagi

2. CookieRequest digunakan untuk membuat dan menyimpan sesi pengguna yang sedang login di suatu aplikasi. Tujuan dibagikannya cookie session ke semua komponen flutter adalah agar semua komponen tersebut dapat saling berinteraksi dan informasi session yang dibagikan antar mereka itu sesuai, sehingga tidak terjadi salah edit atau perubahan informasi pada data user

3. Data json dikirim dari suatu url dalam konteks tugas , url <APP_NAME>/json/, ke aplikasi flutter. DI flutter, kita akan menerima hasil url tersebut dengan Uri.parse() dan simpan ke suatu variabel, sebut saja variabel url. Kemudian kita gunakan await http.get(url, headers: {"Content-Type": "application/json"}) dan simpan ke suatu variabel yang bernama response, tujuan dari response ini adalah mendapatkan response atau hasil dari data yang dikirim oleh variabel url. Selanjutnya kita gunakan jsonDecode(utf8.decode(response.bodyBytes)); dan simpan ke suatu variabel data. Variabel data ini sudah berisi data json mengenai objek-objek yang kita butuhkan untuk nantinya kita iterasikan dan proses lebih lanjut.

4. Flutter akan menerima data input berupa username dan password dan data input tersebut akan dikirim ke server django denga Http Request yang ada di flutter. Kemudian function login yang ada di server django akan mengautentikasi dan memverifikasi data input login yang diberikan itu, untuk selanjutnya memberikan respon. Respon yang diberikan dapat berupa success, atau failed. Jika success, user akan berhasil login dan flutter akan mengeceknya dengan request.loggedIn untuk selanjutnya diarahkan ke menu dan membuat session cookies user tersebut. Jika failed, akan ditampilkan pesan gagal dan tak akan diproses lebih lanjut.

5. Inkwell                 : Widget yang menciptakan area yang bisa mendeteksi sentuhan
    Container               : Tempat untuk menyimpan widget Icon dan Text
    Center                  : Widget yang akan meletakkan child nya di tengah
    Column                  : Widget yang bisa menyimpan banyak child dan menampilkannya secara veetikal
    Icon                    : Widget untuk membuat icon
    Padding                 : Widget yang menciptakan jarak antara border dengan child di dalamnya
    Text                    : Widget untuk menampilkan teks
    Scaffold                : Widget untuk kerangka aplikasi, tempat meletakkan semua widget yang ada
    Appbar                  : Widget untuk membuat bar di bagian atas halaman
    IconButton              : WIdget button yang umumnya digunakan pada Appbar
    SingleChildScrollView   : Widget box yang bisa di scroll
    Align                   : Widget yang child nya bisa di Align sesuai setting yang kita berikan
    GridLayout              : Menampilkan child nya dalam bentuk grid
    BottomNavigationBarItem : Menampilkan suatu item di bagian bawah halaman
    LeftDrawer              : Drawer menu di sebelah kiri untuk menampilkan beberapa opsi
    SizedBox                : Box untuk memperlihatkan input data
    Row                     : Widget parent yang akan meng-align children secara horizontal

6. Deployment tugas django sebelumnya sudah berjalan dengan baik, tapi setelah saya megerjakan tugas 9 ini terdapat beberapa masalah dan sekarang sedang proses deploy ulang. Untuk halaman login, pertama-tama kita buat file login.dart yang akan berisi widget untuk meminta input username dan password untuk selanjutnya dikirim ke server django dan diproses loginnya. Jika berhasil login, server akan membuat cookie session untuk user yang login ini dan mengarahkan ke halaman utama, dan jika gagal maka akan ditampilkan pesan gagal dan user tak akan login. Selanjutnya kita buat model kustom berdasarkan model Item pada aplikasi django kemarin dengan meng-copy data json yang ditampilkan oleh url InventoryBeta/json dan paste ke https://app.quicktype.io/ untuk dibuatkan model custom untuk flutter kita berdasarkan model django yang pernah kita buat. Kemudian untuk menampilkan semua item yang pernah dibuat oleh user, kita buat file list_product.dart yang berfungsi menampilkan item-item kita, kemudian terapkan konsep yang ada pada nomor 3 tugas 9 ini untuk mendapatkan variabel data yang berisi semua objek Item milik user. Selanjutnya kita tinggal iterasikan isi dari variabel data dan tambahkan ke suatu List<Item> untuk selanjutnya ditampilkan isi dari atribut name, amount, dan description dari tiap item.  

