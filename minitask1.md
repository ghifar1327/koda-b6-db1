```mermaid
erDiagram
        transaksi {
        int id PK
        int id_peminjam FK
        int id_petugas FK
        date tanggal_pinjam
        date tanggal_kembali
    }


    buku {
        int id PK
        string title
        int id_katagori FK
        int id_author FK  
        int id_transaksi Fk      
        time tanggal_release
    }

    katagori {
        int id PK
        string category_name
    }

    peminjam {
        int id PK
        string name
    }

    author {
        int id PK
        string name
    }
    rak_buku {
        int id pk
        int id_buku fk
    }
      petugas {
        int id PK
        string name
    }

    katagori ||--o{ buku : memiliki
    author ||--o{ buku : menulis
    rak_buku ||--o{ buku : penyimpan

    buku ||--o{ transaksi : dipinjam
    peminjam ||--o{ transaksi : melakukan
    petugas ||--o{ transaksi : melayani

```
# Entitas dan Penjelasan

## 1. Buku
Menyimpan informasi mengenai buku yang tersedia di perpustakaan.

Atribut:
- id (PK) → Primary Key
- title → Judul buku
- id_katagori (FK) → Relasi ke tabel kategori
- id_author (FK) → Relasi ke tabel author
- tanggal_release → Tanggal rilis buku

Relasi:
- Satu buku memiliki satu kategori
- Satu buku ditulis oleh satu author
- Satu buku disimpan dalam satu rak
- Satu buku dapat dipinjam berkali-kali melalui transaksi

---

## 2. Kategori
Menyimpan jenis atau klasifikasi buku.
Atribut:
- id (PK)
- category_name

Relasi:
- Satu kategori dapat memiliki banyak buku (1:N)

---

## 3. Author
Menyimpan data penulis buku.

Atribut:
- id (PK)
- name

Relasi:
- Satu author dapat menulis banyak buku (1:N)

---

## 4. Rak Buku
Menyimpan informasi lokasi penyimpanan buku.

Atribut:
- id (PK)
- nama_rak

Relasi:
- Satu rak dapat menyimpan banyak buku (1:N)

---

## 5. Peminjam
Menyimpan data anggota perpustakaan yang dapat meminjam buku.

Atribut:
- id (PK)
- name

Relasi:
- Satu peminjam dapat melakukan banyak transaksi (1:N)

---

## 6. Petugas
Menyimpan data pegawai perpustakaan yang melayani transaksi.

Atribut:
- id (PK)
- name

Relasi:
- Satu petugas dapat melayani banyak transaksi (1:N)

---

## 7. Transaksi
Menyimpan data peminjaman buku.

Atribut:
- id (PK)
- id_buku (FK) → Relasi ke buku
- id_peminjam (FK) → Relasi ke peminjam
- id_petugas (FK) → Relasi ke petugas
- tanggal_pinjam
- tanggal_kembali

Relasi:
- Satu transaksi berkaitan dengan satu buku
- Satu transaksi dilakukan oleh satu peminjam
- Satu transaksi dilayani oleh satu petugas
