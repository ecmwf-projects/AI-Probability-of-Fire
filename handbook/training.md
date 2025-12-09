# How we train an XGBoost Model for PoF

PoF uses XGBoost, a powerful gradient-boosted decision-tree algorithm widely applied to tabular environmental data.

The training procedure follows a simple, reproducible workflow based on a probabilistic classifier:

__Prepare the training dataset__

You will assemble a table where each row represents a gridcell in space and time (daily & 9km grid) and includes:

---

<div style="text-align:center; margin:40px 0; font-weight:bold;">
  <strong>Predictors (features)</strong><br>
  Fuel variables, meteorological variables, and ignition proxies. All of which are described in the retrieving_data documentation.
</div>

---

<div style="text-align:center; margin:40px 0; font-weight:bold;">
  <strong>Target (label)</strong><br>
  Binary fire occurrence within the gridcell on the given day, where a single or multiple counts equate to fire detection: <code>1</code> = fire detected, <code>0</code> = no fire.
</div>

The data generation script should have synthesised your data into a DataFrame stored in a Parquet file, which is now ready for training.

__Split the data__

---

<div style="text-align:center; margin:40px 0; font-weight:bold;">
  <strong>Dataset Splits</strong><br>
  <ul style="margin:8px 0 0 15px;">
    <li><strong>Training set</strong> → used to fit the model</li>
    <li><strong>Test set</strong> → final skill evaluation</li>
  </ul>
</div>

We typically use a random stratified split.

__Define the XGBoost model__

We configure the key parameters:

---

<div style="text-align:center; margin:40px 0; font-weight:bold;">
  <strong>XGBoost Hyperparameters</strong><br>
  <ul style="margin:8px 0 0 15px;">
    <li><strong>max_depth</strong> – tree complexity</li>
    <li><strong>learning_rate</strong> – how fast the model learns</li>
    <li><strong>n_estimators</strong> – number of boosting rounds</li>
    <li><strong>objective="binary:logistic"</strong> – required to output probabilities</li>
  </ul>
</div>

You will need to adjust these parameters depending on your region and data volume.

__Generate PoF predictions__

Once trained, the model outputs a probability between 0 and 1 representing the likelihood that at least one fire will occur under the given conditions withing a gridcell on a given day.

<span style="color: var(--jp-brand-color0); font-weight: 600;">
These are the core PoF predictions you will visualise and evaluate.
</span>

__Evaluate the model__

We can assess the model skill using tools such as:
ROC curve
AUC score
Reliability diagrams
Confusion matrix

However we only provide examples for a subset of these metrics. Reliability methods are highly recommended given the unbalanced nature of PoF, however it is important to note these can be more computationally expensive than some other methods. 

Interpretation of these diagnostics in the context of fire risk needs to be carefully considered.

The script saves the trained model for reuse (POF_model.joblib) . Later versions of XGboost may save as json or other file formats but can be saved and reused in the same or similar way.

---

<div style="text-align:center; margin:40px 0; font-weight:bold;">
  <h3 style="margin-top:0; color:#003e74;">🎯 Final result</h3>
  <p style="margin:0; font-size:1.05em; color:#003e74;">
    A trained, validated XGBoost model providing daily probability-of-fire estimates
    from environmental predictors
  </p>
</div>