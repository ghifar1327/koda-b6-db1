CREATE TABLE kategori (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE author (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE peminjam (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE petugas (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255)
);


CREATE TABLE transaksi (
    id SERIAL PRIMARY KEY,
    id_peminjam INT REFERENCES peminjam(id),
    id_petugas INT REFERENCES petugas(id),
    tanggal_pinjam DATE,
    tanggal_dikembalikan DATE
);

CREATE TABLE buku (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255),
    id_kategori INT REFERENCES kategori(id),
    id_author INT REFERENCES author(id),
    id_transaksi INT REFERENCES transaksi(id),
    release_at DATE
);
SELECT * from buku;
ALTER TABLE buku
DROP COLUMN id_transaksi;
ALTER TABLE buku
ADD COLUMN id_rak INT REFERENCES rak_buku(id);

CREATE TABLE rak_buku(
    id SERIAL PRIMARY KEY,
    name VARCHAR(225)
);
ALTER TABLE rak_buku
ADD column lokasi VARCHAR(225)

CREATE TABLE detail_pinjaman(
    id SERIAL PRIMARY KEY,
    id_transaksi INT REFERENCES transaksi(id),
    id_buku INT REFERENCES buku(id),
    quantity INT,
    rental_price INT,
    subtotal INT
);
ALTER TABLE detail_pinjaman
DROP COLUMN subtotal

CREATE TABLE history(
    id SERIAL PRIMARY KEY,
    id_transaksi INT REFERENCES transaksi(id),
    status VARCHAR(255),
    update DATE
);

SELECT * FROM kategori;
SELECT * FROM author;
SELECT * FROM peminjam;
SELECT * FROM petugas;
SELECT * FROM transaksi;
SELECT * FROM buku;
SELECT * FROM rak_buku;
SELECT * FROM detail_pinjaman;
SELECT * FROM history;

-- INSERT INTO kategori (name) VALUES
-- ('Novel'),
-- ('Teknologi'),
-- ('Sejarah'),
-- ('Agama'),
-- ('Sains'),
-- ('Komik'),
-- ('Bisnis'),
-- ('Psikologi'),
-- ('Pendidikan'),
-- ('Biografi');


-- INSERT INTO author (name) VALUES
-- ('Tere Liye'),
-- ('Andrea Hirata'),
-- ('Raditya Dika'),
-- ('Pramoedya Ananta Toer'),
-- ('Habiburrahman El Shirazy'),
-- ('Yuval Noah Harari'),
-- ('Dewi Lestari'),
-- ('Ahmad Fuadi'),
-- ('Eko Kurniawan'),
-- ('Najwa Shihab');

-- INSERT INTO peminjam (name) VALUES
-- ('Andi'),
-- ('Budi'),
-- ('Citra'),
-- ('Dewi'),
-- ('Eko'),
-- ('Farhan'),
-- ('Gina'),
-- ('Hendra'),
-- ('Intan'),
-- ('Joko');

-- INSERT INTO petugas (name) VALUES
-- ('Admin 1'),
-- ('Admin 2'),
-- ('Rudi'),
-- ('Sinta'),
-- ('Bagas');

-- INSERT INTO transaksi (id_peminjam, id_petugas, tanggal_pinjam, tanggal_dikembalikan) VALUES
-- (1, 1, '2026-01-01', '2026-01-08'),
-- (2, 2, '2026-01-02', '2026-01-09'),
-- (3, 3, '2026-01-03', '2026-01-10'),
-- (4, 4, '2026-01-04', '2026-01-11'),
-- (5, 5, '2026-01-05', '2026-01-12'),
-- (6, 1, '2026-01-06', '2026-01-13'),
-- (7, 2, '2026-01-07', '2026-01-14'),
-- (8, 3, '2026-01-08', '2026-01-15'),
-- (9, 4, '2026-01-09', '2026-01-16'),
-- (10, 5, '2026-01-10', '2026-01-17');


-- INSERT INTO buku (title, id_kategori, id_author, id_rak, release_at) VALUES
-- ('Laskar Pelangi', 1, 2, 1, '2005-09-01'),
-- ('Bumi Manusia', 3, 4, 2, '1980-01-01'),
-- ('Negeri 5 Menara', 9, 8, 3, '2009-01-01'),
-- ('Ayat-Ayat Cinta', 4, 5, 4, '2004-01-01'),
-- ('Sapiens', 5, 6, 5, '2011-01-01'),
-- ('Perahu Kertas', 1, 7, 3, '2009-01-01'),
-- ('Koala Kumal', 6, 3, 2, '2015-01-01'),
-- ('Filosofi Teras', 8, 9, 4, '2018-01-01'),
-- ('Catatan Najwa', 10, 10, 2, '2016-01-01'),
-- ('Atomic Habits', 7, 1, 5, '2018-01-01');

-- INSERT INTO rak_buku (name, lokasi) VALUES
-- ('Rak A', 'Lantai 1'),
-- ('Rak B', 'Lantai 1'),
-- ('Rak C', 'Lantai 2'),
-- ('Rak D', 'Lantai 2'),
-- ('Rak E', 'Lantai 3');

-- INSERT INTO detail_pinjaman 
-- (id_transaksi, id_buku, quantity, rental_price) VALUES
-- (1, 41, 1, 5000),
-- (2, 42, 1, 6000),
-- (3, 43, 2, 4000),
-- (4, 44, 1, 7000),
-- (5, 45, 1, 10000),
-- (6, 46, 1, 5000),
-- (7, 47, 1, 4500),
-- (8, 48, 2, 6000),
-- (9, 49, 1, 5500),
-- (10, 50, 1, 8000);

-- INSERT INTO history (id_transaksi, status, update) VALUES
-- (1, 'dikembalikan', '2026-01-08'),
-- (2, 'dikembalikan', '2026-01-09'),
-- (3, 'dikembalikan', '2026-01-10'),
-- (4, 'dikembalikan', '2026-01-11'),
-- (5, 'dikembalikan', '2026-01-12'),
-- (6, 'dikembalikan', '2026-01-13'),
-- (7, 'dipinjam', '2026-01-14'),
-- (8, 'dipinjam', '2026-01-15'),
-- (9, 'dipinjam', '2026-01-16'),
-- (10, 'dipinjam', '2026-01-17');

