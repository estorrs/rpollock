create_module = function(counts_matrix, labels, output_filepath,
            alpha=.0001, latent_dim=25, epochs=50, n_per_cell_type=100) {
    pollock = reticulate::import('pollock')
    df = as.data.frame(counts_matrix)
    pollock$wrappers$rwrappers$fit_from_dataframe(df, labels,
            output_filepath, alpha=alpha, n_per_cell_type=n_per_cell_type,
            latent_dim=latent_dim, epochs=epochs)
}
