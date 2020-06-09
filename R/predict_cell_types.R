predict_cell_types = function(counts_matrix, module_filepath) {
    pollock = reticulate::import('pollock')
    df = as.data.frame(counts_matrix)
    predictions = pollock$wrappers$rwrappers$predict_from_dataframe(df, 
            module_filepath)
    predictions
}
