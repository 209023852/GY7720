# Urban_Only
# Libraries
library(tidyverse)
library(sf)

# Define columns
iNat_Cols <- c("id","iconic_taxon_name","datetime","longitude","latitude","positional_accuracy","quality_grade","Agreement_Score","DateDiff","month")

# Set up
# Make a new variable
NonFire_Urban_Only_iNat_shp <- NonFire_Urban_Only_iNat_df %>% 
  # select the data in the defined columns
  dplyr::select(iNat_Cols)%>% 
  # as tibble
  tibble::as_tibble()
# Change any blank values in iconic_taxon_name to No_Name
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 37381329)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 82723183)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 90298692)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 40273004)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 39445478)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 43125622)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 42710326)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 66025043)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 47423737)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 46452005)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 46292789)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 46040947)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 46034453)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 46032617)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 45237387)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 45013394)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 51820096)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 51171018)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 50488495)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 49474519)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 49301353)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 48154182)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 48130007)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 62818590)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 53261958)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 52425585)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 52202610)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 89550131)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 61580449)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 59736914)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 59242130)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 58968388)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 63438531)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 63408015)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 62976401)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 61621423)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 65439870)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 65420869)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 65295662)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 65034447)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 67376891)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 66339759)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 66339712)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 65988061)] <- c("No_Name")
NonFire_Urban_Only_iNat_shp$iconic_taxon_name[which(NonFire_Urban_Only_iNat_shp$id == 65987958)] <- c("No_Name")


# Assign a score to quality grade
NonFire_Urban_Only_iNat_shp$quality_grade[which(NonFire_Urban_Only_iNat_shp$quality_grade == "research")] <- 1
NonFire_Urban_Only_iNat_shp$quality_grade[which(NonFire_Urban_Only_iNat_shp$quality_grade == "needs_id")] <- 0
NonFire_Urban_Only_iNat_shp$quality_grade[which(NonFire_Urban_Only_iNat_shp$quality_grade == "casual")] <- 0

# Ensure all coumns are numeric
NonFire_Urban_Only_iNat_shp <- transform(NonFire_Urban_Only_iNat_shp, quality_grade = as.numeric(quality_grade))
NonFire_Urban_Only_iNat_shp <- transform(NonFire_Urban_Only_iNat_shp, DateDiff = as.numeric(DateDiff))

# make table wider by splitting taxon name data
NonFire_Urban_Only_iNat_shp <- NonFire_Urban_Only_iNat_shp %>% pivot_wider(names_from = iconic_taxon_name, values_from = iconic_taxon_name, values_fn = list(iconic_taxon_name = ~1), values_fill = list(iconic_taxon_name = 0))

# Add Misisng Columns


# make a geometry column
NonFire_Urban_Only_iNat_shp <- st_as_sf(NonFire_Urban_Only_iNat_shp, coords = c("longitude","latitude"))
# identify crs
st_crs(NonFire_Urban_Only_iNat_shp)
# change to WGS 84 if needed
NonFire_Urban_Only_iNat_shp <- st_set_crs(NonFire_Urban_Only_iNat_shp,"OGC:CRS84")

# Clip to NonFire Extent
# Read in grids shp
Grid_NonFire_Urban_Only <- 
  sf::st_read("data/Largest_NonFires/Grids/Grid_NonFire_Urban_Only.shp")
# change ccrs to WGS 84
Grid_NonFire_Urban_Only <- st_transform(Grid_NonFire_Urban_Only, 4326)
# clip the data
NonFire_Urban_Only_iNat_shp <- NonFire_Urban_Only_iNat_shp[Grid_NonFire_Urban_Only, ]
# save copy of shapefile
st_write(NonFire_Urban_Only_iNat_shp, "data/shp/iNat/NonFire/NonFire_Urban_Only_iNat_shp.shp")

# Filter data to pre-NonFire, NonFire and post-NonFire

# Pre_NonFire
# Filter data to before the month of the NonFire
Pre_NonFire <- NonFire_Urban_Only_iNat_shp %>% filter(month < 6)
# join data to the grids
iNat_PreNonFire_Urban_Only_Grids <- sf::st_join(Grid_NonFire_Urban_Only,Pre_NonFire)
# Remove temp file
rm(Pre_NonFire)

# Find the measures for spatial analysis
# Select key criteria
iNat_PreNonFire_Urban_Only_Grids <- iNat_PreNonFire_Urban_Only_Grids %>% select("id.x", "positional_accuracy", "quality_grade", "Agreement_Score", "DateDiff", "Aves", "Plantae", "Fungi", "Animalia", "Insecta", "No_Name", "Arachnida", "Reptilia", "Mammalia", "Mollusca", "Chromista", "Amphibia", "Actinopterygii", "Protozoa") %>%
  # group by id
  group_by(id.x) %>%
  # find averages of all quality checks and sum of all counts
  summarise(
    avg_positional_accuracy = mean(positional_accuracy, na.rm = F),
    avg_quality_grade = mean(quality_grade, na.rm = F),
    avg_agreement_score = mean(Agreement_Score, na.rm = F),
    avg_datediff = mean(DateDiff, na.rm = F),
    aves_count = sum(Aves, na.rm = F),
    plantae_count = sum(Plantae, na.rm = F),
    fungi_count = sum(Fungi, na.rm = F),
    animalia_count = sum(Animalia, na.rm = F),
    insecta_count = sum(Insecta, na.rm = F),
    other_count = sum(No_Name, na.rm = F),
    arachnida_count = sum(Arachnida, na.rm = F),
    reptilia_count = sum(Reptilia, na.rm = F),
    mammalia_count = sum(Mammalia, na.rm = F),
    mollusca_count = sum(Mollusca, na.rm = F),
    chromista_count = sum(Chromista, na.rm = F),
    amphibia_count = sum(Amphibia, na.rm = F),
    actinopterygii_count = sum(Actinopterygii, na.rm = F),
    protozoa_count = sum(Protozoa, na.rm = F), 
    taxon_count = sum(Aves,Plantae,Fungi,Animalia,Insecta,No_Name,Arachnida,Reptilia,Mammalia,Mollusca,Chromista,Amphibia,Actinopterygii,Protozoa, na.rm = F)
  ) %>%
  # Arrange by id
  arrange(id.x)

