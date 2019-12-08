module RecZoo

const Datasets = Dict{Tuple{String, String}, Tuple{String, String}}(
    ("GroupLens", "ml-100k") => ("http://files.grouplens.org/datasets/movielens/ml-100k.zip", ""),
    ("GroupLens", "ml-20m") => ("http://files.grouplens.org/datasets/movielens/ml-20m.zip", "")
)

function download(dataset::Tuple{String, String}, path::String)
    download(Datasets[dataset][0], path)
end

end # module RecZoo