-- AlterTable
-- Keep table name casing consistent with creation in 20250527225655_add_p5 (`Nilai_P5`)
ALTER TABLE `Nilai_P5` MODIFY `nilai` ENUM('MULAI_BERKEMBANG', 'SEDANG_BERKEMBANG', 'BERKEMBANG_SESUAI_HARAPAN', 'SANGAT_BERKEMBANG') NULL;
