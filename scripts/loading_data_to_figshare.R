library(rfigshare)

art.id.part1 <- "12218288"
art.id.part2 <- "12233780"

rfigshare::fs_auth(token = getOption("FigsharePrivateToken", "64ba1eeaeb31cf49f1b651552255111a7415be6f3ea9430b38cf02455f7ef46cd5173a9dd6530eb410eb1cf04b691feeb0ccfde76efeed3562571bb2b1ae3de4")
)


p1 <- fs_details(article_id = art.id.part1, mine = FALSE)
p2 <- fs_details(article_id = art.id.part2, mine = FALSE)

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

# or download
setwd("./data/raw/converted_sound_files_90_kHz/")

fs.fls1 <- sapply(p1$files, '[[', 3)[-1]
fs.fls2 <- sapply(p2$files, '[[', 3)[-1]

fs.url1 <- sapply(p1$files, '[[', 2)[-1]
fs.url2 <- sapply(p2$files, '[[', 2)[-1]


df <- data.frame(sound.files = c(fs.fls1, fs.fls2), recording_url = c(fs.url1, fs.url2), stringsAsFactors = FALSE)

library(warbleR)

find_annotations(X = df, parallel = 7)

# if (length(fs.fls1) > 0)
#   out <- pbsapply(fs.fls1, function(x) fs_download(article_id = art.id.part1, file = x, urls_only = FALSE), dest.file)