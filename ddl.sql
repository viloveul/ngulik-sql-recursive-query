CREATE TABLE tbl_jabatan (
	id varchar NOT NULL,
	nama varchar NOT NULL,
	id_atasan varchar NULL,
	CONSTRAINT tbl_jabatan_pk PRIMARY KEY (id),
	CONSTRAINT tbl_jabatan_fk FOREIGN KEY (id_atasan) REFERENCES tbl_jabatan(id) ON UPDATE SET NULL ON DELETE SET NULL
);