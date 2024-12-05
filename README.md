# Aplikasi Navigasi Lanjutan Flutter

Aplikasi ini merupakan implementasi navigasi lanjutan menggunakan Flutter yang mendemonstrasikan berbagai teknik navigasi dan fitur interaktif.

## Deskripsi

Aplikasi ini dirancang sebagai contoh penerapan navigasi multi-halaman dengan berbagai fitur, seperti navigasi antar halaman, penggunaan bottom navigation, form input yang dilengkapi dengan validasi, pembuatan kartu ucapan secara dinamis, serta halaman yang ditampilkan berdasarkan input pengguna. Selain itu, aplikasi ini juga mencakup animasi dan transisi yang memberikan pengalaman pengguna yang lebih interaktif dan menyenangkan.

## Struktur File

- `main.dart` - File utama yang menginisialisasi aplikasi dan mendefinisikan routes
- `first_screen.dart` - Halaman utama dengan bottom navigation dan menu utama
- `second_screen.dart` - Halaman kedua dengan navigasi sederhana
- `third_screen.dart` - Halaman ketiga dengan navigasi pop
- `profile_screen.dart` - Halaman profil untuk bottom navigation
- `input_card.dart` - Form input untuk kartu ucapan
- `card_gift.dart` - Halaman kartu ucapan yang menampilkan hasil input
- `close_card.dart` - Halaman penutup setelah kartu ucapan
- `input_screen.dart` - Form input jumlah halaman dinamis
- `dynamic_screen.dart` - Halaman dinamis berdasarkan input

## Cara Menjalankan Aplikasi

1. Pastikan Flutter SDK sudah terinstall
2. Clone repository ini
3. Jalankan `flutter pub get` untuk menginstall dependencies
4. Jalankan `flutter run` untuk memulai aplikasi

## Fitur-Fitur

1. **Bottom Navigation**
   - Tab Home dan Profile
   - Animasi perpindahan tab

2. **Kartu Ucapan**
   - Form input nama dan umur dengan validasi
   - Tampilan kartu ucapan yang menarik
   - Halaman konfirmasi

3. **Halaman Dinamis**
   - Input jumlah halaman
   - Navigasi next-prev antar halaman
   - Validasi batas halaman

4. **Navigasi Lanjutan**
   - Named routes
   - PopUntil untuk kembali ke halaman tertentu
   - PushNamedAndRemoveUntil untuk reset stack navigasi

## Pendekatan Pengembangan

Dalam mengembangkan aplikasi ini, saya menggunakan pendekatan:
1. Modularisasi kode dengan memisahkan setiap screen ke file terpisah
2. Implementasi state management menggunakan StatefulWidget
3. Penggunaan named routes untuk navigasi yang lebih terstruktur
4. Validasi input untuk pengalaman pengguna yang lebih baik

## Tantangan yang Dihadapi

Beberapa tantangan dalam pengembangan:
1. Mengelola state antar halaman
2. Implementasi validasi form yang robust
3. Mengatur navigasi stack yang kompleks
4. Membuat animasi yang smooth

## Fitur Lanjutan

Beberapa fitur lanjutan yang diimplementasikan:
1. Animasi container yang dapat di-expand
2. Hero animation pada tombol navigasi
3. Custom dialog untuk pesan error
4. Input formatting dan validasi
5. Dynamic route generation
6. Persistent bottom navigation

## Cara Menggunakan Aplikasi

1. **Menu Utama**
   - Pilih salah satu menu di halaman utama
   - Gunakan bottom navigation untuk berpindah ke Profile

2. **Membuat Kartu Ucapan**
   - Pilih "Buat Kartu Ucapan"
   - Isi nama dan umur
   - Lihat hasil kartu ucapan

3. **Menggunakan Halaman Dinamis**
   - Pilih "Masukkan Jumlah Halaman"
   - Input jumlah halaman yang diinginkan
   - Gunakan tombol next-prev untuk navigasi


