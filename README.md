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
