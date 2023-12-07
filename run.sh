# Arguments:
# - $1: filename to process

# TODO: pass the filename via command line, store it in FILENAME
FILENAME = $1

# model filenames
MODEL_FOLDERS = "./models"
# TODO: add model filenames
CNN1_MODEL = $MODEL_FOLDERS/placeholder_for_filename
#...
ANN1_MODEL = $MODEL_FOLDERS/placeholder_for_filename
#...
SQUEZE_MODEL1 = $MODEL_FOLDERS/squeze_training_rmag_gt_17.0_leq_20.0_PeakFinderPowerLaw_sig2.0_wide+extra_lines_dz0.10_tworf_addztryrmag_model.json
SQUEZE_MODEL2 = $MODEL_FOLDERS/squeze_training_rmag_gt_20.0_leq_22.5_PeakFinderPowerLaw_sig2.0_wide+extra_lines_dz0.10_tworf_addztryrmag_model.json
SQUEZE_MODEL3 = $MODEL_FOLDERS/squeze_training_rmag_gt_22.5_leq_23.6_PeakFinderPowerLaw_sig2.0_wide+extra_lines_dz0.10_tworf_addztryrmag_model.json
SQUEZE_MODEL4 = $MODEL_FOLDERS/squeze_training_rmag_gt_23.6_leq_24.3_PeakFinderPowerLaw_sig2.0_wide+extra_lines_dz0.10_tworf_addztryrmag_model.json

# format data
conda activate squeze

# run first batch of codes (CNN1, CNN2, ...)
conda activate classifiers_errors

# run second batch of codes (ANN1, ANN2, ...)
classifiers_hibrid

# run SQUEzE
conda activate squeze

# run combined algorithm
