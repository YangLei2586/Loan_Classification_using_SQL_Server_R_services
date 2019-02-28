# Part 1  Create Database table to store all the CSV files
CREATE PROCEDURE [dbo].[LoadData]  
AS  
BEGIN  
DROP TABLE IF EXISTS [dbo].[LoanStats]
CREATE TABLE [dbo].[LoanStats](
	[id] [int] NULL,
	[member_id] [int] NULL,
	[loan_amnt] [int] NULL,
	[funded_amnt] [int] NULL,
	[funded_amnt_inv] [int] NULL,
	[term] [nvarchar](max) NULL,
	[int_rate] [nvarchar](max) NULL,
	[installment] [float] NULL,
	[grade] [nvarchar](max) NULL,
	[sub_grade] [nvarchar](max) NULL,
	[emp_title] [nvarchar](max) NULL,
	[emp_length] [nvarchar](max) NULL,
	[home_ownership] [nvarchar](max) NULL,
	[annual_inc] [float] NULL,
	[verification_status] [nvarchar](max) NULL,
	[issue_d] [nvarchar](max) NULL,
	[loan_status] [nvarchar](max) NULL,
	[pymnt_plan] [nvarchar](max) NULL,
	[url] [nvarchar](max) NULL,
	[desc] [nvarchar](max) NULL,
	[purpose] [nvarchar](max) NULL,
	[title] [nvarchar](max) NULL,
	[zip_code] [nvarchar](max) NULL,
	[addr_state] [nvarchar](max) NULL,
	[dti] [float] NULL,
	[delinq_2yrs] [int] NULL,
	[earliest_cr_line] [nvarchar](max) NULL,
	[inq_last_6mths] [int] NULL,
	[mths_since_last_delinq] [int] NULL,
	[mths_since_last_record] [int] NULL,
	[open_acc] [int] NULL,
	[pub_rec] [int] NULL,
	[revol_bal] [int] NULL,
	[revol_util] [nvarchar](max) NULL,
	[total_acc] [int] NULL,
	[initial_list_status] [nvarchar](max) NULL,
	[out_prncp] [float] NULL,
	[out_prncp_inv] [float] NULL,
	[total_pymnt] [float] NULL,
	[total_pymnt_inv] [float] NULL,
	[total_rec_prncp] [float] NULL,
	[total_rec_int] [float] NULL,
	[total_rec_late_fee] [float] NULL,
	[recoveries] [float] NULL,
	[collection_recovery_fee] [float] NULL,
	[last_pymnt_d] [nvarchar](max) NULL,
	[last_pymnt_amnt] [float] NULL,
	[next_pymnt_d] [nvarchar](max) NULL,
	[last_credit_pull_d] [nvarchar](max) NULL,
	[collections_12_mths_ex_med] [int] NULL,
	[mths_since_last_major_derog] [int] NULL,
	[policy_code] [int] NULL,
	[application_type] [nvarchar](max) NULL,
	[annual_inc_joint] [float] NULL,
	[dti_joint] [float] NULL,
	[verification_status_joint] [nvarchar](max) NULL,
	[acc_now_delinq] [int] NULL,
	[tot_coll_amt] [int] NULL,
	[tot_cur_bal] [int] NULL,
	[open_acc_6m] [int] NULL,
	[open_il_6m] [int] NULL,
	[open_il_12m] [int] NULL,
	[open_il_24m] [int] NULL,
	[mths_since_rcnt_il] [int] NULL,
	[total_bal_il] [int] NULL,
	[il_util] [float] NULL,
	[open_rv_12m] [int] NULL,
	[open_rv_24m] [int] NULL,
	[max_bal_bc] [int] NULL,
	[all_util] [float] NULL,
	[total_rev_hi_lim] [int] NULL,
	[inq_fi] [int] NULL,
	[total_cu_tl] [int] NULL,
	[inq_last_12m] [int] NULL,
	[acc_open_past_24mths] [int] NULL,
	[avg_cur_bal] [int] NULL,
	[bc_open_to_buy] [int] NULL,
	[bc_util] [float] NULL,
	[chargeoff_within_12_mths] [int] NULL,
	[delinq_amnt] [int] NULL,
	[mo_sin_old_il_acct] [int] NULL,
	[mo_sin_old_rev_tl_op] [int] NULL,
	[mo_sin_rcnt_rev_tl_op] [int] NULL,
	[mo_sin_rcnt_tl] [int] NULL,
	[mort_acc] [int] NULL,
	[mths_since_recent_bc] [int] NULL,
	[mths_since_recent_bc_dlq] [int] NULL,
	[mths_since_recent_inq] [int] NULL,
	[mths_since_recent_revol_delinq] [int] NULL,
	[num_accts_ever_120_pd] [int] NULL,
	[num_actv_bc_tl] [int] NULL,
	[num_actv_rev_tl] [int] NULL,
	[num_bc_sats] [int] NULL,
	[num_bc_tl] [int] NULL,
	[num_il_tl] [int] NULL,
	[num_op_rev_tl] [int] NULL,
	[num_rev_accts] [int] NULL,
	[num_rev_tl_bal_gt_0] [int] NULL,
	[num_sats] [int] NULL,
	[num_tl_120dpd_2m] [int] NULL,
	[num_tl_30dpd] [int] NULL,
	[num_tl_90g_dpd_24m] [int] NULL,
	[num_tl_op_past_12m] [int] NULL,
	[pct_tl_nvr_dlq] [float] NULL,
	[percent_bc_gt_75] [float] NULL,
	[pub_rec_bankruptcies] [int] NULL,
	[tax_liens] [int] NULL,
	[tot_hi_cred_lim] [int] NULL,
	[total_bal_ex_mort] [int] NULL,
	[total_bc_limit] [int] NULL,
	[total_il_high_credit_limit] [int] NULL	
) 

