-- DropForeignKey
-- Keep table name casing consistent with creation (`Guru_Mata_Pelajaran`)
ALTER TABLE `Guru_Mata_Pelajaran` DROP FOREIGN KEY `Guru_Mata_Pelajaran_id_mata_pelajaran_fkey`;

-- AddForeignKey
ALTER TABLE `Guru_Mata_Pelajaran` ADD CONSTRAINT `Guru_Mata_Pelajaran_id_mata_pelajaran_fkey` FOREIGN KEY (`id_mata_pelajaran`) REFERENCES `Mata_Pelajaran`(`id_mata_pelajaran`) ON DELETE CASCADE ON UPDATE CASCADE;
