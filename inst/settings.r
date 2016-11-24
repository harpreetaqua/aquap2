###########################################################################################
######################## Settings file for package "aquap2" #########################
###########################################################################################

stn <- list(
	# tag = value, # with a comma !!
	
	## Folder management and default filenames
	fn_analysisData = "anData",				## the folder name for storing any analysis data
	fn_exports = "exports", 				## the folder name for any exported file
	fn_rcode = "R-code", 					## the folder where all the r-code is kept
	fn_rawdata = "rawdata", 				## the folder where you put the raw-data from your data acquisition
	fn_rdata = "R-data", 					## the folder where R is keeping all its raw-data after importing from the data-acquisition format
	fn_metadata = "metadata", 				## the folder where you put the metadata and the analysis procedure r-files
	fn_results = "results",					## the folder where all the result-pdfs get saved
	fn_sampleLists = "sampleLists", 		## the folder for the sample lists used in randomizing the samples and for importing the raw-data
	fn_sampleListOut = "sl_out", 			## the folder holding the sample lists that have been generated by package 'aquap2' and that contain the samples in a randomized order
	fn_sampleListIn = "sl_in", 				## the folder holding the sample list *after* the measurements, where Temp and rel. humidity values could be filled in manually if not logger was available.
	fn_mDataDefFile = "metadata.r", 		## the default filename for the metadata file
	fn_anProcDefFile = "anproc.r", 			## the default filename for the analysis procedure file
	fn_noiseExpName = "NoiseData",			## the default experiment name (and with that the default name for the resulting R-data file) for the noise data

	
	## Data preparation, standard column names & prefixes
	p_yVarPref = "Y_", 						## the prefix for numerical variables	
	p_ClassVarPref = "C_",					## the prefix for class-variables
	p_timeCol = "Time", 					## the name of the column containing the time-points (if any)
	p_sampleNrCol = "SampleNr", 			## the name of the column containing the number of the sample in the list, automatically generated
	p_conSNrCol= "conSNr",					## the name of the second column containing the number of the consecutive scan, automatically generated
	p_ECRMCol = "ECRM", 					## the name of the column holding the class for indicating either environmental control or real measurement
	p_tempCol = "Temp",						## the name of the column holding the room temperature at which the measurements were taken
	p_RHCol ="RelHum",						## the name of the column holding the relative humidity at which the measurements were taken 
	p_absTime = "absTime", 					## the name of the column holding the absolute time since the date specified in 'imp_startDate'
	p_chron = "chron", 						## the name of the column holding the chronological order of the spectra, so ignoring any time-delays in between scans
	p_userDefinedSpecialColnames = c("Conc", "Weight"),		## the special column names where the colors defined in "col_userDefinedRamps" will be used
	p_expNameCol = "ExpName",				## the name of the column holding the experiment name 
	p_commonNoSplitCol = "all", 			## the name of the column containing the common "no-split" value
	p_commonNoSplit = "all", 				## a common value for all the rows in the dataset in the "noSplit" column
	p_envControlLabel = "EC", 				## the default label for the environmental control
	p_realMeasurementLabel = "RM", 			## the default label for the "real measurement", for all the samples of your experiment
	p_replicatePrefix = "R", 				## the prefix for the value indicating the number of the replicate of a measurement, so e.g. with the default 'R' you will have your replicates named "R1", "R2", "R3", ...
	p_replicateCol = "Repl", 				## the name of the column containing the replicates
	p_groupCol = "Group", 					## the name of the column containing the groups (like e.g. experiment and control)
	p_deleteCol = "DELETE", 				## the character indicating that this column should be omitted at the time of creating the sample list, usually needed for L2-columns that are identical to their L1-columns
	p_noTimePointsLabel = "NT", 			## the value assigned to every observation when there is no splitting into time points
	p_sampleListExportFormat = "txt", 		## the format for the generated sample list, possible values are "txt" for a tab-delimited text file and "xls" for an Excel-file.
	p_outlierCol = "outlier", 				## the name of any column containing the flags showing outliers
	p_outlierCol_allSuffix = "_all", 		## the suffix being added to the outlier column containing the flags for outliers based on the whole dataset.


	## General behaviour & settings
	allSilent = FALSE,						## if false, "status" messages will be displayed
	autoUpdateSettings = TRUE, 				## if the settings should be automatically updated when calling a function from package 'aquap2'. Recommended value is TRUE.
	defCfs = TRUE,							## if, when calling any resp. most functions, it should be checked if we are within the required default folder structure of an aquap2 experiment.
	gen_showExtendedCube = TRUE, 			## if set to TRUE, the number of rows and the number of wavelengths in each element of a cube will be displayed as well.
	gen_useParallel = FALSE, 				## if parallel computing should be used where applicable and implemented
	gen_numberOfCPUs = NA, 					## the number of CPUs used for parallel computing; leave at 'NA' for automatically using the system defaults
	gen_showData_NIR = FALSE, 				## if the first rows of the NIR data should be printed as well wenn printing (showing) an object of class 'aquap_data' to the screen.
	gen_versionCheckDataset = TRUE,			## if it should be checked if the dataset was created with an older version of package aquap2. Recommended value is TRUE.
	gen_plot_anprocSource = "defFile", 		## the default way to obtain the analysis procedure when *PLOTTING*. Possible values are "cube" to take the analysis procedure from within the cube, "defFile" to load instead the default filename of the analysis procedure file, or provide a custom analysis procedure filename. (Ending in ".r")
	gen_plot_pgWhereDefault = "pdf",		## the default setting for the general plotting parameter 'pg.where'. If set to 'pdf', all graphics will be saved as a pdf. If anything but a pdf is provided, the graphics will be plotted to the graphics device.
	gen_plot_maxNrDptInfoOnMain = 4, 		## the maximum number of data-pre-treatment modules info elements in the main of a title
	gen_plot_legendPosition = "auto", 		## the default position of the legend in a plot. Leave at the default 'auto' for automatically detecting the best corner for the legend, provide one of "bottomright", "bottomleft", "topright" or "topleft" for choosing the resp. corner.
	gen_calc_allowSubtrDiffHead = FALSE, 	## if subtractions of datasets having a different header structure should be allowed.
	gen_calc_allowSubtrDiffWavels = TRUE,	## if subtractions of datasets having different sets of wavelengths should be allowed. If TRUE, this is only successful if the smaller set of wavelengths is completely within the bigger set of wavelengths. In this case, the bigger set is virtually cut down to the size of the smaller set. This can be necessary when function do_gapDer was used.


	## Import Data
	imp_specFileType = "vision_NSAS.da",	## the filetype of the spectral data. Refer to the help for 'getFullData'  for possible values
	imp_startDate = "2014-06-01 00:00:00",	## the start-date used to calculate the absolute number of minutes since then
	imp_sampleListType = "csv", 			## the filetype of the sample list in the sampleLists/sl_in folder. Please refer to the help for "getFullData" for possible values.
	imp_multiplyRows = TRUE,				## if all the rows in the sample list should be multiplied by the number of consecutive scans.
	imp_autoCopyYvarsAsClass = TRUE, 		## if all available Y-Variables should be automatically copied as a class variable at the time of importing the data. Recommended value is TRUE.
	imp_alwaysReduceTRHClasses = FALSE,		## if the T and rel. humidity classes should be always reduced, even if the values only contain a single decimal point. If set to FALSE, the T and rel. hum. classes will not be reduced if the values contain only a single decimal point.
	imp_TClassesDiv = 5,					## the number by which the temperature values get divided, then rounded, then multiplied
	imp_RHClassesDiv = 5,					## the number by which the rel. humidity values get divided, then rounded, then multiplied
	imp_TRounding = 1,  					## digits precision for rounding when re-factoring the temperature
	imp_RHRounding = 1, 					## digits precision for rounding when re-factoring the rel. humidity
	imp_makeExpNameColumn = FALSE, 			## if a column containing the name of the experiment in every row should be added to the dataset. This is useful if you plan to fuse datasets from several experiments.
	imp_makeTimeDistanceColumn = TRUE, 		## if, should a timestamp be available, a column with the time-distance from a user-defined point in time and an other with the chronological order (1:nrow enumeration) should be generated
	imp_use_TRH_logfile = FALSE, 			## if and how values for temperature and relative humidity should be imported from an external logfile. See the help for 'getFullData' for information on possible values
	imp_TRH_logfile_name = "TRHlog", 		## the name of the logfile for temperatur and rel.humidity in the rawdata folder.
	imp_narrowMinutes = 3, 					## how many minutes ahead should be looked for matching log-data before going through the whole log file?
	imp_secsNarrowPrecision = 10, 			## precision in seconds that log-data have to be within spectral acquisition time in the first, the narrowed-down search step (there is no precision step in the second search through the whole log file)
	imp_minutesTotalPrecision = 3, 			## the final precision in minutes that the log-data have to meet; if only for one spectrum under this value importing will be aborted
	imp_flagOutliers = TRUE, 				## if, right after importing the data, outliers in the *complete* dataset should be flagged and these flags then stored in the dataset


	## generate Datasets
	gd_keepECs = TRUE,						## if the environmental controls should be kept in the dataset when splitting after the provided variables.


	## Colors
	col_RampForTRH = c("blue", "red", "yellow2"), 	## used for color-coding any column that contains the characters defined as names for the temperature and rel. humidity column. Provide at least two colors.
	col_RampForTimes = c("black", "green"), ## used for color-coding any column that contains the characters defined as names for the absTime and the chron, the chronological order of scans. Provide at least two colors.
	col_userDefinedRamps = list(c("green", "red"), c("blue", "yellow2")), 	## used for coloring the in "p_userDefinedSpecialColnames" defined special column names.   XXX make nicer colors here
	col_alphaForLegends = 220, 				## the value of the alpha channel to be used for the background of most legend boxes. Values can range from 1 to 255, with 1 being completely transparent, and 255 resulting in a completely intransparent white.


	### smoothing ###
	## settings for the Sav. Golay filter at the smoothing process for picking + plotting peaks
	sm_savGolayOrder_p = 2, 				## 
	sm_savGolayLength_n = 25,				## 
	sm_savGolayDeriv_m = 0, 				## 


	### peak picking ###
	pp_AutoSmooth = TRUE, 					## if set to TRUE, an automatic smoothing is applied to the data before the peak-picking process
	pp_bandwidth = 25, 						## the default bandwidth in the peak picking process (the smaller the value, the more peaks will be detected)
	pp_dynamicNrColor = TRUE, 				## if the color of the text of a peak should be the same as the color of the respective element in the legend; if set to FALSE the 2 colors below apply
	pp_colPosPeaks = "red3", 				## the color of the text of positive peaks, only relevant if pp_dynamicNrColor above is set to FALSE
	pp_colNegPeaks = "blue3",				## the color of the text of negative peaks, only relevant if pp_dynamicNrColor above is set to FALSE
	pp_droppLwd = 0.3,						## the linewidth of the lines being drawn from each peak to zero
	pp_NrSize = 0.8, 						## the character expansion of the numbers indicating the detected peaks
	pp_NrVertical = TRUE, 					## if TRUE, the numbers will be displayed vertically, if FALSE they will be displayed horizontally


	## noise
	noi_noiseDataFilename = "NoiseData",	## the default filename for the noise R-data file residing in the AQUAP2SH foler, i.e. the R-data file containing the noise-data used for calculating the noise distribution (used if you decide in the analysis procedure to add noise to the data)
	noi_forceExclusionOfOutliers = TRUE, 	## if, should noise be added to the data, the exclusion of outliers in the noise-dataset should be forced or not. Set to FALSE for not excluding outiers in the noise-dataset.
	noi_forceTimeDifferenceCheck = TRUE, 	## if, should noise be added to the data, the time difference between recording of the noise-data and the actual dataset should be checked, in other words - the age of the noise-data should be checked. Set to FALSE for not checking the time difference between noise-data and actual dataset. If either the noise-data or the actual dataset do *not* contain a timestamp, then the checking of time difference is skipped without note.
	noi_acceptTimeDiffDays = 90, 			## the acceptable time difference in days between recording of the noise-data and the actual data
	noi_forceNoisePlausibility = TRUE, 		## if, should noise be added to the data, it should be checked if the values of the noise data file are not above a defined percentage of the actual dataset (see below); in other words, a plausibility check for the noise-data file.
	noi_plausPercentage = 5, 				## the percentage for plausibility check; see above.
	noi_addMode = "static", 				## the mathematical procedure to add noise to the data, possible values are 'sdNorm' for the standard-deviation based method with normal distribution sampling, sdUnif for the standard-deviation based method with uniform distribution sampling, 'extrema' for the extrema-based method, and 'static' for drawing samples from a normal distribution with a fixed standard deviation. Please see ?noise_procedures for further details. Factory default is 'sdNorm'.
	noi_sampleSize = 100, 					## the number of values to be generated, from which then the random sample is taken. (Factory default is 100.)
	noi_sdNormHalfOnly = FALSE, 			## recommended value is FALSE. If, in mode sdNorm, only the half of the standard deviation should be used for calculating the random values. If set to TRUE, this is reducing the amount of noise added to the data. Factory default is FALSE.
	noi_staticValue = 1e-5, 				## for the static mode: the standard deviation used to calculate the normal distributed values to take a sampled from (using a mean of zero).


	## PCA
	pca_nrDigitsVariance = 3, 				## rounding for the display of explained variances in PCA plots
	pca_loadings_discrim = TRUE,			## if it should be discriminated between true positive / negative peaks in the PCA loading plot
	pca_CI_ellipse_level = 0.95, 			## the CI level to be calculated
	pca_CI_ellipse_robust = TRUE,			## logical (TRUE or FALSE); if the CI-ellipse in PCA score plots should be calculated robust or not
	pca_CI_ellipse_centerPch = "X",			## the character in the center of a cluster in PCA score plots
	pca_CI_ellipse_lty = c(1,2),			## the linetypes (get recycled) of the CI-ellipses
	pca_CI_ellipse_lwd = 1, 				## the line width of the CI-ellipse
	pca_AdLines = TRUE, 					## Logical or integer vector [2..5]; if the additional lines should be added to the loading plot (see '?adLinesToVector' for details)	
	pca_ld_customColor = NULL, 				## the custom color for coloring the loadings in the loading plot. Set to NULL for not using custom colors. Provide a color vector (gets recycled) for using it to color the loadings.
	pca_ld_customLinetype = NULL,			## the custom linetype for plotting the loadings. Set to NULL for automatically generating linetypes. Provide an integer vector to use it as linetypes in the loadings.
	
	
	## SIMCA
	simca_version = "robust", 				## possible values are: 'classic' for using the classic SimcaPCA, and 'robust' for using the robust version
	simca_tolerance = 1.0e-4, 				## XXX package rrcovHD
	simca_kMax = 10,						## The maximum number of components to be used. Seems to be ignored in version classic simca. (package rrcovHD)
	simca_minSpectraEachGroup = 3, 			## the minimum amount of spectra in each group that are required to even calculate a simca model. Can not be lower than 3. Higher numbers (from 4 or 5 upwards) help reducing errors when in robust mode.
	simca_nrDigitsRoundDist = 2, 			## the number of digits the interclass-distance displayed in the graphics should be rounded to
	simca_tablesToTxt = TRUE,				## if classification table should be exported to text
	simca_percNewData_CV = 50, 				## the percentage of the original data to be used as new data (the other part is used for making the model)
	simca_sampling = "interleaved",  		## either "random" or "interleaved"  -- only taken into account when the above percentage is 50. Under development.
	simca_maxBarsPerGraph = 7, 				## the maximum number of bars on one graphic for the class-distance barplots
	simca_rangeForDistBarPlots = 3.5, 		## the range for all the interclass-distance barplots. Set to NULL for no pre-defined range at all, or provide a numeric length one to specify the upper limit on the Y-axis of the interclass distances to be plotted. If values higher than specified appear, the range will be extended automatically.
	simca_BarBlot_horizontalLine = 3, 		## the value of interclass-distance where an horizontal line should be plotted. Set to NULL for not plotting this line.
	
	
	##PLSR
	plsr_calcInParallel = TRUE, 			## if the calculation of the plsr models should be done in parallel
	plsr_calc_CV_consecsTogether = TRUE, 	## if for crossvalidation the consecutive scans (i.e. the scans with the same sample number) should always be excluded or included together
	plsr_calc_typeOfCrossvalid = 10, 		## the default way to perform crossvalidation. Provide 'LOO' for a leave-one-out crossvalidation, a number for performing this n-fold crossvalidation, or 'def' to get the default value from the settings file (parameter 'plsr_calc_typeOfCrossvalid'); a number to perform this n-fold crossvalidation, 'LOO' for a leave-one-out crossvalidation, or a valid name of a class variable for performing a crossvalidation based on the grouping defined by this variable.
	plsr_calc_excludePlsrOutliers = FALSE, 	## if a box-plot based outlier-detection algorithm should be used on the data of a first plsr model to determine the outliers that then will be excluded in the final plsr model.
	plsr_calc_exOutDetectionRange = 0.5, 	## the detection range in multiples of interquartile distance for the plsr-specific outlier detection.
	plsr_plotDataInSwarm = FALSE, 			## set to FALSE to only use the classical (with possibly several points overlapping on a single line) way to plot the training, crossvalidation and prediction plots.
	plsr_plot_secondaryData = TRUE, 		## if the secondary data, i.e. the calibration data for the cross-validation resp. the cross-validation data for the prediction data should be plotted as well.
	plsr_usePureRangeX = FALSE, 			## (recommended value is FALSE) Set to TRUE to use the pure range of the extreme x-swarms to determine the range of the swarm-plot. --> If there are problems with the range of the plots, try setting 'plsr_usePureRangeX' to TRUE.
	plsr_cexForSwarm = 1, 					## the character expansion --> space between the dots in the swarm plots. Set to lower than 1 (~0.88) for the dots moving closer together.
	plsr_addCompsBoundaries = c(7, 20),		## The number of components demarking three regions (below the first number, between first and second, and above the second number) of number of components where the numbers of components listed below are added. (For showing an error plot going beyond the actual number of components)
	plsr_addComps = c(3, 5, 8), 			## how many components should be added to the error plot beyond the calculated best nr. of components in the above specified boundaries
	plsr_univMaxNcomp = 200,				## the universal upper limit of possible components
	plsr_limitNcompToLevels = TRUE, 		## if the max. nr of components (when determining the optimal number of components) should be limited to the number of levels in the y-variable to regress on, i.e. the uniques (excluding NAs)
	plsr_percentObservAsMaxNcomp = 25,		## the percentage of the available number of observations indicating the maximally allowed number of components for the test-runs to determine the optimal number of components
	plsr_nrCompsSwitchToNrObserv = 12,		## the number of maximum allowed number of components below which to the number of observations for defining the max. nr. of allowed components for the test-runs to determine the optimal number of components is switched     XXX explain better !!
	plsr_nrTestIterations = 12, 			## how many repetitions should be calculated when getting the optimal number of components. Not the lowest number of components is chosen, but the one that comes up most often as the lowest.
	plsr_nrDigitsRMSEx = 4,					## rounding for the error values
	plsr_nrDigitsPercentage = 1, 			## rounding for the display of percentage of total nr. of observations in the dataset after NAs have been removed
	plsr_colorForBestNumberComps = "blue",	## the color for the vertical line in the error plot showing the best number of components
	plsr_color_lm_training = "blue", 		## the color for the line showing the linear model of predicted vs. actual data at the training
	plsr_color_lm_crossvalid = "red", 		## the color for the line showing the linear model of predicted vs. actual data at the crossvalidation
	plsr_color_lm_indepPred = "darkgreen",	## the color for the line showing the linear model of predicted vs. actual data at the independent prediction
	plsr_color_pch_primaryData = 16, 		## the pch for the primary data
	plsr_color_pch_secondaryData = 3, 		## the pch for the secondary data
	plsr_color_alpha_secondaryData = 120, 	## the alpha value for the secondary data, i.e. the calibration data for the cross-validation, and the cross-validation data for the prediction data. Values between 1 and 255, with 1 being completely transparent.
	plsr_linetypeTargetLine = 1, 			## the line-type for the grey target line
	plsr_linetypeLinearModel = 1, 			## the line-type for the line showing the liner model of predicted vs. actual data
	plsr_regressionVector_discrim = TRUE,	## if it should be discriminated between true positive / negative peaks in the plsr regression vector
	plsr_AdLines = TRUE, 					## Logical or integer vector [2..5]; if the additional lines should be added to the regression vector plot (see '?adLinesToVector' for details)	
	plsr_rv_customColor = NULL, 			## the custom color for coloring the plsr regression vector. Set to NULL for not using custom colors. Provide a color for using it to color the regression vector.
	plsr_rv_customLinetype = NULL,			## the custom linetype for plotting the plsr regression vector. Provide an integer to use it as linetype for the regression vector.
	plsr_indepPred_printPairingMsg = TRUE,	## if a message with the pairing of model and independent variable for validation should be displayed
	plsr_indepPred_tolerance_nm = 10, 		## the tolerance in nm that is accepted for the independent dataset to be out of wavelength-range at the minimum and maxium wavelength from the cube-dataset (at independent plsr predictions). In development. 
	plsr_indepPred_exportToExcel = TRUE, 	## if an excel file with the results of an independent prediction should be produced.


	## Aquagram 
	aqg_defaultMod = "aucs.dce", 			## the default mode for the Aquagram
	aqg_wlsAquagram = c(1342, 1364, 1374, 1384, 1412, 1426, 1440, 1452, 1462, 1476, 1488, 1512), 	## the wavelengths for the classic aquagram (argument aqg.selWls)
	aqg_nrDigitsAquagram = 2,				## the number of digits displayed in the standard aquagram
	aqg_linetypes = c(1,2,3),				## the default vector for the line-types to be used in the aquagram. Gets recycled.
	aqg_correctNrOfObs = FALSE,				## if the number of observations in each spectral pattern should be corrected (if necessary by random sampling) so that all the spectral pattern are calculated out from the same number of observations
	aqg_adPeakPlot = TRUE,					## if, should subtraction spectra be plotted, an additional plot with picked peaks should be added
	aqg_AdLines = TRUE, 					## if the additional lines should be added to the plot (see XXX for details)
	aqg_discrim = FALSE, 					## if, should subtraction spectra be plotted, it will be discriminated between "true" or "not true" positive peaks
	aqg_defaultMod= "aucs.dce", 			## the default mode for the aquagram. See the help for XXX for possible values.
	aqg_bootCI = FALSE, 					## if confidence intervalls for the selected wavelengths should be calculated within each group (using bootstrap)
	aqg_bootUseParallel = TRUE, 			## if, should the CIs be calculated, this should be done in parallel
	aqg_bootR = "nrow@3",					## if aqg_bootCI = TRUE, how many bootstrap replicates should be performed? leave at "nrow@3" for e.g. 3 x nrow(samples) or provide a length one numeric
	aqg_saveBootRes = TRUE, 				## if the bootstrap result should be saved under "bootResult" to the analysis-data folder
	aqg_smoothCalib = 17,					## the smoothing (sav. golay) applied for the aucs ("area-under-the-curve-stabilization") calibration data
	aqg_calibTRange = "symm@2", 			## the temperatur range picked out from the calibration data. Either numeric length two [e.g. c(28,32)], or character starting with 'symm@x', with 'x' being the plus and minus delta in temperature from the temperature of the experiment
	aqg_Texp = 28.6,						## the temperature at which the measurements were done
	aqg_OT = "1st",							## what overtone (in development, leave at "1st")
	aqq_nCoord = 12,	 					## only applies to the 1st overtone: how many coordinates to plot (can be 12 or 15)
	aqg_tempCalib_Filename = "TempCalib", 	## the name of the temperature calibration file residing in the AQUAP2SH folder, i.e. the R-data file containing the spectra from the temperature calibration experiment.
	aqg_tempCalib_forceOutlExcl = TRUE, 	## if the exclusion of outliers in the temperature calibration dataset should be forced or not.
	

	## plotting, PDFs
	pdf_Height_ws = 5,						## when plotting to pdf, the settings for the format
	pdf_Width_ws = 8.9,						## ws for widescreen (e.g. regressionvector, loading plots, raw)
	pdf_Height_sq = 9,						## sq for square (e.g. scoreplots)
	pdf_Width_sq = 9, 
	plt_lengthLegend_limToCols = 20, 		## the limit of the length of the legend text determining when the legend text should be displayed in more than 1 column
	plt_lengthLegend_truncate = 60, 		## the limit of the length of the legend text determining when the legend text should be truncated (displaying then the first 3, the middle 3, and the last 3 legend elements)
	plt_legendMoreCols = 3, 				## the number of columns to display the legend in if the length of the legend is higher than the number specified in 'plt_lengthLegend_limToCols' above
	plt_legend_standardCex = 0.85, 			## the standard character expansion for the legend
	plt_legend_smallerCex = 0.7, 			## the character expansion for the legend if there are more than 'plt_lengthLegend_limToCols', but less than 'plt_lengthLegend_truncate' elements present.


	## DelGiudice Areas (tentative), humidity, WAMACs
	dga_dga1 = c(1340, 1440),				## corresponding to the "single" coherent domain
	dga_dga2 = c(1444, 1493),				## corresponding to the gaseous phase in between domains (originally they meet at 1494)
	dga_dga3 = c(1495, 1594),				## corresponding to the meta-domain consisting of coherent single domains	
	dga_facDga = 0.006,						## a factor used to calculate the height of the DelGiudice Areas (the smaller the factor, the smaller the area gets)
	dga_Coh_col = "skyblue2", 				## the color used for filling the coherent DelGiudice Areas
	dga_Gas_col = "grey70", 				## the color used for filling the gaseous DelGiudice Area
	#
	hum_wls = c(1362, 1382), 				## the humidity peaks
	hum_fact = 0.015, 						## factor controlling the size of the humidity wavelength markers
	hum_lwd = 2,							## the line-width for the humidity wavelength markers
	hum_color = "mediumblue",				## the color for the humidity wavelength markers
	#	
	wamac_factor = 0.015, 					## the vertical factor (the smaller, the smaller the lines get)	
	wamac_col1 = "lightskyblue1",			## the first fill-color for the bars (alternating)
	wamac_col2 = "lightskyblue2",			## the second fill-color for the bars (alternating)


	### Misc: Values for time-estimates etc. 
	#### misc
	misc_durationSingleScan = 33, 			## time in seconds needed for a single scan
	misc_handlingTime = 173, 				## the time needed for handling the cuvette, samples, etc.. (in seconds)
	##
	last = 0
	## the last one without comma !!
) # end of list
