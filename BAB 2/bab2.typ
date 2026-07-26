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
    table.cell(rowspan: 2, align: left + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Kegiatan]],
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

#set par(justify: false)
#figure(
  kind: table,
  caption: [Hasil Pelaksanaan Aktualisasi],
  table(
    columns: (1.5fr, 3fr, 3fr),
    stroke: 0.5pt,
    inset: 6pt,

    // ========== Kegiatan 1 ==========
    table.cell(align: left + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Kegiatan 1.]],
    table.cell(colspan: 2, align: left + horizon)[Kolom ini isikan dengan Nama Kegiatan],

    table.cell(align: left + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Output Kegiatan]],
    table.cell(align: left + horizon)[Kolom ini diisikan Deskripsi Output],
    table.cell(align: left + horizon)[Kolom ini diisi Bukti dukung output, tambahkan link menuju file lengkapnya],

    table.cell(rowspan: 2, align: left + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Tahapan Kegiatan, Uraian\ Kegiatan, dan Keterkaitan\ dengan BerAKHLAK]],
    table.cell(align: left + horizon)[Kolom ini diisikan Tahapan Kegiatan, uraian/penjelasan singkat tahapan kegiatan, dan keterkaitan tahapan kegiatan dengan BerAKHLAK yang dilakukan pada minggu tersebut.],
    table.cell(align: left + horizon)[Kolom ini diisikan Bukti Dukung atau Dokumentasi dari setiap Tahapan dan Uraian Kegiatan, tambahkan link menuju file lengkapnya],

    table.cell(colspan: 2, align: left + horizon)[
      #align(center)[#text(weight: "bold")[Rekapitulasi Jumlah Nilai BerAKHLAK]]
      #table(
        columns: (2fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 2fr),
        stroke: 0.5pt,
        inset: 4pt,
        table.header(
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Ber]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[A]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[K]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[H]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[A]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[L]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[K]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[TOTAL]],
        ),
        [], [], [], [], [], [], [], [],
      )
    ],

    // Baris 5: Kendala dan Solusi
    table.cell(align: left + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Kendala, Pihak-pihak Terkait,\ Konflik Kepentingan yang Terjadi, dan\ Solusi yang Dilakukan]],
    table.cell(colspan: 2, align: left + horizon)[Kolom ini diisikan kendala yang terjadi, Pihak-pihak terkait, Konflik Kepentingan yang Terjadi, dan Solusi yang Dilakukan saat pelaksanaan kegiatan aktualisasi pada kegiatan ini],

    // ========== Pemisah ==========
    table.cell(colspan: 3, align: center + horizon)[],

    // ========== Kegiatan 2 ==========
    table.cell(align: left + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Kegiatan 2.]],
    table.cell(colspan: 2, align: left + horizon)[Kolom ini isikan dengan Nama Kegiatan],

    table.cell(align: left + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Output Kegiatan]],
    table.cell(align: left + horizon)[Kolom ini diisikan Deskripsi Output],
    table.cell(align: left + horizon)[Kolom ini diisi Bukti dukung output, tambahkan link menuju file lengkapnya],

    table.cell(rowspan: 2, align: left + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Tahapan Kegiatan, Uraian\ Kegiatan, dan Keterkaitan\ dengan BerAKHLAK]],
    table.cell(align: left + horizon)[Kolom ini diisikan Tahapan Kegiatan, uraian/penjelasan singkat tahapan kegiatan, dan keterkaitan tahapan kegiatan dengan BerAKHLAK yang dilakukan pada minggu tersebut.],
    table.cell(align: left + horizon)[Kolom ini diisikan Bukti Dukung atau Dokumentasi dari setiap Tahapan dan Uraian Kegiatan, tambahkan link menuju file lengkapnya],

    table.cell(colspan: 2, align: left + horizon)[
      #align(center)[#text(weight: "bold")[Rekapitulasi Jumlah Nilai BerAKHLAK]]
      #table(
        columns: (2fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 2fr),
        stroke: 0.5pt,
        inset: 4pt,
        table.header(
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Ber]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[A]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[K]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[H]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[A]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[L]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[K]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[TOTAL]],
        ),
        [], [], [], [], [], [], [], [],
      )
    ],

    // Baris 5: Kendala dan Solusi
    table.cell(align: left + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Kendala, Pihak-pihak Terkait,\ Konflik Kepentingan yang Terjadi, dan\ Solusi yang Dilakukan]],
    table.cell(colspan: 2, align: left + horizon)[Kolom ini diisikan kendala yang terjadi, Pihak-pihak terkait, Konflik Kepentingan yang Terjadi, dan Solusi yang Dilakukan saat pelaksanaan kegiatan aktualisasi pada kegiatan ini],

    // ========== Pemisah ==========
    table.cell(colspan: 3, align: center + horizon)[],

    // ========== Kegiatan 3 ==========
    table.cell(align: left + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Kegiatan 3.]],
    table.cell(colspan: 2, align: left + horizon)[Kolom ini isikan dengan Nama Kegiatan],

    table.cell(align: left + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Output Kegiatan]],
    table.cell(align: left + horizon)[Kolom ini diisikan Deskripsi Output],
    table.cell(align: left + horizon)[Kolom ini diisi Bukti dukung output, tambahkan link menuju file lengkapnya],

    table.cell(rowspan: 2, align: left + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Tahapan Kegiatan, Uraian\ Kegiatan, dan Keterkaitan\ dengan BerAKHLAK]],
    table.cell(align: left + horizon)[Kolom ini diisikan Tahapan Kegiatan, uraian/penjelasan singkat tahapan kegiatan, dan keterkaitan tahapan kegiatan dengan BerAKHLAK yang dilakukan pada minggu tersebut.],
    table.cell(align: left + horizon)[Kolom ini diisikan Bukti Dukung atau Dokumentasi dari setiap Tahapan dan Uraian Kegiatan, tambahkan link menuju file lengkapnya],

    table.cell(colspan: 2, align: left + horizon)[
      #align(center)[#text(weight: "bold")[Rekapitulasi Jumlah Nilai BerAKHLAK]]
      #table(
        columns: (2fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 2fr),
        stroke: 0.5pt,
        inset: 4pt,
        table.header(
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Ber]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[A]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[K]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[H]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[A]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[L]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[K]],
          table.cell(align: center + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[TOTAL]],
        ),
        [], [], [], [], [], [], [], [],
      )
    ],

    // Baris 5: Kendala dan Solusi
    table.cell(align: left + horizon, fill: rgb("ebf1dd"))[#text(weight: "bold")[Kendala, Pihak-pihak Terkait,\ Konflik Kepentingan yang Terjadi, dan\ Solusi yang Dilakukan]],
    table.cell(colspan: 2, align: left + horizon)[Kolom ini diisikan kendala yang terjadi, Pihak-pihak terkait, Konflik Kepentingan yang Terjadi, dan Solusi yang Dilakukan saat pelaksanaan kegiatan aktualisasi pada kegiatan ini],

    // ============================================================
    // CARA MENAMBAH KEGIATAN BARU:
    // 1. Copy blok "Pemisah + Kegiatan N" (dari "// ==========" sampai
    //    sebelum komentar ini) dan paste di atas baris ini.
    // 2. Ganti nomor kegiatan (Kegiatan 4., Kegiatan 5., dst.).
    // 3. Setiap kegiatan terdiri dari: 1 baris pemisah + 5 baris isi.
    // ============================================================
  )
)

