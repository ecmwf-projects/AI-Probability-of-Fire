# ⭐ How we train an XGBoost Model for PoF


PoF uses and  XGBoost, a powerful gradient-boosted decision-tree algorithm widely used for tabular environmental data.

The training procedure follows a simple and reproducible workflow:

__Prepare the training dataset__

You will assemble a table where each row represents a day (or pixel-day) and includes:

<div style="border:1px solid #ccc; padding:10px 15px; border-radius:6px; background:#f8f8f8;">
  <strong>Predictors (features)</strong><br>
  Fuel variables, meteorological variables, and ignition proxies (e.g., population density, lightning).
</div>

<div style="border:1px solid #ccc; padding:10px 15px; border-radius:6px; background:#f8f8f8;">
  <strong>Target (label)</strong><br>
  Binary fire occurrence: <code>1</code> = fire detected, <code>0</code> = no fire.
</div>

We will guide you through synthesising your data

__Split the data__

<div style="border:1px solid #ccc; padding:10px 15px; border-radius:6px; background:#f8f8f8;">
  <strong>Dataset Splits</strong><br>
  <ul style="margin:8px 0 0 15px;">
    <li><strong>Training set</strong> → used to fit the model</li>
    <li><strong>Validation set</strong> → early stopping &amp; hyperparameter tuning</li>
    <li><strong>Test set</strong> → final skill evaluation</li>
  </ul>
</div>

We typically use a time-based split (train on past, test on future).

__Define the XGBoost model__

We configure the key parameters:

<div style="border:1px solid #ccc; padding:10px 15px; border-radius:6px; background:#f8f8f8;">
  <strong>XGBoost Hyperparameters</strong><br>
  <ul style="margin:8px 0 0 15px;">
    <li><strong>max_depth</strong> – tree complexity</li>
    <li><strong>learning_rate</strong> – how fast the model learns</li>
    <li><strong>n_estimators</strong> – number of boosting rounds</li>
    <li><strong>subsample</strong>, <strong>colsample_bytree</strong> – regularisation</li>
    <li><strong>objective="binary:logistic"</strong> – required to output probabilities</li>
  </ul>
</div>

You will need to adjust these parameters depending on your region and data volume.

__Generate PoF predictions__

Once trained, the model outputs:

a probability between 0 and 1
representing the likelihood that a fire will occur under the given conditions

<span style="color:#003e74; font-weight:600;">
These are the core PoF predictions you will visualise and evaluate.
</span>

__Evaluate the model__

We assess the model skill using:
ROC curve
AUC score
Reliability diagrams
Precision–recall
Confusion matrix
Threshold analysis (operational cut-offs)

However we only provide a exemples for a subset of these metrics 

You will learn how to interpret these diagnostics in the context of fire risk.
7. Save and reuse the model
We show how to:
save the trained XGBoost model (model.save_model())
reload it for operations
run the model on new daily environmental inputs
This forms the operational PoF pipeline.

<div style="
    border: 2px solid #003e74;
    background: #eef3f8;
    padding: 15px 20px;
    border-radius: 6px;
    margin: 25px 0;
">
  <h3 style="margin-top:0; color:#003e74;">🎯 Final result</h3>
  <p style="margin:0; font-size:1.05em; color:#003e74;">
    A trained, validated XGBoost model providing daily probability-of-fire estimates
    from environmental predictors
  </p>
</div>