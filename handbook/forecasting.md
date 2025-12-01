---
title: "🔮 Forecasting With PoF"
show-body-title: false
---


<div style="border: 2px solid #9fc4ae; border-radius: 8px; padding: 10px; background-color: #f8fdf9;"> <b>Once the XGBoost model has been trained and validated, it can be used to generate daily Probability-of-Fire (PoF) forecasts based on the most recent environmental conditions.
</div>

The forecasting step mirrors the training workflow, but using future predictor data instead of historical observations.

__Inputs Required for a PoF Forecast__

To produce PoF forecasts, you must supply the model with the same set of predictors used during training, for example:

- ✔️ **Latest meteorological data**  
- ✔️ **Fuel conditions**  
- ✔️ **Ignition proxies** (population density, lightning forecasts)

All variables must be prepared in the same structure and units as during training.

__How the Forecast Works__

Collect predictors for the target date(s)

This could include:

ERA5 or NWP forecast weather fields

Satellite-based fuel indices

Drought indices updated daily or seasonally
2. Assemble the feature vector
The model expects a feature table identical in layout to the training input:
[feature_1, feature_2, ..., feature_n]
3. Apply the trained XGBoost model
pof_forecast = model.predict_proba(X_future)[:, 1]
This produces a probability between 0 and 1 for each grid cell or location.
4. Visualise and interpret
PoF forecasts can be displayed as:
maps
time series
threshold exceedance alerts
combined indicators (e.g., PoF × exposure)

<div style="
    border-left: 5px solid #003e74;
    background: #f2f5fa;
    padding: 12px 18px;
    border-radius: 6px;
    margin: 20px 0;
">
  <strong style="color:#003e74; font-size:1.15em;">🔍 How to interpret the forecast</strong>
  <ul style="margin:10px 0 0 18px; color:#003e74;">
    <li><strong>0.0–0.2</strong> → very low likelihood of fire</li>
    <li><strong>0.2–0.4</strong> → conditions becoming conducive</li>
    <li><strong>0.4–0.7</strong> → elevated fire potential; monitor closely</li>
    <li><strong>0.7–1.0</strong> → high probability of ignition + spread if a trigger occurs</li>
  </ul>
</div>

These levels may be adapted to local forecast.

<div style="
    border-left: 5px solid #003e74;
    background: #f2f5fa;
    padding: 12px 18px;
    border-radius: 6px;
    margin: 20px 0;
">
  <strong style="color:#003e74; font-size:1.1em;">
    Once integrated into a workflow, the PoF model can be run:
  </strong>
  <ul style="margin:10px 0 0 18px; color:#003e74;">
    <li><strong>Daily</strong>, using the latest environmental data</li>
    <li><strong>In forecast  mode</strong>, using forecast if available</li>
    <li><strong>In the past </strong>, as part of a past climate assessments</li>
  </ul>
</div>

<div style="
    border: 2px solid #003e74;
    background: #eef3f8;
    padding: 15px 20px;
    border-radius: 6px;
    margin: 25px 0;
">
  <h3 style="margin-top:0; color:#003e74;">🎯 Final result</h3>
  <p style="margin:0; font-size:1.05em; color:#003e74;">
    A fully operational PoF forecasting step that transforms up-to-date environmental
    conditions into daily ignition-potential estimates
  </p>
</div>




