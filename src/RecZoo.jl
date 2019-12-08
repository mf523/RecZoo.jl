__precompile__(false)
module RecZoo

const Datasets = Dict{Tuple{String, String}, Tuple{String, String}}(
    ("GroupLens", "ml-100k") => ("http://files.grouplens.org/datasets/movielens/ml-100k.zip", ""),
    ("GroupLens", "ml-20m") => ("http://files.grouplens.org/datasets/movielens/ml-20m.zip", ""),
    ("GroupLens", "ml-latest-small") => ("http://files.grouplens.org/datasets/movielens/ml-latest-small.zip", ""),
    ("GroupLens", "ml-latest") => ("http://files.grouplens.org/datasets/movielens/ml-latest.zip", ""),
    ("GroupLens", "ml-20mx16x32") => ("http://files.grouplens.org/datasets/movielens/ml-20mx16x32.tar", ""),
)

function download(dataset::Tuple{String, String}, path::String)
    download(Datasets[dataset][0], path)
end

end # module RecZoo