/*
  File: abstrak.typ
  Description: Berisi abstrak Laporan Hasil Aktualisasi dalam Bahasa Indonesia.
               Baris pertama ditata sebagai heading level 1 tanpa penomoran.
*/
#import "metadata.typ": *

#pagebreak()
#set page(numbering: "i")
#set page(footer: context [
  #align(center)[
    #line(length: 100%, stroke: 0.5pt)
    #counter(page).display("i")
  ]
])
#counter(page).update(1)

= ABSTRAKSI

#set par(justify: true)

#v(1cm)
#text(size: 11pt, weight: "bold")[#upper(nama).] #text(size: 11pt)["#rancanganTitle"]\
#v(0.25cm)
#context [
  #let total = counter(page).final().first()
  // TODO: update the roman numeral count ('v') manually when frontmatter pages change
  #text(size: 11pt)[v + #total halaman.]
]
#v(0.25cm)
#h(1cm)Panduan ini disusun dengan memanfaatkan templat Laporan Hasil Aktualisasi berbasis Typst sebagai wahana penulisannya sekaligus sebagai contoh langsung (_working example_) dari setiap fitur yang dijelaskan. Materi disusun secara bertahap, dimulai dari pengenalan sintaks dasar Typst -- meliputi penulisan judul, penekanan teks, daftar, mode kode, serta aturan `set` dan `show` -- dilanjutkan dengan cara menyisipkan gambar, tabel, dan persamaan matematis sebagai objek bernomor yang dapat dirujuk silang.
\
#h(1cm)Selanjutnya, panduan ini menjelaskan mekanisme sitasi dan penyusunan daftar pustaka menggunakan berkas basis data bibliografi (`references.bib`) beserta gaya sitasi standar, termasuk berbagai bentuk kutipan yang tersedia. Fitur khusus templat ini, seperti penomoran objek otomatis berbasis bab dan daftar singkatan/lambang berbasis glosarium, turut dijelaskan agar dapat dimanfaatkan secara optimal.
\
#h(1cm)Bagian akhir panduan membahas topik lanjutan yang diperlukan dalam praktik penulisan laporan, meliputi cara menambah bab baru, menyusun lampiran, kesalahan umum yang sering dijumpai beserta cara mengatasinya, serta sumber belajar tambahan untuk memperdalam penguasaan Typst. Dengan mengikuti panduan ini secara berurutan, pembaca diharapkan mampu menyusun naskah Laporan Hasil Aktualisasi yang rapi, konsisten, dan sesuai pedoman format menggunakan Typst secara mandiri.
\ \
*Kata kunci*: Typst, Laporan Hasil Aktualisasi, panduan penulisan, sitasi, figure dan tabel.
