/*
  File: bab2.typ
  Description: Bab 2 - Penggunaan dasar sintaks Typst.
*/

= CAPAIAN PELAKSANAAN AKTUALISASI

== Realisasi Jadwal Kegiatan Aktualisasi
Pada bagian ini jelaskan pelaksanaan aktualisasi memuat uraian waktu pelaksanaan kegiatan yang telah direalisasikan selama proses aktualisasi (Mencantumkan tanggal atau rentang waktu sebenarnya saat kegiatan dilakukan). Bagian ini bertujuan untuk menunjukkan bahwa kegiatan dilaksanakan secara sistematis, terukur, dan sesuai dengan tahapan yang telah direncanakan. Apabila terdapat perubahan dari rencana awal, dijelaskan secara singkat dan rasional. Setelah itu ringkas jadwal pelaksanaan tersebut dalam tabel di bawah ini:

#set page(flipped: true)
#show figure.caption: set text(weight: "bold")
#figure(
  kind: table,
  caption: [Realisasi Kegiatan Aktualisasi],
  table(
    columns: (0.5fr, 2.5fr, 1.5fr, 3fr, 1.7fr, 3fr, 2fr),
    stroke: 0.5pt,
    inset: 6pt,
    align: (x, y) => {
      if x in (0, 1, 3, 5, 6) { left + horizon }
      else { center + horizon }
    },
    // Header berulang di setiap halaman saat tabel terpotong
    table.header(
    // Baris 1: Super-header — Rancangan dan Aktualisasi membawahi masing-masing 2 kolom
    // No., Kegiatan, dan Keterangan di-merge (rowspan:2) mencakup baris 1 dan 2
    table.cell(rowspan: 2, align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[No.]],
    table.cell(rowspan: 2, align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Kegiatan]],
    table.cell(colspan: 2, align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Rancangan]],
    table.cell(colspan: 2, align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Aktualisasi]],
    table.cell(rowspan: 2, align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Keterangan]],

    // Baris 2: Sub-header — hanya Jadwal, Target, Pelaksanaan, Realisasi
    // (No., Kegiatan, Keterangan sudah terisi oleh rowspan baris 1)
    table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Jadwal]],
    table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Target]],
    table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Pelaksanaan]],
    table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Realisasi]],

    // Baris 3: Nomor kolom (1) s.d. (7)
    table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[(1)]],
    table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[(2)]],
    table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[(3)]],
    table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[(4)]],
    table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[(5)]],
    table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[(6)]],
    table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[(7)]],
    ),
    // Akhir header berulang

    // Baris 4–10: Data kegiatan aktualisasi
    [], [Contoh Pengisian:], [], [], [], [], [],
    [1.], [Mempelajari Pedoman dan Prinsip Kearsipan Surat], [Minggu ke-1 (23-27 Februari 2026)], [#enum(numbering: "i", [Tersusunnya pedoman kearsipan surat], [Teridentifikasinya jenis-jenis surat])], [Minggu ke-1 (23-27 Februari 2026)], [#enum(numbering: "i", [Pedoman kearsipan surat telah disusun], [Jenis-jenis surat telah teridentifikasi])], [Kegiatan, tahapan, output dan pelaksanaan Sesuai Rancangan],
    [2.], [Membuat Draft Awal Digitalisasi Arsip melalui Google Sites], [Minggu ke-2 (28-31 Februari 2026)], [#enum(numbering: "i", [Tersusunnya pedoman kearsipan surat], [Teridentifikasinya jenis-jenis surat])], [Minggu ke-2 (28-31 Februari 2026)], [#enum(numbering: "i", [Pedoman kearsipan surat telah disusun], [Jenis-jenis surat telah teridentifikasi])], [Kegiatan, tahapan, output dan pelaksanaan Sesuai Rancangan],
    [3.], [Membuat rancangan web dashboard diseminasi data strategis], [Minggu ke-3 (32-35 Februari 2026)], [#enum(numbering: "i", [Rancangan web dashboard diseminasi data strategis], [Tersusunnya pedoman kearsipan surat])], [Minggu ke-3 (32-35 Februari 2026)], [#enum(numbering: "i", [Rancangan web dashboard diseminasi data strategis], [Tersusunnya pedoman kearsipan surat])], [Kegiatan, tahapan, output dan pelaksanaan Sesuai Rancangan],
    [], [], [], [], [], [], [],
    [], [], [], [], [], [], [],
    [], [], [], [], [], [], [],
  )
)

#h(-2em)
#text(weight: "bold")[Penjelasan Tabel:]

#{
  show enum: it => pad(left: 0em, it)
  set par(hanging-indent: 0em, first-line-indent: 1.5em)

  enum(
    numbering: "1.",
    [*Kegiatan 1 – Mempelajari Pedoman dan Prinsip Kearsipan Surat:*

     Kegiatan ini bertujuan untuk memahami pedoman kearsipan surat yang berlaku di BPS. Tahapan yang dilakukan meliputi pengumpulan referensi pedoman kearsipan, identifikasi jenis-jenis surat masuk dan keluar, serta penyusunan pedoman kearsipan surat yang sesuai dengan kebutuhan unit kerja.],

    [*Kegiatan 2 – Membuat Draft Awal Digitalisasi Arsip melalui Google Sites:*

     Kegiatan ini bertujuan untuk mengembangkan sistem digitalisasi arsip berbasis Google Sites. Tahapan yang dilakukan meliputi analisis kebutuhan sistem, perancangan struktur situs, pembuatan draft awal halaman arsip digital, serta pengujian fungsionalitas unggah dan akses dokumen.],

    [*Kegiatan 3 – Membuat Rancangan Web Dashboard Diseminasi Data Strategis:*

     Kegiatan ini bertujuan untuk merancang dashboard web yang menyajikan data strategis secara visual dan interaktif. Tahapan yang dilakukan meliputi identifikasi indikator data strategis, perancangan tata letak dashboard, pemilihan tools visualisasi data, serta pembuatan prototipe awal dashboard.],
  )
}
\
== Hasil Pelaksanaan Aktualisasi

