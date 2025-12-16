-- Keep table names consistent with creation case (`Materi`, `Nilai_Materi`)
-- DropForeignKey
ALTER TABLE `Materi` DROP FOREIGN KEY `Materi_id_kelas_id_mata_pelajaran_fkey`;

-- DropForeignKey
ALTER TABLE `Nilai_Materi` DROP FOREIGN KEY `Nilai_Materi_id_materi_fkey`;

-- DropIndex
DROP INDEX `Materi_id_kelas_id_mata_pelajaran_fkey` ON `Materi`;

-- AddForeignKey
-- Column order must match the PRIMARY KEY on `Mata_Pelajaran_Kelas` (`id_mata_pelajaran`, `id_kelas`)
ALTER TABLE `Materi` ADD CONSTRAINT `Materi_id_kelas_id_mata_pelajaran_fkey` FOREIGN KEY (`id_mata_pelajaran`, `id_kelas`) REFERENCES `Mata_Pelajaran_Kelas`(`id_mata_pelajaran`, `id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `Nilai_Materi` ADD CONSTRAINT `Nilai_Materi_id_materi_fkey` FOREIGN KEY (`id_materi`) REFERENCES `Materi`(`id_materi`) ON DELETE CASCADE ON UPDATE CASCADE;
