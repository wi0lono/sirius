INSTALL spatial;
LOAD spatial;

create table pts2 (
      id integer,
      geom point_2d
  );


insert into pts2 values
      (1, (0, 0)),
      (2, (3, 4)),
      (3, (-1, 2));

call gpu_buffer_init("1 GB", "2 GB");
call gpu_processing("select 1;");



call gpu_processing("select * from pts2;");