Pada bagian ini deskripsikan mengenai proses detail pelaksanaan aktualisasi di tempat kerja dari mulai pelaksanaan kegiatan, tahapan kegiatan, uraian dan deskripsi dari masing-masing tahapan kegiatan, output yang dihasilkan, keterkaitan dan penerapan nilai-nilai BerAKHLAK, kendala yang terjadi, para pihak yang terlibat, konflik yang mungkin terjadi, solusi yang dilakukan serta kontribusi terhadap pencapaian visi dan misi organisasi. Pada bagian ini juga harus disertai dengan evidence based atau bukti dukung serta dokumentasi yang relevan dengan masing-masing penjelasannya. Tuangkan secara lengkap dala tabel di bawah ini (Tabel ini ambil dari Laporan Mingguan):

== Realisasi Internalisasi NND PNS (BerAKHLAK)
Pada bagian ini lakukan rekapitulasi realisasi nilai-nilai BerAKHLAK untuk masing-masing kegiatan sesuai yang sudah dilakukan saat aktualisasi dan dituliskan pada bagian sebelumnya. Selain itu juga bandingkan jumlah nilai-nilai tersebut dengan rancangan yang sudah dibuat sebelumnya.

== Dampak Aktualisasi
Berisi uraian tentang Dampak dan Nilai Tambah (lebih baik, lebih cepat, lebih akurat, lebih mudah, lebih sederhana) yang didapat dari perwuju dan Gagasan Kreatif terhadap Penyelesaian Core Isu yang diangkat, serta bandingkan kondisi sebelumnya dengan kondisi saat ini pada saat Gagasan Kreatif itu di-implementasikan. Uraikan pula perubahan signikan apa yang dirasakan oleh Peserta serta dampaknya terhadap kinerja Organisasi, jika memungkinkan sertakan pula TESTIMONI baik TERTULIS, dalam bentuk VIDEO, SURVEI, atau LAINNYA dari stakeholder terkait, Mentor, atau Pimpinan Organisasi

== Rencana Tindak Lanjut Hasil Aktualisasi
Berisi uraian tentang Tindak Lanjut yang akan dilakukan termasuk kolaborasi yang akan dilakukan terhadap pihak-pihak terkait. Agar hasil aktualisasi yang telah dilaksanakan tidak berhenti setelah kegiatan Latsar selesai. Tindak lanjut tersebut minimal direncanakan dalam 3 (tiga) tahapan waktu sebagai berikut:
#show enum: set text(weight: "bold")
+ Jangka Pendek \
  #text(weight: "regular")[#h(2em)Dalam jangka pendek, tindak lanjut yang dilakukan adalah memastikan hasil aktualisasi dapat langsung dimanfaatkan di unit kerja. Hal ini dapat dilakukan dengan penerapan awal mekanisme atau produk yang telah dihasilkan dalam kegiatan operasional sehari-hari. Selain itu, dilakukan pemantauan awal untuk melihat efektivitas penerapan hasil aktualisasi tersebut.]
+ Jangka Menengah \
  #text(weight: "regular")[#h(2em)Pada tahap jangka menengah, hasil aktualisasi diharapkan dapat diterapkan secara lebih konsisten dan terintegrasi dalam proses kerja unit. Kegiatan yang dilakukan antara lain penyempurnaan mekanisme atau produk aktualisasi berdasarkan hasil evaluasi, serta mendorong penerapannya secara berkelanjutan oleh seluruh pihak yang terkait di unit kerja.]
+ Jangka Panjang \
  #text(weight: "regular")[#h(2em)Dalam jangka panjang, hasil aktualisasi diharapkan dapat menjadi bagian dari sistem kerja yang lebih permanen di unit kerja. Oleh karena itu, diperlukan dukungan dari pimpinan untuk mengintegrasikan hasil aktualisasi tersebut dalam kebijakan atau prosedur kerja yang berlaku, sehingga dapat mendukung peningkatan kinerja organisasi secara berkelanjutan.]
