insert into mlr_legacy_data.legacy_location
(agency_cd
,site_no
,station_nm
,station_ix
,lat_va
,long_va
,dec_lat_va
,dec_long_va
,coord_meth_cd
,coord_acy_cd
,coord_datum_cd
,district_cd
,land_net_ds
,map_nm
,country_cd
,state_cd
,county_cd
,map_scale_fc
,alt_va
,alt_meth_cd
,alt_acy_va
,alt_datum_cd
,huc_cd
,agency_use_cd
,basin_cd
,site_tp_cd
,topo_cd
,data_types_cd
,instruments_cd
,site_rmks_tx
,inventory_dt
,drain_area_va
,contrib_drain_area_va
,tz_cd
,local_time_fg
,gw_file_cd
,construction_dt
,reliability_cd
,aqfr_cd
,nat_aqfr_cd
,site_use_1_cd
,site_use_2_cd
,site_use_3_cd
,water_use_1_cd
,water_use_2_cd
,water_use_3_cd
,nat_water_use_cd
,aqfr_type_cd
,well_depth_va
,hole_depth_va
,depth_src_cd
,project_no
,site_web_cd
,site_cn
,site_cr
,site_mn
,site_md
,mcd_cd)
select agency_cd
,site_no
,station_nm
,station_ix
,lat_va
,long_va
,cast (dec_lat_va as numeric)
,cast (dec_long_va as numeric)
,coord_meth_cd
,coord_acy_cd
,coord_datum_cd
,district_cd
,land_net_ds
,map_nm
,country_cd
,state_cd
,county_cd
,map_scale_fc
,alt_va
,alt_meth_cd
,alt_acy_va
,alt_datum_cd
,huc_cd
,agency_use_cd
,basin_cd
,site_tp_cd
,topo_cd
,data_types_cd
,instruments_cd
,site_rmks_tx
,inventory_dt
,drain_area_va
,contrib_drain_area_va
,tz_cd
,local_time_fg
,gw_file_cd
,construction_dt
,reliability_cd
,aqfr_cd
,nat_aqfr_cd
,site_use_1_cd
,site_use_2_cd
,site_use_3_cd
,water_use_1_cd
,water_use_2_cd
,water_use_3_cd
,nat_water_use_cd
,aqfr_type_cd
,well_depth_va
,hole_depth_va
,depth_src_cd
,project_no
,site_web_cd
,site_cn
,to_timestamp(site_cr, 'yyyymmddhh24missms')
,site_mn
,to_timestamp(site_md, 'yyyymmddhh24missms')
,mcd_cd
from mlr_legacy_data.legacy_location_load;