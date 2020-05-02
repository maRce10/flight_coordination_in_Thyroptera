
art.id.part1 <- "12218288"
art.id.part2 <- "12233780"

p1 <- fs_details(article_id = art.id.part1, mine = TRUE)
p2 <- fs_details(article_id = art.id.part2, mine = TRUE)

fs.fls <- sapply(p1$files, '[[', 3)[-1]
fs.fls.id <- sapply(p1$files, '[[', 4)[-1]

fs.fls <- c(fs.fls, sapply(p2$files, '[[', 3)[-1])

wvs <- list.files(path = "./data/raw/converted_sound_files_90_kHz/", pattern = "\\.wav$")

# all files in first part exist
all(file.exists(file.path("./data/raw/converted_sound_files_90_kHz/",fs.fls)))

fls_df <- data.frame(fls = wvs, path = file.path("./data/raw/converted_sound_files_90_kHz/", wvs), stringsAsFactors = FALSE)

# which are not  in part 1
mss <- fls_df[!fls_df$fls %in% fs.fls, , drop = FALSE]

# add
if (nrow(mss) > 0)
out <- pbsapply(mss$path, function(x) fs_upload(article_id = art.id.part2, file = x))

