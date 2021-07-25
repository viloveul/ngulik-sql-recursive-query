with recursive subordinate as (
	select
		atasan.id,
		atasan.nama,
		atasan.id_atasan,
		'' as prefix,
		concat('', atasan.id) as corder
	from tbl_jabatan atasan
	where atasan.id_atasan is null 
	union select
		jabatan.id,
		jabatan.nama,
		jabatan.id_atasan,
		concat('- ', sub.prefix) as prefix,
		concat_ws('-', sub.corder, jabatan.id) as corder
	from tbl_jabatan jabatan
	join subordinate sub on sub.id = jabatan.id_atasan
)
select id, concat(prefix, nama) as jabatan from subordinate order by corder asc