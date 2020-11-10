explain_predictions = function(explain_counts_matrix, background_counts_matrix,
	labels, module_filepath, background_sample_size=100) {
    pollock = reticulate::import('pollock')
    explain = as.data.frame(explain_counts_matrix)
    background = as.data.frame(background_counts_matrix)
    explainations = pollock$wrappers$rwrappers$explain_from_dataframe(explain, background, labels,
            module_filepath, background_sample_size=background_sample_size)
    explainations
}
