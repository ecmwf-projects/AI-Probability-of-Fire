# Data for PoF 


__A  data driven model needs data!__

<div style="border: 2px solid #9fc4ae; border-radius: 8px; padding: 10px; background-color: #f8fdf9;"> <b>Please note: You will not be able to reproduce the exact configuration run at ECMWF, as it uses some proprietary data that we are unable to share. However, most of the data used to train PoF are publicly available and free to use. Below, we provide guidance on the datasets we recommend for getting started on your PoF journey.
</div>

<img src='./images/data-sources-pof.png' height="400">
<p class="credits">CC BY-NC-SA</p>

__Weather Data__


<a href="https://doi.org/10.1175/JAMC-D-15-0297.1" target="_blank">
In fuel-rich environments, weather is the dominant control on fire ignitions.</a>

To begin your data collection , we recommend focusing on four key environmental variables: __temperature, precipitation, relative humidity, and wind speed.__ These variables represent the fundamental controls of how fires interact with the Earth’s surface, and they are at the core of nearly all fire-weather indices used operationally around the world.

Each variable plays a distinct role in shaping landscape flammability. Temperature is one of the most immediate drivers: as temperatures rise, vegetation and soils lose moisture more quickly, and both live and dead fuels become more prone to ignition. Prolonged warm conditions can push even healthy vegetation into moisture stress, making it more combustible.

__Precipitation__ acts in the opposite direction. It replenishes moisture in fuels and slows the drying process, reducing the likelihood that a spark will turn into a fire. But precipitation also shapes fire risk over longer periods. Wet springs or wet years stimulate vegetation growth, building up large fuel loads which can later burn if drought conditions return.

__Relative humidity__ is closely linked to fuel moisture, particularly for fine fuels like grasses and leaf litter. When the air is dry, these fuels lose moisture quickly and ignite much more easily. When humidity is higher, even small increases in atmospheric moisture can keep fine fuels from reaching the critical dryness needed to sustain fire spread. Because humidity changes rapidly over the course of a day, it introduces fast variations in fire danger.

Finally, __wind speed__ is the most dynamic and often the most dangerous factor. Wind supplies oxygen to flames, drives heat into unburnt areas, and can carry embers far ahead of the main fire front, creating spot fires and accelerating spread. Strong winds can transform a small ignition into a fast-moving, intense wildfire within minutes.

Together, these __four variables__  describe both the availability of fuel and the conditions under which it can ignite and spread. They provide a solid, intuitive foundation for understanding landscape flammability and are an excellent starting point for anyone beginning their PoF modelling journey.

__Fuel Data__


<a href="https://doi.org/10.1038/s41467-025-58097-7" target="_blank">
 In absence of any other sorce fuel is the most important control globally on fire activity.</a>

To model how vegetation influences wildfire behaviour, two key aspects must be captured: how much fuel is present and how dry that fuel is.

__Fuel load__ represents the total mass of above-ground biomass available to burn. It includes:

🌿 Foliage (live and dead)
🌳 Wood (live and dead)

We estimate fuel load by combining: Satellite-derived Above-Ground Biomass (AGB) from ESA-CCI (2010 baseline), and Daily Net Ecosystem Exchange (NEE) from the ECLand land-surface model (forced by ERA5).

This approach allows us to reconstruct daily biomass evolution at ~9 km resolution. AGB is then partitioned into live and dead components using vegetation-type-specific ratios. This gives a dynamic estimate of foliage and wood fuel loads, consistent with fire-modelling practices.

__Live Fuel Moisture Content (LFMC)__

💦🍃 LFMC expresses how much water is contained in living vegetation relative to its dry mass. It determines how easily plants ignite and how fast a fire can spread.
We use a semi-empirical model, trained on the Globe-LFMC in-situ dataset, to estimate daily LFMC from:

1. Leaf Area Index (LAI)
2. Soil moisture (root-weighted)
3. Vegetation type


The model ensures physically realistic moisture ranges and captures seasonal vegetation responses to drought and growth cycles.

__Dead Fuel Moisture Content (DFMC)__

DFMC describes the moisture content of dead leaves, litter, and woody debris—fuels that respond directly to weather.
We generalize the Nelson (2000) physical model to estimate DFMC for standard dead-fuel classes (1h, 10h, 100h, 1000h), driven by:

1. Temperature
2. Relative humidity
3. Solar radiation
4. Precipitation

Short-lag fuels (1h, 10h) respond to fast humidity changes; long-lag fuels respond to multi-day weather patterns. DFMC for foliage and wood is derived by weighting appropriate fuel classes based on vegetation type.

What the Dataset Provides
The final dataset includes daily global fields at ~9 km resolution for:


Live and dead foliage


Live and dead wood


LFMC (combined, high vegetation, low vegetation)


DFMC for foliage and wood


These variables describe how fuel quantity and fuel dryness evolve in time and space, allowing daily assessment of landscape flammability and supporting simple fire-spread modelling.






__Sources of ignitions__