#set par(justify: true)
Setelah itu pada bagian akhir ini, jelaskan bagaimana kegiatan aktualisasi yang telah dilaksanakan memberikan kontribusi terhadap pencapaian visi dan misi organisasi. Uraikan keterkaitan antara hasil aktualisasi dengan upaya peningkatan kinerja, efektivitas pelaksanaan tugas, serta dukungan terhadap tujuan strategis organisasi.

#h(-2em)
#text(weight: "bold")[Penjelasan Tabel Hasil Pelaksanaan Aktualisasi:]

#{
  show enum: it => pad(left: 0em, it)
  set par(hanging-indent: 0em, first-line-indent: 1.5em)

  enum(
    numbering: "1.",
    spacing: 2em,
    [*Kegiatan 1 : Mempelajari Pedoman dan Prinsip Kearsipan Surat* \
     Untuk menyelesaikan kegiatan pertama tersebut dapat dilakukan dengan 3 (tiga) Tahapan Kegiatan, yaitu:

     #enum(
       numbering: "1)",
       spacing: 2em,
       [*Meminta arahan mentor.* \
          Pada tahap kegiatan meminta arahan mentor, penulis menyampaikan apa saja yang dilakukan pada kegiatan pertama. Kemudian mentor memberikan masukan dan arahan terhadap apa yang telah penulis sampaikan. Penulis akan melakukan penyampaian rencana kegiatan dengan ramah, sopan, santun dan jelas sebagai bentuk implementasi Berorientasi Pelayanan dan Kompeten, melakukan pencatatan sebagai bentuk implementasi Akuntabel, melakukan penyesuaian rencana jika hasil diskusi memerlukan perubahan kegiatan sebagai bentuk Loyal dan Adaptif. Output pada tahap kegiatan ini adalah arahan dan hasil diskusi bersama mentor.],

       [*Mengumpulkan informasi terkait pedoman dan prinsip kearsipan dari berbagai sumber.* \
          Pada tahap ini, penulis mengumpulkan informasi dari berbagai sumber kemudian merangkumnya untuk dipahami pada tahap selanjutnya. Pada tahap ini penulis mengimplementasikan nilai Berorientasi Pelayanan dan Akuntabel dikarenakan dapat melihat kebutuhan masyarakat dan mempertanggungjawabkan proses pengumpulan informasi.],

       [*Menyusun pedoman kearsipan surat.* \
          Pada tahap ini, penulis menyusun pedoman kearsipan surat berdasarkan hasil pengumpulan informasi dan arahan mentor. Implementasi nilai Kompeten dan Adaptif diterapkan melalui penyusunan pedoman yang sesuai dengan kebutuhan unit kerja dan perkembangan teknologi kearsipan. Output tahap ini adalah dokumen pedoman kearsipan surat yang siap digunakan.],
     )],
    [*Kegiatan 2 – Membuat Draft Awal Digitalisasi Arsip melalui Google Sites* \
     Untuk menyelesaikan kegiatan kedua tersebut dapat dilakukan dengan 4 (empat) Tahapan Kegiatan, yaitu:
     #enum(
       numbering: "1)",
       [*Menganalisis kebutuhan sistem arsip digital.* Pada tahap ini, penulis melakukan analisis terhadap kebutuhan sistem arsip digital di unit kerja, termasuk mengidentifikasi jenis dokumen yang akan diarsipkan, alur kerja pengarsipan, dan kebutuhan akses oleh berbagai pihak. Implementasi nilai Kompeten dan Adaptif diterapkan dalam memahami kebutuhan pengguna dan menyesuaikan dengan teknologi yang tersedia.],

       [*Merancang struktur Google Sites untuk arsip.* Berdasarkan hasil analisis, penulis merancang struktur situs yang mencakup halaman utama, kategori arsip, dan sistem navigasi. Implementasi nilai Berorientasi Pelayanan diwujudkan melalui perancangan yang memudahkan pengguna dalam mengakses dokumen.],

       [*Membuat draft awal halaman arsip digital.* Penulis membuat draft awal menggunakan Google Sites sesuai dengan struktur yang telah dirancang. Pada tahap ini, nilai Akuntabel diterapkan melalui dokumentasi setiap langkah pembuatan dan pencatatan kendala yang dihadapi.],

       [*Menguji fungsionalitas unggah dan akses dokumen.* Tahap terakhir adalah pengujian sistem untuk memastikan dokumen dapat diunggah dan diakses dengan baik. Implementasi nilai Harmonis dan Kolaboratif dilakukan melalui pelibatan rekan kerja dalam proses pengujian dan perbaikan berdasarkan umpan balik.],
     )],

    [*Kegiatan 3 – Membuat Rancangan Web Dashboard Diseminasi Data Strategis* \
     Untuk menyelesaikan kegiatan ketiga tersebut dapat dilakukan dengan 4 (empat) Tahapan Kegiatan, yaitu:

     #enum(
       numbering: "1)",
       [*Mengidentifikasi indikator data strategis.* Pada tahap ini, penulis mengidentifikasi indikator-indikator data strategis yang relevan dengan kebutuhan diseminasi. Implementasi nilai Berorientasi Pelayanan dan Akuntabel diwujudkan melalui pemilihan indikator yang sesuai dengan kebutuhan masyarakat dan dapat dipertanggungjawabkan.],

       [*Merancang tata letak dashboard web.* Penulis merancang tata letak dashboard yang informatif dan mudah dipahami oleh pengguna. Nilai Kompeten dan Adaptif diterapkan dalam pemilihan jenis visualisasi yang tepat untuk setiap indikator data.],

       [*Memilih tools visualisasi data yang sesuai.* Berdasarkan kebutuhan dan kompleksitas data, penulis memilih tools visualisasi data yang paling sesuai. Implementasi nilai Adaptif diwujudkan melalui eksplorasi berbagai tools dan pemilihan yang paling optimal.],

       [*Membuat prototipe awal dashboard.* Tahap akhir adalah pembuatan prototipe awal dashboard berdasarkan rancangan yang telah dibuat. Nilai Kolaboratif diterapkan melalui diskusi dengan rekan kerja untuk mendapatkan masukan perbaikan sebelum pengembangan lebih lanjut.],
     )],
  )
}

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
