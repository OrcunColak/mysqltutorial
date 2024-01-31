-- https://blog.devart.com/mysql-data-types.html
create TABLE all_char_types_table (
    varchar_column VARCHAR(255),
    char_column CHAR(10),
    text_column TEXT,
    tinytext_column TINYTEXT,
    mediumtext_column MEDIUMTEXT,
    longtext_column LONGTEXT
);

create TABLE all_blob_types_table (
    blob_column BLOB,
    tinyblob_column TINYBLOB,
    mediumblob_column MEDIUMBLOB,
    longblob_column LONGBLOB
);

create TABLE all_binarychar_types_table (
    binary_column BINARY(10),
    varbinary_column VARBINARY(255)
);


create TABLE enum_type_table (
    size enum ('small', 'medium', 'large') NOT NULL
);

create TABLE integer_types_table (
    tinyint_signed TINYINT,
    tinyint_unsigned TINYINT UNSIGNED,
    smallint_signed SMALLINT,
    smallint_unsigned SMALLINT UNSIGNED,
    mediumint_signed MEDIUMINT,
    mediumint_unsigned MEDIUMINT UNSIGNED,
    int_signed INT,
    int_unsigned INT UNSIGNED,
    bigint_signed BIGINT,
    bigint_unsigned BIGINT UNSIGNED
);

create TABLE boolean_types_table (
    is_active BOOLEAN -- You can use BOOLEAN or TINYINT(1)
);

create TABLE bit_types_table (
    bit_column BIT(8)
);

create TABLE all_numeric_types_table (
    decimal_signed DECIMAL(10,2),
    decimal_unsigned DECIMAL(10,2) UNSIGNED,
    numeric_signed NUMERIC(8,4),
    numeric_unsigned NUMERIC(8,4) UNSIGNED,
    float_signed FLOAT(8,4),
    float_unsigned FLOAT(8,4) UNSIGNED,
    double_signed DOUBLE(8,4),
    double_unsigned DOUBLE(8,4) UNSIGNED
);

create TABLE datetime_types_table (
    -- Stores date values in the format 'YYYY-MM-DD'.
    date_column DATE,
    --  Stores time values in the format 'HH:MM:SS'.
    time_column TIME,
    --  Stores date and time values in the format 'YYYY-MM-DD HH:MM:SS'.
    datetime_column DATETIME,
    -- Similar to DATETIME but automatically converts the time to UTC for storage and converts it back to the current time zone when retrieved.
    timestamp_column TIMESTAMP,
    -- Stores 4-digit year values
    year_column YEAR
);

CREATE TABLE json_types_table (
    json_data JSON
);

CREATE TABLE geometric_types_table (
    point_column POINT,
    linestring_column LINESTRING,
    polygon_column POLYGON,
    geometry_column GEOMETRY,
    geometrycollection_column GEOMETRYCOLLECTION,
    multipoint_column MULTIPOINT,
    multilinestring_column MULTILINESTRING,
    multipolygon_column MULTIPOLYGON
);






