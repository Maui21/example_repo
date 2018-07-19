# view: calendar {
#   derived_table: {
# #     distribution_style: all
# #     sortkeys: ["date"]
# #    sql_trigger_value:  GETDATE() ;;
#     sql: -- ## 1) Create a Date table with a row for each date.
#       SELECT cast('2001-01-01' as date) + d AS real_date,
#             cast('2001-01-01' as date) + (d + 15) AS fin_date
#       FROM
#         (SELECT ROW_NUMBER() OVER(ORDER BY id) -1 AS d FROM orders ORDER BY id LIMIT 20000) AS  d
#       ;;
#   }

#   dimension: real_date {
#     type: date
#     sql: ${TABLE}.real_date ;;
#   }

#   dimension: fin_date {
#     type: date
#     sql: ${TABLE}.fin_date ;;
#   }
# }
