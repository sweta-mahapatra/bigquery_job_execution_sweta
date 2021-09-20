connection: "information_schema_tables"

# include all the views
include: "/views/**/*.view"

datagroup: bigquery_job_exec_report_sweta_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bigquery_job_exec_report_sweta_default_datagroup

explore: job_execution_query {}
