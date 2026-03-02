# Arch Lab SQL Commerce

## Deskripsi Project

Project ini merupakan simulasi sistem transaksi sederhana (mini e-commerce) yang saya bangun menggunakan PostgreSQL sebagai bagian dari proses pembelajaran dan pendalaman SQL serta konsep database relasional.

Tujuan utama project ini adalah memahami bagaimana sistem transaksi di dunia nyata dirancang dalam bentuk tabel yang saling berelasi, menjaga integritas data, serta melakukan analisis menggunakan query SQL.

Project ini bukan hanya latihan SELECT sederhana, tetapi mencakup perancangan struktur database, relasi antar tabel, constraint, hingga query analisis bisnis.

---

## Tujuan Pembelajaran

Melalui project ini saya mempelajari:

- Konsep Relational Database
- Perancangan struktur tabel yang terhubung
- Primary Key dan Foreign Key
- Constraint (NOT NULL, UNIQUE, CHECK)
- Referential Integrity
- Multi-table JOIN
- Aggregate Function (SUM, GROUP BY)
- Simulasi transaksi dan analisis data

Project ini dibuat sebagai bagian dari penguatan kompetensi di bidang database dan SQL.

---

## Struktur Database

Database ini terdiri dari 4 tabel utama:

### 1. customers
Menyimpan data pelanggan.

Kolom penting:
- customer_id (Primary Key)
- name
- email (Unique)
- created_at

Relasi:
Satu customer dapat memiliki banyak transaksi (orders).

---

### 2. products
Menyimpan data produk atau barang.

Kolom penting:
- product_id (Primary Key)
- name
- price (memiliki CHECK > 0)
- stock (memiliki CHECK >= 0)

Validasi dilakukan langsung di level database untuk menjaga kualitas data.

---

### 3. orders
Menyimpan data transaksi.

Kolom penting:
- order_id (Primary Key)
- customer_id (Foreign Key)
- order_date

Relasi:
Satu order hanya milik satu customer.
Satu customer dapat memiliki banyak order.

---

### 4. order_items
Menyimpan detail produk dalam setiap transaksi.

Kolom penting:
- order_item_id (Primary Key)
- order_id (Foreign Key)
- product_id (Foreign Key)
- quantity (CHECK > 0)
- price

Tabel ini berfungsi sebagai penghubung antara orders dan products (many-to-many relationship yang dipecah menjadi dua one-to-many).

---

## Relasi Antar Tabel

Struktur relasi secara logis:

customers  
→ orders  
→ order_items  
← products  

Konsep yang diterapkan adalah:
- One-to-Many Relationship
- Many-to-Many melalui tabel penghubung
- Referential Integrity menggunakan Foreign Key

---

## Fitur Query Analisis

Project ini juga mencakup beberapa query analisis, seperti:

1. Menampilkan detail transaksi lengkap dengan JOIN 4 tabel.
2. Menghitung total pengeluaran per customer.
3. Menentukan produk yang paling banyak terjual.
4. Menggunakan SUM, GROUP BY, dan ORDER BY untuk analisis sederhana.

Ini mensimulasikan kebutuhan laporan penjualan dalam sistem nyata.

---

## Cara Menjalankan Project

1. Jalankan file `schema.sql` untuk membuat struktur tabel.
2. Jalankan file `seed_data.sql` untuk mengisi data contoh.
3. Jalankan file `analysis_queries.sql` untuk melihat hasil analisis.

Project ini menggunakan PostgreSQL.

---

## Catatan Pembelajaran

Melalui project ini saya belajar:

- Database bukan hanya menyimpan data, tetapi menjaga konsistensi dan integritas.
- Foreign key melindungi hubungan antar tabel.
- Error SQL adalah bagian penting dari proses belajar.
- Struktur database yang baik akan memudahkan analisis dan pengembangan sistem.

Project ini akan terus dikembangkan dengan:
- Index untuk optimasi performa
- View
- Trigger
- Simulasi transaksi yang lebih kompleks

---

## Penutup

Project ini merupakan bagian dari perjalanan saya dalam memperdalam keahlian di bidang SQL dan database, khususnya dalam memahami bagaimana sistem transaksi dirancang secara profesional dan terstruktur. 

2 march 2026
