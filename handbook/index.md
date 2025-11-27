<div style="
    background: linear-gradient(90deg, #003e74 0%, #006bb3 100%);
    padding: 35px 30px;
    border-radius: 10px;
    margin: 40px 0;
    color: white;
    text-align: center;
">
  <h1 style="margin:0; font-size: 2.5em; font-weight:600;">
    🔥 Probability of Fire — In a Box
  </h1>
  <p style="margin-top:10px; font-size:1.3em; opacity:0.95;">
    Reproducible notebooks for building local PoF models with your own data
  </p>
</div>


<div style="text-align:center; margin:40px 0;">
  <img src="./images/PoF-in-a-box.png" alt="Fire Triangle" style="max-width:70%; height:auto;">
  <p style="font-size:14px; color:#555; margin-top:8px;">
    <em>PoF in a BoX</em>
  </p>


__PoF in a Box provides a ready-to-run set of notebooks designed to help you get started with your own Predictability of Fire (PoF) experiments. It includes all the tools, data access, and workflows needed to explore fire activity prediction, from input preparation to model evaluation—right out of the box.__
<div style="border: 2px solid #9fc4ae; border-radius: 8px; padding: 10px; background-color: #f8fdf9;"> <b>Before you begin:</b> Please note that the workflow presented here is not intended to reproduce the exact operational system currently running at ECMWF. Instead, it provides a simplified sequence of steps designed to help you get started.
The notebook can only be used with past forecasts—it will generate a tool that allows you to explore and analyse previous forecast data.
That said, we believe this provides a valuable starting point: a complete, working system built entirely from data that are publicly available through the Climate Data Store (CDS) or accessible via temporary data repositories linked within this notebook. 
</div>

## Wildfire prediction  

Given their chaotic nature, how can we know when and where wildfires will occur? That is a question that has puzzled wildfire forecasters for decades and now, thanks to advances in <a href="https://doi.org/10.1029/2023GL107929" target="_blank"> **machine learning**</a>, we are one step closer to answering it, although we still have some way to go.
 
The topic of **wildfire forecasting** is not a new one. However, in recent years media attention around the subject has grown as unprecedented wildfire seasons in Australia (2019/2020) and Canada (2023) and Europe (2025) have resulted in widespread devastation of local ecosystems and communities.

These events have far-reaching consequences for both air quality and greenhouse gas emissions

## Traditional fire forecasting
For nearly half a century, fire danger forecasts have relied on a method that links weather conditions with fire activity to create an index of fire risk, with the<a href="https://cwfis.cfs.nrcan.gc.ca/background/summary/fwi" target="_blank"> **Canadian Fire Weather Index (FWI)**</a>
 being the most widely used. However, this approach has its limitations. 
 
<div style="text-align:center; margin:40px 0;">
  <img src="./images/fire-triangle.png" alt="Fire Triangle" style="max-width:70%; height:auto;">
  <p style="font-size:14px; color:#555; margin-top:8px;">
    <em>The wildfire triangle: fuel × dryness × ignition</em>
  </p>
</div>

**A fire needs fuel**, and for wildfires that fuel is both **living** and **dead** vegetation. The abundance and arrangement of that fuel is known as the ‘**fuel bed**’. If all else is equal, the drier the fuel bed, the higher the fire risk. The FWI primarily estimates the state of fuel moisture based on meteorological conditions affecting a predetermined typical Canadian forest fuel bed. However, a typical fuel bed does not capture controls such as the moisture levels in living vegetation, the composition of vegetation types, or the actual abundance of available fuel. Consequently, the FWI tends to overestimate fire risk in areas with limited fuel. Moreover, because the FWI was originally developed for Canadian forests, its applicability becomes complex when extrapolated to different ecosystems.

All this is before we even consider the factors that might start a wildfire in the first place (known as ignitions). Ninety per cent of ignitions are caused by the unpredictable behaviour of humans, making them chaotic in nature and hard to predict.

```{note}
These shortcomings highlight the need for more advanced forecasting techniques to accurately assess wildfire risk across diverse landscapes.
```

# Machine learning evolution

In recent months, there has been a remarkable growth in the integration of machine learning into weather forecasting systems. **With the intricate dynamics governing wildfires, it seems only natural to explore similar applications of machine learning in fire forecasting.**

We have developed a new tool, known as <a href="https://doi.org/10.1029/2023GL107929" target="_blank">**Probability of Fire, or PoF,**</a> which uses machine learning techniques to effectively forecast fire occurrence globally at high resolution, up to ten days in advance. 
```{note}
A key strength of PoF is found not only in the accurate predictions but also in computational cost. The model itself is extremely cheap to run compared with more traditional physical models, which allows us to perform global 1 km forecasts.
```


<div style="text-align:center; margin:40px 0;">
  <img src="./images/pof.png" alt="Fire Triangle" style="max-width:70%; height:auto;">
  <p style="font-size:14px; color:#555; margin-top:8px;">
    <em>Data in and out of the PoF </em>
  </p>
 

The foundation of PoF lies in its utilisation of diverse datasets, including information from the ECMWF Integrated Forecasting System (IFS), land cover data, and a <a href="https://doi.org/10.5194/bg-21-279-2024" target="_blank"> **newly developed fuel characteristic model**</a>.

The training of PoF is made possible thanks to the wealth of historic observations of active fires from satellites. The model mimics what it anticipates satellites will detect in the next few days. Consequently, it could only ever hope to perform as well as the satellite, which emphasises the importance of accurate satellite data for training. 

