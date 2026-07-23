/*
  File: bab4.typ
  Description: Bab 4 - Sitasi dan daftar pustaka, termasuk daftar
               singkatan dan lambang berbasis glosarium.
*/

= SITASI DAN DAFTAR PUSTAKA

== Menyiapkan Basis Data Pustaka (references.bib)
Seluruh pustaka yang akan disitasi didaftarkan terlebih dahulu pada berkas `references.bib` menggunakan format BibTeX. Setiap entri terdiri atas jenis pustaka (`@article`, `@book`, `@mastersthesis`, `@report`, `@web_page`, dan sebagainya), kunci sitasi unik (_citation key_), serta bidang data seperti pengarang, judul, dan tahun. Contoh:

```typc
@book{triatmodjo2010hidrologie,
  title={Hidrologi Terapan},
  author={Triatmodjo, Bambang},
  year={2010},
  publisher={Beta Offset}
}

@mastersthesis{sugianti2021,
  author  = {Sugianti, K.},
  title   = {Pengaruh kenaikan curah hujan terhadap kestabilan lereng ...},
  school  = {Universitas Indonesia},
  year    = {2021},
  type    = {Skripsi}
}
```

Kunci sitasi (mis. `triatmodjo2010hidrologie`, `sugianti2021`) inilah yang dipanggil di dalam naskah untuk menyisipkan sitasi.

== Menyisipkan Sitasi

=== Bentuk Singkat: `@key`
Cara tercepat menyisipkan sitasi adalah menuliskan tanda `@` diikuti kunci sitasi, yang akan otomatis menghasilkan kutipan dalam kurung sesuai gaya sitasi yang aktif. Misalnya, `@triatmodjo2010hidrologie` menghasilkan @triatmodjo2010hidrologie, dan biasanya diletakkan di akhir kalimat sebagai rujukan pendukung.

=== Bentuk `#cite()` dan Variasi `form`
Untuk kebutuhan yang lebih fleksibel -- misalnya menjadikan nama pengarang sebagai subjek kalimat -- gunakan fungsi `#cite()` dengan parameter `form`:

```typ
#cite(<sugianti2021>, form: "prose")
#cite(<sugianti2021>, form: "author")
#cite(<sugianti2021>, form: "year")
```

Ketiganya menghasilkan gaya kutipan yang berbeda:
+ `form: "prose"` menghasilkan #cite(<sugianti2021>, form: "prose") -- cocok digunakan sebagai subjek atau awal kalimat, sebagaimana banyak dicontohkan pada bab tinjauan pustaka laporan.
+ `form: "author"` menghasilkan #cite(<sugianti2021>, form: "author") -- hanya menampilkan nama pengarang, cocok saat tahun sudah disebutkan sebelumnya dalam paragraf yang sama.
+ `form: "year"` menghasilkan #cite(<sugianti2021>, form: "year") -- hanya menampilkan tahun, digunakan saat nama pengarang sudah disebutkan sebagai subjek kalimat secara eksplisit.

Sebagai perbandingan, bentuk singkat @triatmodjo2010hidrologie yang diletakkan di akhir kalimat setara dengan menuliskan `#cite(<triatmodjo2010hidrologie>)` tanpa parameter `form`.

== Mensitasi Banyak Sumber Sekaligus
Beberapa sumber dapat disitasi bersamaan dengan menuliskan beberapa tanda `@key` secara berurutan tanpa spasi, dipisahkan tanda `@`:

```typ
Beberapa studi terdahulu @sugianti2021@Hamzah2025@triatmodjo2010hidrologie
telah membahas topik terkait.
```

menghasilkan: Beberapa studi terdahulu @sugianti2021@Hamzah2025@triatmodjo2010hidrologie telah membahas topik terkait.

== Gaya Sitasi dan Daftar Pustaka
Format tampilan sitasi dan daftar pustaka diatur oleh parameter `style` pada fungsi `#bibliography()`. Templat ini menggunakan gaya _harvard_ (pengarang-tahun / _author-date_) secara baku. Pemanggilannya dilakukan satu kali pada `main.typ`:

```typc
#bibliography("references.bib", style: "harvard", title: "DAFTAR PUSTAKA")
```

Daftar Pustaka pada halaman terakhir laporan akan tersusun otomatis -- terurut abjad dan diformat sesuai gaya yang dipilih -- dari seluruh pustaka yang benar-benar disitasi di sepanjang naskah (bukan seluruh entri pada `references.bib`). Artinya, Anda dapat menyimpan lebih banyak pustaka pada `references.bib` daripada yang akhirnya digunakan, tanpa mengotori Daftar Pustaka dengan entri yang tidak disitasi.

Jika suatu saat gaya sitasi perlu diganti, cukup ganti nilai pada parameter `style:` dengan gaya lain -- ribuan gaya CSL untuk berbagai jurnal dan institusi tersedia secara bebas di #link("https://www.zotero.org/styles")[Zotero Style Repository].