INSERT INTO [dbo].[LoanStats]
EXEC sp_execute_external_script 
@language = N'R',
@script = N'OutputDataSet <- read.csv("C:/lendingclub/LoanStats3a.csv", h=T,sep = ",")'

INSERT INTO [dbo].[LoanStats]
EXEC sp_execute_external_script 
@language = N'R',
@script = N'OutputDataSet <- read.csv("C:/lendingclub/LoanStats3b.csv", h=T,sep = ",")'

INSERT INTO [dbo].[LoanStats]
EXEC sp_execute_external_script 
@language = N'R',
@script = N'OutputDataSet <- read.csv("C:/lendingclub/LoanStats3c.csv", h=T,sep = ",")'

INSERT INTO [dbo].[LoanStats]
EXEC sp_execute_external_script 
@language = N'R',
@script = N'OutputDataSet <- read.csv("C:/lendingclub/LoanStats3d.csv", h=T,sep = ",")'

INSERT INTO [dbo].[LoanStats]
EXEC sp_execute_external_script 
@language = N'R',
@script = N'OutputDataSet <- read.csv("C:/lendingclub/LoanStats_2016Q1.csv", h=T,sep = ",")'

INSERT INTO [dbo].[LoanStats]
EXEC sp_execute_external_script 
@language = N'R',
@script = N'OutputDataSet <- read.csv("C:/lendingclub/LoanStats_2016Q2.csv", h=T,sep = ",")'

## Executing the above stored procedure creates a table [dbo].[LoanStats] with loan data  
EXEC [dbo].[LoadData]                               
# Part 1 END  

# Part 2 Cleaning data and indentify good loan and bad loan
--DROP unnecessary column desc 
ALTER TABLE [dbo].[LoanStats] DROP COLUMN [desc]

--Remove % from int_rate and convert its type to float 
UPDATE [dbo].[LoanStats] SET [int_rate] = REPLACE([int_rate], '%', '')
ALTER TABLE [dbo].[LoanStats] ALTER COLUMN [int_rate] float

--Remove % from revol_util and convert its type to float
UPDATE [dbo].[LoanStats] SET [revol_util] = REPLACE([revol_util], '%', '')
ALTER TABLE [dbo].[LoanStats] ALTER COLUMN [revol_util] float

--Remove rows where loan_status is empty
DELETE FROM [dbo].[LoanStats] where [loan_status] IS NULL

--Classify all loans as good/bad based on its status and store it in a column named “is_bad”
ALTER TABLE [dbo].[LoanStats] ADD [is_bad] int
UPDATE [dbo].[LoanStats] 
SET [is_bad] = (CASE WHEN loan_status IN ('Late (16-30 days)', 'Late (31-120 days)', 'Default', 'Charged Off') THEN 1 ELSE 0 END)

# Part 3 Feature selection and mind that the required R packages should be installed and loaded

CREATE PROCEDURE [dbo].[PlotDistribution]  
AS  
BEGIN  
SET NOCOUNT ON;  
EXECUTE sp_execute_external_script 
@language = N'R',
@script = N'  
library("reshape2")
library("ggplot2")
# creating output directory
mainDir <- ''C:\\temp\\plots''  
dir.create(mainDir, recursive = TRUE, showWarnings = FALSE)  
setwd(mainDir);  
print("Creating output plot files:", quote=FALSE)  
# Open a jpeg file and output ggplot in that file.  
dest_filename = tempfile(pattern = ''ggplot_'', tmpdir = mainDir)  
dest_filename = paste(dest_filename, ''.jpg'',sep="")  
print(dest_filename, quote=FALSE);
jpeg(filename=dest_filename, height=3900, width = 6400, res=300); 
#filtering numeric columns
numeric_cols <- sapply(loans, is.numeric)
#turn the data into long format (key->value)
loans.lng <- melt(loans[,numeric_cols], id="is_bad")
#plot the distribution for is_bad={0/1} for each numeric column
print(ggplot(aes(x=value, group=is_bad, colour=factor(is_bad)), data=loans.lng) + geom_density() + facet_wrap(~variable, scales="free"))
dev.off()
',  
@input_data_1 = N'SELECT * FROM [dbo].[LoanStats]',
@input_data_1_name = N'loans'

