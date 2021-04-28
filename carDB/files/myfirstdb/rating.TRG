TYPE=TRIGGERS
triggers='CREATE DEFINER=`root`@`%` TRIGGER `rating_after_insert` AFTER INSERT ON `rating` FOR EACH ROW UPDATE car set rating = (SELECT avg(rating) FROM rating WHERE car_id = NEW.car_id) WHERE id=NEW.car_id'
sql_modes=1411383296
definers='root@%'
client_cs_names='utf8mb4'
connection_cl_names='utf8mb4_general_ci'
db_cl_names='utf8mb4_general_ci'
created=161819245546