# Make all NA values 0
iNat_PreNonFire_Urban_Only_Grids[is.na(iNat_PreNonFire_Urban_Only_Grids)] <- 0

# Replicate the steps for NonFire and post-NonFire data

# NonFire
NonFire <- NonFire_Urban_Only_iNat_shp %>% filter(month == 6)
iNat_NonFire_Urban_Only_Grids <- sf::st_join(Grid_NonFire_Urban_Only,NonFire)
rm(NonFire)

iNat_NonFire_Urban_Only_Grids <- iNat_NonFire_Urban_Only_Grids %>% select("id.x", "positional_accuracy", "quality_grade", "Agreement_Score", "DateDiff", "Aves", "Plantae", "Fungi", "Animalia", "Insecta", "No_Name", "Arachnida", "Reptilia", "Mammalia", "Mollusca", "Chromista", "Amphibia", "Actinopterygii", "Protozoa") %>%
  group_by(id.x) %>%
  summarise(
    avg_positional_accuracy = mean(positional_accuracy, na.rm = F),
    avg_quality_grade = mean(quality_grade, na.rm = F),
    avg_agreement_score = mean(Agreement_Score, na.rm = F),
    avg_datediff = mean(DateDiff, na.rm = F),
    aves_count = sum(Aves, na.rm = F),
    plantae_count = sum(Plantae, na.rm = F),
    fungi_count = sum(Fungi, na.rm = F),
    animalia_count = sum(Animalia, na.rm = F),
    insecta_count = sum(Insecta, na.rm = F),
    other_count = sum(No_Name, na.rm = F),
    arachnida_count = sum(Arachnida, na.rm = F),
    reptilia_count = sum(Reptilia, na.rm = F),
    mammalia_count = sum(Mammalia, na.rm = F),
    mollusca_count = sum(Mollusca, na.rm = F),
    chromista_count = sum(Chromista, na.rm = F),
    amphibia_count = sum(Amphibia, na.rm = F),
    actinopterygii_count = sum(Actinopterygii, na.rm = F),
    protozoa_count = sum(Protozoa, na.rm = F), 
    taxon_count = sum(Aves,Plantae,Fungi,Animalia,Insecta,No_Name,Arachnida,Reptilia,Mammalia,Mollusca,Chromista,Amphibia,Actinopterygii,Protozoa, na.rm = F)
  ) %>%
  arrange(id.x)

iNat_NonFire_Urban_Only_Grids[is.na(iNat_NonFire_Urban_Only_Grids)] <- 0

# Post_NonFire
Post_NonFire <- NonFire_Urban_Only_iNat_shp %>% filter(month > 6)
iNat_PostNonFire_Urban_Only_Grids <- sf::st_join(Grid_NonFire_Urban_Only,Post_NonFire)
rm(Post_NonFire)

iNat_PostNonFire_Urban_Only_Grids <- iNat_PostNonFire_Urban_Only_Grids %>% select("id.x", "positional_accuracy", "quality_grade", "Agreement_Score", "DateDiff", "Aves", "Plantae", "Fungi", "Animalia", "Insecta", "No_Name", "Arachnida", "Reptilia", "Mammalia", "Mollusca", "Chromista", "Amphibia", "Actinopterygii", "Protozoa") %>%
  group_by(id.x) %>%
  summarise(
    avg_positional_accuracy = mean(positional_accuracy, na.rm = F),
    avg_quality_grade = mean(quality_grade, na.rm = F),
    avg_agreement_score = mean(Agreement_Score, na.rm = F),
    avg_datediff = mean(DateDiff, na.rm = F),
    aves_count = sum(Aves, na.rm = F),
    plantae_count = sum(Plantae, na.rm = F),
    fungi_count = sum(Fungi, na.rm = F),
    animalia_count = sum(Animalia, na.rm = F),
    insecta_count = sum(Insecta, na.rm = F),
    other_count = sum(No_Name, na.rm = F),
    arachnida_count = sum(Arachnida, na.rm = F),
    reptilia_count = sum(Reptilia, na.rm = F),
    mammalia_count = sum(Mammalia, na.rm = F),
    mollusca_count = sum(Mollusca, na.rm = F),
    chromista_count = sum(Chromista, na.rm = F),
    amphibia_count = sum(Amphibia, na.rm = F),
    actinopterygii_count = sum(Actinopterygii, na.rm = F),
    protozoa_count = sum(Protozoa, na.rm = F), 
    taxon_count = sum(Aves,Plantae,Fungi,Animalia,Insecta,No_Name,Arachnida,Reptilia,Mammalia,Mollusca,Chromista,Amphibia,Actinopterygii,Protozoa, na.rm = F)
  ) %>%
  arrange(id.x)

iNat_PostNonFire_Urban_Only_Grids[is.na(iNat_PostNonFire_Urban_Only_Grids)] <- 0
