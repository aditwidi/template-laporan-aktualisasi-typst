# Panduan Penggunaan Typst untuk Laporan Hasil Aktualisasi

Repositori ini adalah templat (dan sekaligus contoh langsung / _working example_) penggunaan [Typst](https://typst.app) untuk menyusun Laporan Hasil Aktualisasi Pelatihan Dasar CPNS.

Naskah panduan lengkapnya ada pada BAB I -- BAB III (lihat `main.pdf` hasil kompilasi, atau baca langsung berkas `.typ` di folder `BAB 1/` -- `BAB 3/`). Topik yang dibahas:

- BAB I -- Pendahuluan: apa itu Typst, instalasi, struktur berkas templat.
- BAB II -- Penggunaan dasar Typst: heading, list, mode kode, aturan `set`/`show`, persamaan.
- BAB III -- Menambahkan figure, tabel, dan persamaan beserta penomoran otomatis.

## Persyaratan

- [Typst](https://typst.app) versi 0.11.0 atau lebih baru

## Cara Mengompilasi

```
typst compile main.typ
```

## Menggunakan Repositori Ini sebagai Templat Laporan

Anda dapat menjadikan repositori ini sebagai titik awal penulisan Laporan Hasil Aktualisasi Anda:

1. Sesuaikan informasi laporan di `src/metadata.typ` (coverTitle, coverSubTitle, rancanganTitle, nama, nip, jabatan, satker, golongan, angkatan, tahun, dll.).
2. Sesuaikan nama Mentor dan Coach pada `src/lembarPersetujuan.typ` dan format sitasi pada `src/pedoman.typ`.
3. Ganti isi `BAB 1/bab1.typ` -- `BAB 3/bab3.typ` dengan draf laporan Anda yang sebenarnya.
4. Simpan gambar tiap bab di dalam folder `Figure/` masing-masing bab.

## Struktur File

| File / Folder                  | Keterangan                                              |
|---------------------------------|---------------------------------------------------------|
| `main.typ`                      | File utama yang menggabungkan seluruh bagian dokumen    |
| `template.typ`                  | Definisi fungsi template dan format halaman             |
| `src/metadata.typ`              | Metadata laporan (judul, nama peserta, NIP, dll.)       |
| `src/abstrak.typ`               | Abstrak Bahasa Indonesia                                |
| `src/lembarPersetujuan.typ`     | Lembar persetujuan Mentor dan Coach                     |
| `src/beritaAcaraPengesahan.typ` | Berita acara pengesahan                                 |
| `src/kataPengantar.typ`         | Kata pengantar                                          |
| `src/pedoman.typ`               | Pedoman penggunaan laporan                              |
| `src/daftarIsi.typ`, `src/daftarGambar.typ`, `src/daftarTabel.typ`, `src/daftarLampiran.typ` | Daftar isi/gambar/tabel/lampiran otomatis |
| `BAB 1/` -- `BAB 3/`             | Folder tiap bab, masing-masing dengan `Figure/` sendiri |
| `Lampiran/`                     | Berkas dan gambar untuk bagian lampiran                 |
| `references.bib`                | Basis data pustaka untuk sitasi                         |

## Menambah Bab Baru

Buat folder dan berkas baru, misalnya `BAB 4/bab4.typ`, kemudian tambahkan baris berikut di `main.typ`:

```typst
#include "BAB 4/bab4.typ"
```

## Kontributor

- [BetonBertulang](https://github.com/BetonBertulang) (templat asli)
