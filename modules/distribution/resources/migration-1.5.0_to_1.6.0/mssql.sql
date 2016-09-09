CREATE TABLE AM_WORKFLOWS(
    WF_ID INTEGER IDENTITY(1,1),
    WF_REFERENCE VARCHAR(255) NOT NULL,
    WF_TYPE VARCHAR(255) NOT NULL,
    WF_STATUS VARCHAR(255) NOT NULL,
    WF_CREATED_TIME DATETIME,
    WF_UPDATED_TIME DATETIME,
    WF_STATUS_DESC VARCHAR(1000),
    TENANT_ID INTEGER,
    TENANT_DOMAIN VARCHAR(255),
    WF_EXTERNAL_REFERENCE VARCHAR(255) NOT NULL UNIQUE,
    PRIMARY KEY (WF_ID)
);

ALTER TABLE AM_APPLICATION ADD APPLICATION_STATUS VARCHAR(50) DEFAULT 'APPROVED';