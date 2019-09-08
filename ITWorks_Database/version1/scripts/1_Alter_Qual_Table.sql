-- edit qualification table to add link

ALTER TABLE `db_tafebuddy`.`qualification` 
ADD COLUMN `ProgramInfoLink` VARCHAR(200) NULL AFTER `ReqListedElectedUnits`;
