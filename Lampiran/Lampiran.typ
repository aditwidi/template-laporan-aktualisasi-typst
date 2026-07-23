/**
 * Berkas utama untuk menulis konten lampiran.
 * Berkas ini harus diletakkan pada akhir main.typ (Backmatter).
 * Tulis setiap lampiran sebagai heading level 1 biasa ("= Judul Lampiran"),
 * persis seperti menulis BAB pada tubuh utama -- penomoran numerik (1, 2, ...)
 * dan sub-heading (1.1, 1.2, ...) diterapkan otomatis oleh setupAppendixBody.
 *
 * Label <lamp-1>, <lamp-2>, ... wajib disertakan agar Daftar Lampiran
 * dapat menaut ke halaman yang tepat.
 */
#import "../template.typ": setupAppendixBody

#align(center + horizon)[
  *LAMPIRAN*
]

#pagebreak()
#show: setupAppendixBody

= Contoh Struktur Lampiran <lamp-1>
Bagian ini mendemonstrasikan bahwa mekanisme penomoran lampiran (1, 1.1, 2, ...) berlaku terpisah dari penomoran BAB I -- BAB V pada tubuh utama laporan. Sebagai contoh, tabel berikut diberi label dan akan bernomor "Tabel 1.1.", bukan melanjutkan nomor tabel dari BAB IV.

#figure(
  table(
    columns: (1fr, 1fr),
    stroke: (x, y) => if y == 0 { (bottom: 0.7pt + black) },
    align: left,
    table.header([*Kolom 1*], [*Kolom 2*]),
    [Contoh data], [Contoh nilai],
  ),
  caption: [Contoh tabel data pendukung pada lampiran],
)<Tabel-contoh-lampiran>

== Sub-Lampiran Pertama
Judul di atas berupa heading level 2 sehingga bernomor "1.1" secara otomatis, mengikuti judul lampiran level 1 di atasnya.

= Contoh Lampiran Kedua <lamp-2>
Lampiran baru yang ditulis sebagai heading level 1 berikutnya akan otomatis diberi nomor "2", melanjutkan pola numerik dari lampiran sebelumnya.
