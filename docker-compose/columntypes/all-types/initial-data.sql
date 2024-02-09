-- https://blog.devart.com/mysql-data-types.html
-- https://blog.devart.com/mysql-int-data-type.html#what_is_mysql_integer
CREATE TABLE all_char_types_table (
    varchar_column VARCHAR(255),
    char_column CHAR(10),
    text_column TEXT,
    tinytext_column TINYTEXT,
    mediumtext_column MEDIUMTEXT,
    longtext_column LONGTEXT
);

CREATE TABLE all_blob_types_table (
    blob_column BLOB,
    tinyblob_column TINYBLOB,
    mediumblob_column MEDIUMBLOB,
    longblob_column LONGBLOB
);

CREATE TABLE all_binarychar_types_table (
    binary_column BINARY(10),
    varbinary_column VARBINARY(255)
);


CREATE TABLE enum_type_table (
    size enum ('small', 'medium', 'large') NOT NULL
);

CREATE TABLE integer_types_table (
    tinyint_signed TINYINT,
    tinyint_unsigned TINYINT UNSIGNED, -- Between 0 and 255. Java uses short
    smallint_signed SMALLINT,
    smallint_unsigned SMALLINT UNSIGNED, -- Between 0 and 65535. Java uses Integer
    mediumint_signed MEDIUMINT, -- Between -8388608 and 8388607. Java uses Integer
    mediumint_unsigned MEDIUMINT UNSIGNED, -- Between 0 and 16777215. Java uses Integer
    int_signed INT,
    int_unsigned INT UNSIGNED, -- Between 0 and 4294967295. Java uses Long
    bigint_signed BIGINT,
    bigint_unsigned BIGINT UNSIGNED -- Between 0 and 18446744073709551615. Java uses BigInteger
);

CREATE TABLE boolean_types_table (
    is_active BOOLEAN -- You can use BOOLEAN or TINYINT(1)
);

CREATE TABLE bit_types_table (
    bit_column BIT(8)
);

CREATE TABLE all_numeric_types_table (
    decimal_signed DECIMAL(10,2),
    decimal_unsigned DECIMAL(10,2) UNSIGNED,
    numeric_signed NUMERIC(8,4),
    numeric_unsigned NUMERIC(8,4) UNSIGNED,
    float_signed FLOAT(8,4),
    float_unsigned FLOAT(8,4) UNSIGNED,
    double_signed DOUBLE(8,4),
    double_unsigned DOUBLE(8,4) UNSIGNED
);

CREATE TABLE datetime_types_table (
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






