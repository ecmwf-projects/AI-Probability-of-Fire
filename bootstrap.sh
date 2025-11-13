mkdir -p handbook/data/CLIMATE
set -x
for f in 10U 10V D2M T2M WS;do
    curl -u ecbox:1hHfYAwUtuzVbSXFHaDVlzNrKDttMwT2RBA0L95Cvr32pgzpsWAoybmjTgJkgeRpcyz3NybnWfd31GWdmOTQBBDXkSRVKTvXGoQkXEXMVPnErYNnQ8V https://sites.ecmwf.int/ecbox/POF_IN_A_BOX/s/dav/data/${f}_2003_01.nc --output handbook/data/${f}_2003_01.nc
done
for f in DFMC LFMC FUEL;do
    curl -u ecbox:1hHfYAwUtuzVbSXFHaDVlzNrKDttMwT2RBA0L95Cvr32pgzpsWAoybmjTgJkgeRpcyz3NybnWfd31GWdmOTQBBDXkSRVKTvXGoQkXEXMVPnErYNnQ8V https://sites.ecmwf.int/ecbox/POF_IN_A_BOX/s/dav/data/${f}_MAP_2003_01_R.nc --output handbook/data/${f}_2003_01_R.nc
done
for f in POP_2020.nc_2 road_density_2015_c.nc_2 landcover_2015_c.nc_2;do
    curl -u ecbox:1hHfYAwUtuzVbSXFHaDVlzNrKDttMwT2RBA0L95Cvr32pgzpsWAoybmjTgJkgeRpcyz3NybnWfd31GWdmOTQBBDXkSRVKTvXGoQkXEXMVPnErYNnQ8V https://sites.ecmwf.int/ecbox/POF_IN_A_BOX/s/dav/data/CLIMATE/${f} --output handbook/data/CLIMATE/${f}
done
