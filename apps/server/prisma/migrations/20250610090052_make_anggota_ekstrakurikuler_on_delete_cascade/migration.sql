-- DropForeignKey
-- Keep table name casing consistent with creation (`Anggota_Ekstrakurikuler`)
ALTER TABLE `Anggota_Ekstrakurikuler` DROP FOREIGN KEY `Anggota_Ekstrakurikuler_id_ekstrakurikuler_fkey`;

-- AddForeignKey
ALTER TABLE `Anggota_Ekstrakurikuler` ADD CONSTRAINT `Anggota_Ekstrakurikuler_id_ekstrakurikuler_fkey` FOREIGN KEY (`id_ekstrakurikuler`) REFERENCES `Ekstrakurikuler`(`id_esktrakurikuler`) ON DELETE CASCADE ON UPDATE CASCADE;
