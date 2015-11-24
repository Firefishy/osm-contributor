DROP TABLE `POI_NODE_REF`;
DROP TABLE `POI`;
DROP TABLE `POI_TYPE_TAG`;
DROP TABLE `POI_TYPE`;
CREATE TABLE `POI_TYPE` (`ID` INTEGER PRIMARY KEY AUTOINCREMENT,  `ICON` VARCHAR, `BACKEND_ID` VARCHAR,`DESCRIPTION` VARCHAR,`KEYWORDS` VARCHAR, `NAME` VARCHAR NOT NULL, `TECHNICAL_NAME` VARCHAR NOT NULL, `USAGE_COUNT` INTEGER, `LAST_USE` BIGINT NOT NULL);
CREATE TABLE `POI_TYPE_TAG` (`ID` INTEGER PRIMARY KEY AUTOINCREMENT, `POI_TYPE_ID` BIGINT NOT NULL, `KEY` VARCHAR NOT NULL, `VALUE` VARCHAR, `ORDINAL` INTEGER NOT NULL, `MANDATORY` SMALLINT NOT NULL, `POSSIBLE_VALUES` VARCHAR);
CREATE TABLE `POI` (`ID` INTEGER PRIMARY KEY AUTOINCREMENT , `LONGITUDE` DOUBLE PRECISION NOT NULL , `LATITUDE` DOUBLE PRECISION NOT NULL , `NAME` VARCHAR , `BACKEND_ID` VARCHAR , `VERSION` VARCHAR , `UPDATE_DATE` BIGINT , `VISIBLE` SMALLINT , `UPDATED` SMALLINT NOT NULL , `WAY` SMALLINT NOT NULL , `TO_DELETE` SMALLINT NOT NULL , `LEVEL` VARCHAR , `POI_TYPE_ID` BIGINT , `OLD` SMALLINT, `OLD_POI_ID` BIGINT);
CREATE TABLE `POI_NODE_REF` (`ID` INTEGER PRIMARY KEY AUTOINCREMENT , `LONGITUDE` DOUBLE PRECISION NOT NULL , `OLD` SMALLINT, `OLD_POI_ID` BIGINT, `LATITUDE` DOUBLE PRECISION NOT NULL , `NODE_BACKEND_ID` VARCHAR NOT NULL , `ORDINAL` INTEGER NOT NULL , `POI_ID` BIGINT, `UPDATED` SMALLINT NOT NULL );