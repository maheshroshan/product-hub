ALTER TABLE AM_APPLICATION ADD UUID VARCHAR(256) UNIQUE;
UPDATE AM_APPLICATION SET UUID = NEWID() WHERE UUID IS NULL;
ALTER TABLE AM_SUBSCRIPTION ADD UUID VARCHAR(256) UNIQUE;
UPDATE AM_SUBSCRIPTION SET UUID = NEWID() WHERE UUID IS NULL;