# Part 4 Data splitting
CREATE PROCEDURE [dbo].[SplitLoans]  
AS  
BEGIN  
  SET NOCOUNT ON;  
  -- 75% Training data 
  DROP TABLE IF EXISTS [dbo].[LoanStatsTrain]
  SELECT * INTO [dbo].[LoanStatsTrain] FROM (SELECT * FROM [dbo].[LoanStats] WHERE (ABS(CAST((BINARY_CHECKSUM(id, NEWID())) as int)) % 100) < 75)a
  -- 25% Test data
  DROP TABLE IF EXISTS [dbo].[LoanStatsTest]
  SELECT * INTO [dbo].[LoanStatsTest] FROM (SELECT * FROM [dbo].[LoanStats] WHERE [id] NOT IN (SELECT [id] FROM [dbo].[LoanStatsTrain]))a

END
# Executing the above stored procedure creates 2 tables [dbo].[LoanStatsTrain] and [dbo].[LoanStatsTest]
EXEC [dbo].[SplitLoans]

# Part 5 Data Modeling
CREATE PROCEDURE [dbo].[BuildModel]  
AS  
BEGIN  
  DECLARE @inquery nvarchar(max) = N'SELECT * FROM [dbo].[LoanStatsTrain]'  
  
  DROP TABLE IF EXISTS [dbo].[models]
  CREATE TABLE [dbo].[models]([model] [varbinary](max) NOT NULL)

  INSERT INTO [dbo].[models]
  EXEC sp_execute_external_script 
  @language = N'R',  
  @script = N'  
  randomForestObj <- rxDForest(is_bad ~ revol_util + int_rate + mths_since_last_record + annual_inc_joint + dti_joint + total_rec_prncp + all_util, InputDataSet)
  model <- data.frame(payload = as.raw(serialize(randomForestObj, connection=NULL)))
  ',
  @input_data_1 = @inquery,  
  @output_data_1_name = N'model'  
 
END  
# Executing the above stored procedure builds a random forest model and stores it in [dbo].[models]
EXEC [dbo].[BuildModel]
SELECT * FROM [dbo].[models]

# Part 6 Scoring
CREATE PROCEDURE [dbo].[ScoreLoans] 
AS  
BEGIN  
  DECLARE @inquery nvarchar(max) = N'SELECT * FROM [dbo].[LoanStatsTest]'  
  DECLARE @model varbinary(max) = (SELECT TOP 1 model FROM models)
  
  DROP TABLE IF EXISTS [dbo].[LoanStatsPredictions]
  CREATE TABLE [dbo].[LoanStatsPredictions]([is_bad_Pred] [float] NULL, [id] [int] NULL) 

  INSERT INTO [dbo].[LoanStatsPredictions]   
  EXEC sp_execute_external_script 
  @language = N'R',
  @script = N'  
  rfModel <- unserialize(as.raw(model));  
  OutputDataSet<-rxPredict(rfModel, data = InputDataSet, extraVarsToWrite = c("id"))
  ',
  @input_data_1 = @inquery,
  @params = N'@model varbinary(max)',
  @model = @model
  
END  
# Executing the above stored procedure creates a table [dbo].[LoanStatsPredictions] which contains the predictions in is_bad_Pred column
EXEC [dbo].[ScoreLoans]
SELECT TOP 10 * FROM [dbo].[LoanStatsPredictions]

# Evaluating the model by plotting the ROC curve
CREATE PROCEDURE [dbo].[PlotROCCurve]  
AS  
BEGIN  
  EXEC sp_execute_external_script
  @language = N'R',
  @script = N'  
  suppressMessages(library("ROCR"))
  
  # create output directory
  mainDir <- ''C:\\temp\\plots''  
  dir.create(mainDir, recursive = TRUE, showWarnings = FALSE)  
  setwd(mainDir);  
  print("Creating output plot files:", quote=FALSE)  
  
  # Open a jpeg file and output ROC Curve in that file
  dest_filename = tempfile(pattern = ''rocCurve_'', tmpdir = mainDir)  
  dest_filename = paste(dest_filename, ''.jpg'',sep="")  
  print(dest_filename, quote=FALSE);
  jpeg(filename=dest_filename, height=1800, width = 1800, res = 300); 
  
  # Plot ROC Curve
  pred <- prediction(loanPredictions$is_bad_Pred, loanPredictions$is_bad)
  perf <- performance(pred,"tpr","fpr")
  plot(perf)
  abline(a=0,b=1)
  dev.off()
  
  # Print Area under the Curve
  auc <- performance(pred, "auc")
  print(paste0("Area under ROC Curve : ", as.numeric(auc@y.values)))
',  
@input_data_1 = N'SELECT b.is_bad_Pred, a.is_bad FROM [dbo].[LoanStatsTest] a INNER JOIN [dbo].[LoanStatsPredictions] b ON a.id = b.id',  
@input_data_1_name = N'loanPredictions'

END  
# Executing the above stored procedure will save the ROC curve in C:\temp\plots as well as output the Area Under The Curve measure (AUC)
EXEC [dbo].[PlotROCCurve]