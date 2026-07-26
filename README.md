# Template Laporan Hasil Aktualisasi — Typst

Template [Typst](https://typst.app) untuk menyusun Laporan Hasil Aktualisasi Pelatihan Dasar CPNS BPS. Template ini sudah mencakup format halaman, penomoran otomatis (bab, sub-bab, tabel, gambar, persamaan), daftar isi/gambar/tabel/lampiran, serta halaman sampul.

## Persyaratan

- [Typst](https://typst.app) versi 0.11.0 atau lebih baru

## Cara Mengompilasi

```
typst compile main.typ
```

## Memulai Laporan Anda

1. Sesuaikan metadata di `src/metadata.typ` (nama, NIP, jabatan, satker, golongan, angkatan, tahun, dll.).
2. Sesuaikan nama Mentor, Coach, dan Penguji pada `src/lembarPersetujuan.typ` dan `src/beritaAcaraPengesahan.typ`.
3. Isi setiap sub-bab pada folder `BAB 1/`, `BAB 2/`, dan `BAB 3/`.
4. Tambahkan lampiran pada folder `Lampiran/`.
5. Simpan gambar dan bukti dukung di folder `Figure/` masing-masing bab.

## Struktur File

| File / Folder | Keterangan |
|---|---|
| `main.typ` | File utama yang menggabungkan seluruh bagian dokumen |
| `template.typ` | Definisi fungsi template, format halaman, heading, penomoran, dan lampiran |
| `references.bib` | Basis data pustaka untuk sitasi |
| `src/metadata.typ` | Metadata laporan (judul, nama peserta, NIP, jabatan, satker, dll.) |
| `src/abstrak.typ` | Abstrak Bahasa Indonesia |
| `src/kataPengantar.typ` | Kata pengantar |
| `src/lembarPersetujuan.typ` | Lembar persetujuan Mentor dan Coach |
| `src/beritaAcaraPengesahan.typ` | Berita acara pengesahan |
| `src/daftarIsi.typ` | Daftar isi otomatis |
| `src/daftarTabel.typ` | Daftar tabel otomatis |
| `src/daftarGambar.typ` | Daftar gambar otomatis |
| `src/daftarLampiran.typ` | Daftar lampiran otomatis |
| `BAB 1/bab1.typ` | Hub: heading BAB I + include sub-bab 1.1–1.3 |
| `BAB 1/1-1-deskripsi-core-isu.typ` | Sub-bab 1.1 — Deskripsi Core Isu |
| `BAB 1/1-2-analisis-core-isu.typ` | Sub-bab 1.2 — Analisis Core Isu |
| `BAB 1/1-3-gagasan-kreatif.typ` | Sub-bab 1.3 — Gagasan Kreatif Penyelesaian Core Issue |
| `BAB 2/bab2.typ` | Hub: heading BAB II + landscape switch setelah intro 2.1 |
| `BAB 2/2-1a-realisasi-jadwal-intro.typ` | Sub-bab 2.1 — heading + intro (portrait) |
| `BAB 2/2-1b-realisasi-jadwal-tabel.typ` | Sub-bab 2.1 — tabel + penjelasan (landscape) |
| `BAB 2/2-2-hasil-pelaksanaan.typ` | Sub-bab 2.2 — Hasil Pelaksanaan Aktualisasi |
| `BAB 2/2-3-realisasi-internalisasi.typ` | Sub-bab 2.3 — Realisasi Internalisasi NND PNS (BerAKHLAK) |
| `BAB 2/2-4-dampak-aktualisasi.typ` | Sub-bab 2.4 — Dampak Aktualisasi |
| `BAB 2/2-5-rencana-tindak-lanjut.typ` | Sub-bab 2.5 — Rencana Tindak Lanjut Hasil Aktualisasi |
| `BAB 3/bab3.typ` | Hub: heading BAB III + include sub-bab 3.1–3.2 |
| `BAB 3/3-1-kesimpulan.typ` | Sub-bab 3.1 — Kesimpulan |
| `BAB 3/3-2-saran.typ` | Sub-bab 3.2 — Saran |
| `Lampiran/Lampiran.typ` | Hub: heading LAMPIRAN + setup landscape + include lampiran |
| `Lampiran/lampiran1.typ` | Lampiran 1 — Laporan Mingguan Minggu ke-1 & 2 |
| `Lampiran/lampiran2.typ` | Lampiran 2 — Laporan Mingguan Minggu ke-3 |
| `Lampiran/lampiran3.typ` | Lampiran 3 — Laporan Mingguan Minggu ke-4 |
| `Figure/` | Folder gambar global (logo, dll.) |
| `BAB */Figure/` | Folder gambar tiap bab |

### Konvensi Penamaan File

Setiap file sub-bab/lampiran mengikuti pola `<bab>-<nomor>-<nama>.typ`:

| Pola | Contoh |
|---|---|
| `X-1-*.typ` | `1-1-deskripsi-core-isu.typ` |
| `X-2-*.typ` | `2-2-hasil-pelaksanaan.typ` |
| `lampiranN.typ` | `lampiran1.typ` |

## Menambah Sub-Bab Baru

1. Buat file baru di folder bab terkait, misalnya `BAB 2/2-6-*.typ`.
2. Tulis konten sub-bab dengan `== Judul Sub-Bab`.
3. Tambahkan `#include "2-6-*.typ"` di `BAB 2/bab2.typ`.

## Menambah Lampiran Baru

1. Buat file baru di folder `Lampiran/`, misalnya `lampiran4.typ`.
2. Tulis konten dengan `= Judul Lampiran <lamp-4>`.
3. Tambahkan `#include "lampiran4.typ"` di `Lampiran/Lampiran.typ`.
