-- CreateTable
CREATE TABLE `Materi` (
    `id_materi` VARCHAR(36) NOT NULL,
    `nama` VARCHAR(191) NOT NULL,
    `detail` VARCHAR(191) NOT NULL,
    `id_mata_pelajaran` VARCHAR(36) NOT NULL,
    `id_kelas` VARCHAR(36) NOT NULL,

    PRIMARY KEY (`id_materi`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Nilai_Materi` (
    `id_materi` VARCHAR(36) NOT NULL,
    `id_siswa` VARCHAR(36) NOT NULL,
    `nilai` INTEGER NOT NULL,

    PRIMARY KEY (`id_materi`, `id_siswa`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
-- Ensure the column order in the FK matches the primary key on `Mata_Pelajaran_Kelas`,
-- which is defined as PRIMARY KEY (`id_mata_pelajaran`, `id_kelas`)
ALTER TABLE `Materi` ADD CONSTRAINT `Materi_id_kelas_id_mata_pelajaran_fkey` FOREIGN KEY (`id_mata_pelajaran`, `id_kelas`) REFERENCES `Mata_Pelajaran_Kelas`(`id_mata_pelajaran`, `id_kelas`) ON DELETE RESTRICT ON UPDATE CASCADE;
