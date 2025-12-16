-- Use correct table casing (`Nilai_Materi`, `Materi`) to be portable on case-sensitive MySQL
CREATE VIEW nilai_materi_ranked_view AS (
  SELECT
    `Nilai_Materi`.`id_materi` AS `id_materi`,
    `Nilai_Materi`.`id_siswa` AS `id_siswa`,
    `Nilai_Materi`.`nilai` AS `nilai`,
    `Materi`.`id_mata_pelajaran` AS `id_mata_pelajaran`,
    `Materi`.`id_kelas` AS `id_kelas`,
    `Materi`.`nama` AS `nama`,
    `Materi`.`detail` AS `detail`,
    row_number() over (
      PARTITION by `Nilai_Materi`.`id_siswa`,
      `Materi`.`id_mata_pelajaran`,
      `Materi`.`id_kelas`
      ORDER BY
        `Nilai_Materi`.`nilai` DESC
    ) AS `rank`
  FROM
    (
      `Nilai_Materi`
      JOIN `Materi` ON(
        `Materi`.`id_materi` = `Nilai_Materi`.`id_materi`
      )
    )
  WHERE
    `Materi`.`nama` <> 'PAS'
);

CREATE VIEW nilai_materi_view AS SELECT
  `Nilai_Materi`.`id_materi` AS `id_materi`,
  `Nilai_Materi`.`id_siswa` AS `id_siswa`,
  `Nilai_Materi`.`nilai` AS `nilai`,
  `Materi`.`id_mata_pelajaran` AS `id_mata_pelajaran`,
  `Materi`.`id_kelas` AS `id_kelas`
FROM
  (
    `Nilai_Materi`
    JOIN `Materi` ON(
      `Materi`.`id_materi` = `Nilai_Materi`.`id_materi`
    )
  );
