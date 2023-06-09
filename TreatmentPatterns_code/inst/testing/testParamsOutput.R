source(list.files(system.file(
  package = "TreatmentPatterns",
  "examples", "SettingObjects"), full.names = TRUE))

TreatmentPatterns::constructPathways(
  dataSettings = dataSettings,
  pathwaySettings = pathwaySettings,
  saveSettings = saveSettings)

# Generate output for folder structure etc.
generateOutput(saveSettings = saveSettings)

treatment_pathways <- TreatmentPatterns:::getPathways(
  outputFolder = saveSettings$outputFolder,
  tempFolder = saveSettings$tempFolder,
  databaseName = saveSettings$databaseName,
  studyName = "Viral_Sinusitis",
  minCellCount = 5)

eventCohortIds <- pathwaySettings$all_settings[3,2]
eventCohortIds <-
  unlist(strsplit(eventCohortIds, split = c(";|,")))

groupCombinations <- pathwaySettings$all_settings[16,2]

outputFolder_s <- file.path(saveSettings$outputFolder, "Viral_sinusitis")

