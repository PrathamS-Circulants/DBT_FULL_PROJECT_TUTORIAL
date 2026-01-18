Welcome to your new dbt project!

### Using the starter project

Try running the following commands:
- dbt run
- dbt test


### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

```
DBT_FULL_PROJECT_TUTORIAL
├─ analyses
│  └─ StoreRevenue.sql
├─ dbt_packages
│  ├─ dbt_date
│  │  ├─ .circleci
│  │  │  └─ config.yml
│  │  ├─ CHANGELOG.md
│  │  ├─ dbt_project.yml
│  │  ├─ integration_tests
│  │  │  ├─ ci
│  │  │  │  └─ profiles.yml
│  │  │  ├─ dbt_project.yml
│  │  │  ├─ docker
│  │  │  │  ├─ hive-site.xml
│  │  │  │  ├─ spark-defaults.conf
│  │  │  │  └─ trino
│  │  │  │     └─ catalog
│  │  │  │        └─ memory.properties
│  │  │  ├─ docker-compose.yml
│  │  │  ├─ docker-start.sh
│  │  │  ├─ docker-stop.sh
│  │  │  ├─ macros
│  │  │  │  ├─ expression_is_true.sql
│  │  │  │  ├─ get_custom_schema.sql
│  │  │  │  └─ get_test_dates.sql
│  │  │  ├─ models
│  │  │  │  ├─ dates.sql
│  │  │  │  ├─ dim_date.sql
│  │  │  │  ├─ dim_date_fiscal.sql
│  │  │  │  ├─ dim_hour.sql
│  │  │  │  ├─ dim_week.sql
│  │  │  │  ├─ test_dates.sql
│  │  │  │  └─ test_dates.yml
│  │  │  ├─ packages.yml
│  │  │  └─ test.sh
│  │  ├─ LICENSE
│  │  ├─ macros
│  │  │  ├─ calendar_date
│  │  │  │  ├─ convert_timezone.sql
│  │  │  │  ├─ date_part.sql
│  │  │  │  ├─ day_name.sql
│  │  │  │  ├─ day_of_month.sql
│  │  │  │  ├─ day_of_week.sql
│  │  │  │  ├─ day_of_year.sql
│  │  │  │  ├─ from_unixtimestamp.sql
│  │  │  │  ├─ iso_week_end.sql
│  │  │  │  ├─ iso_week_of_year.sql
│  │  │  │  ├─ iso_week_start.sql
│  │  │  │  ├─ last_month.sql
│  │  │  │  ├─ last_month_name.sql
│  │  │  │  ├─ last_month_number.sql
│  │  │  │  ├─ last_week.sql
│  │  │  │  ├─ month_name.sql
│  │  │  │  ├─ next_month.sql
│  │  │  │  ├─ next_month_name.sql
│  │  │  │  ├─ next_month_number.sql
│  │  │  │  ├─ next_week.sql
│  │  │  │  ├─ now.sql
│  │  │  │  ├─ n_days_ago.sql
│  │  │  │  ├─ n_days_away.sql
│  │  │  │  ├─ n_months_ago.sql
│  │  │  │  ├─ n_months_away.sql
│  │  │  │  ├─ n_weeks_ago.sql
│  │  │  │  ├─ n_weeks_away.sql
│  │  │  │  ├─ periods_since.sql
│  │  │  │  ├─ round_timestamp.sql
│  │  │  │  ├─ today.sql
│  │  │  │  ├─ tomorrow.sql
│  │  │  │  ├─ to_unixtimestamp.sql
│  │  │  │  ├─ week_end.sql
│  │  │  │  ├─ week_of_year.sql
│  │  │  │  ├─ week_start.sql
│  │  │  │  └─ yesterday.sql
│  │  │  ├─ fiscal_date
│  │  │  │  ├─ get_fiscal_periods.sql
│  │  │  │  └─ get_fiscal_year_dates.sql
│  │  │  ├─ get_base_dates.sql
│  │  │  ├─ get_date_dimension.sql
│  │  │  └─ _utils
│  │  │     ├─ date_spine.sql
│  │  │     ├─ generate_series.sql
│  │  │     └─ modules_datetime.sql
│  │  ├─ packages.yml
│  │  └─ README.md
│  ├─ dbt_expectations
│  │  ├─ .circleci
│  │  │  └─ config.yml
│  │  ├─ .editorconfig
│  │  ├─ CHANGELOG.md
│  │  ├─ data
│  │  ├─ dbt_project.yml
│  │  ├─ docs
│  │  │  ├─ catalog.json
│  │  │  ├─ index.html
│  │  │  ├─ manifest.json
│  │  │  └─ run_results.json
│  │  ├─ integration_tests
│  │  │  ├─ .sqlfluff
│  │  │  ├─ .sqlfluffignore
│  │  │  ├─ ci
│  │  │  │  └─ profiles.yml
│  │  │  ├─ dbt_project.yml
│  │  │  ├─ docker
│  │  │  │  ├─ hive-site.xml
│  │  │  │  └─ spark-defaults.conf
│  │  │  ├─ docker-compose.yml
│  │  │  ├─ docker-start.sh
│  │  │  ├─ docker-stop.sh
│  │  │  ├─ macros
│  │  │  │  └─ get_custom_schema.sql
│  │  │  ├─ models
│  │  │  │  └─ schema_tests
│  │  │  │     ├─ data_test.sql
│  │  │  │     ├─ data_test_factored.sql
│  │  │  │     ├─ data_text.sql
│  │  │  │     ├─ schema.yml
│  │  │  │     ├─ series_10.sql
│  │  │  │     ├─ series_4.sql
│  │  │  │     ├─ timeseries_base.sql
│  │  │  │     ├─ timeseries_data.sql
│  │  │  │     ├─ timeseries_data_extended.sql
│  │  │  │     ├─ timeseries_data_grouped.sql
│  │  │  │     ├─ timeseries_hourly.sql
│  │  │  │     ├─ timeseries_hourly_data_extended.sql
│  │  │  │     └─ window_function_test.sql
│  │  │  ├─ packages.yml
│  │  │  └─ test.sh
│  │  ├─ LICENSE
│  │  ├─ macros
│  │  │  ├─ math
│  │  │  │  ├─ log_natural.sql
│  │  │  │  ├─ median.sql
│  │  │  │  ├─ percentile_cont.sql
│  │  │  │  └─ rand.sql
│  │  │  ├─ regex
│  │  │  │  └─ regexp_instr.sql
│  │  │  ├─ schema_tests
│  │  │  │  ├─ aggregate_functions
│  │  │  │  │  ├─ expect_column_distinct_count_to_be_greater_than.sql
│  │  │  │  │  ├─ expect_column_distinct_count_to_be_less_than.sql
│  │  │  │  │  ├─ expect_column_distinct_count_to_equal.sql
│  │  │  │  │  ├─ expect_column_distinct_count_to_equal_other_table.sql
│  │  │  │  │  ├─ expect_column_distinct_values_to_be_in_set.sql
│  │  │  │  │  ├─ expect_column_distinct_values_to_contain_set.sql
│  │  │  │  │  ├─ expect_column_distinct_values_to_equal_set.sql
│  │  │  │  │  ├─ expect_column_max_to_be_between.sql
│  │  │  │  │  ├─ expect_column_mean_to_be_between.sql
│  │  │  │  │  ├─ expect_column_median_to_be_between.sql
│  │  │  │  │  ├─ expect_column_min_to_be_between.sql
│  │  │  │  │  ├─ expect_column_most_common_value_to_be_in_set.sql
│  │  │  │  │  ├─ expect_column_proportion_of_unique_values_to_be_between.sql
│  │  │  │  │  ├─ expect_column_quantile_values_to_be_between.sql
│  │  │  │  │  ├─ expect_column_stdev_to_be_between.sql
│  │  │  │  │  ├─ expect_column_sum_to_be_between.sql
│  │  │  │  │  └─ expect_column_unique_value_count_to_be_between.sql
│  │  │  │  ├─ column_values_basic
│  │  │  │  │  ├─ expect_column_values_to_be_between.sql
│  │  │  │  │  ├─ expect_column_values_to_be_decreasing.sql
│  │  │  │  │  ├─ expect_column_values_to_be_increasing.sql
│  │  │  │  │  ├─ expect_column_values_to_be_in_set.sql
│  │  │  │  │  ├─ expect_column_values_to_be_in_type_list.sql
│  │  │  │  │  ├─ expect_column_values_to_be_null.sql
│  │  │  │  │  ├─ expect_column_values_to_be_of_type.sql
│  │  │  │  │  ├─ expect_column_values_to_be_unique.sql
│  │  │  │  │  ├─ expect_column_values_to_have_consistent_casing.sql
│  │  │  │  │  ├─ expect_column_values_to_not_be_in_set.sql
│  │  │  │  │  └─ expect_column_values_to_not_be_null.sql
│  │  │  │  ├─ distributional
│  │  │  │  │  ├─ expect_column_values_to_be_within_n_moving_stdevs.sql
│  │  │  │  │  ├─ expect_column_values_to_be_within_n_stdevs.sql
│  │  │  │  │  └─ expect_row_values_to_have_data_for_every_n_datepart.sql
│  │  │  │  ├─ multi-column
│  │  │  │  │  ├─ expect_column_pair_values_A_to_be_greater_than_B.sql
│  │  │  │  │  ├─ expect_column_pair_values_to_be_equal.sql
│  │  │  │  │  ├─ expect_column_pair_values_to_be_in_set.sql
│  │  │  │  │  ├─ expect_compound_columns_to_be_unique.sql
│  │  │  │  │  ├─ expect_multicolumn_sum_to_equal.sql
│  │  │  │  │  └─ expect_select_column_values_to_be_unique_within_record.sql
│  │  │  │  ├─ string_matching
│  │  │  │  │  ├─ expect_column_values_to_match_like_pattern.sql
│  │  │  │  │  ├─ expect_column_values_to_match_like_pattern_list.sql
│  │  │  │  │  ├─ expect_column_values_to_match_regex.sql
│  │  │  │  │  ├─ expect_column_values_to_match_regex_list.sql
│  │  │  │  │  ├─ expect_column_values_to_not_match_like_pattern.sql
│  │  │  │  │  ├─ expect_column_values_to_not_match_like_pattern_list.sql
│  │  │  │  │  ├─ expect_column_values_to_not_match_regex.sql
│  │  │  │  │  ├─ expect_column_values_to_not_match_regex_list.sql
│  │  │  │  │  ├─ expect_column_value_lengths_to_be_between.sql
│  │  │  │  │  ├─ expect_column_value_lengths_to_equal.sql
│  │  │  │  │  └─ _get_like_pattern_expression.sql
│  │  │  │  ├─ table_shape
│  │  │  │  │  ├─ expect_column_to_exist.sql
│  │  │  │  │  ├─ expect_grouped_row_values_to_have_recent_data.sql
│  │  │  │  │  ├─ expect_row_values_to_have_recent_data.sql
│  │  │  │  │  ├─ expect_table_aggregation_to_equal_other_table.sql
│  │  │  │  │  ├─ expect_table_columns_to_contain_set.sql
│  │  │  │  │  ├─ expect_table_columns_to_match_ordered_list.sql
│  │  │  │  │  ├─ expect_table_columns_to_match_set.sql
│  │  │  │  │  ├─ expect_table_columns_to_not_contain_set.sql
│  │  │  │  │  ├─ expect_table_column_count_to_be_between.sql
│  │  │  │  │  ├─ expect_table_column_count_to_equal.sql
│  │  │  │  │  ├─ expect_table_column_count_to_equal_other_table.sql
│  │  │  │  │  ├─ expect_table_row_count_to_be_between.sql
│  │  │  │  │  ├─ expect_table_row_count_to_equal.sql
│  │  │  │  │  ├─ expect_table_row_count_to_equal_other_table.sql
│  │  │  │  │  ├─ expect_table_row_count_to_equal_other_table_times_factor.sql
│  │  │  │  │  ├─ _get_column_list.sql
│  │  │  │  │  └─ _list_intersect.sql
│  │  │  │  └─ _generalized
│  │  │  │     ├─ equal_expression.sql
│  │  │  │     ├─ expression_between.sql
│  │  │  │     ├─ expression_is_true.sql
│  │  │  │     ├─ _ignore_row_if_expression.sql
│  │  │  │     └─ _truth_expression.sql
│  │  │  └─ utils
│  │  │     ├─ datatypes.sql
│  │  │     ├─ groupby.sql
│  │  │     └─ md5.sql
│  │  ├─ packages.yml
│  │  ├─ README.md
│  │  ├─ regen_docs.sh
│  │  ├─ static
│  │  │  ├─ dbt-expectations-logo.png
│  │  │  ├─ dbt-expectations-logo.svg
│  │  │  └─ expectations.gif
│  │  └─ tests
│  └─ dbt_utils
│     ├─ .circleci
│     │  └─ config.yml
│     ├─ CHANGELOG.md
│     ├─ CONTRIBUTING.md
│     ├─ dbt_project.yml
│     ├─ dev-requirements.txt
│     ├─ docker-compose.yml
│     ├─ docs
│     │  └─ decisions
│     │     ├─ adr-0000-documenting-architecture-decisions.md
│     │     ├─ adr-0001-decision-record-format.md
│     │     ├─ adr-0002-cross-database-utils.md
│     │     └─ README.md
│     ├─ integration_tests
│     │  ├─ .env
│     │  │  ├─ bigquery.env
│     │  │  ├─ postgres.env
│     │  │  ├─ redshift.env
│     │  │  └─ snowflake.env
│     │  ├─ data
│     │  │  ├─ datetime
│     │  │  │  └─ data_date_spine.csv
│     │  │  ├─ etc
│     │  │  │  └─ data_people.csv
│     │  │  ├─ geo
│     │  │  │  ├─ data_haversine_km.csv
│     │  │  │  └─ data_haversine_mi.csv
│     │  │  ├─ schema_tests
│     │  │  │  ├─ data_cardinality_equality_a.csv
│     │  │  │  ├─ data_cardinality_equality_b.csv
│     │  │  │  ├─ data_not_null_proportion.csv
│     │  │  │  ├─ data_test_accepted_range.csv
│     │  │  │  ├─ data_test_at_least_one.csv
│     │  │  │  ├─ data_test_equality_a.csv
│     │  │  │  ├─ data_test_equality_b.csv
│     │  │  │  ├─ data_test_equality_floats_a.csv
│     │  │  │  ├─ data_test_equality_floats_b.csv
│     │  │  │  ├─ data_test_equality_floats_columns_a.csv
│     │  │  │  ├─ data_test_equality_floats_columns_b.csv
│     │  │  │  ├─ data_test_equal_rowcount.csv
│     │  │  │  ├─ data_test_expression_is_true.csv
│     │  │  │  ├─ data_test_fewer_rows_than_table_1.csv
│     │  │  │  ├─ data_test_fewer_rows_than_table_2.csv
│     │  │  │  ├─ data_test_mutually_exclusive_ranges_no_gaps.csv
│     │  │  │  ├─ data_test_mutually_exclusive_ranges_with_gaps.csv
│     │  │  │  ├─ data_test_mutually_exclusive_ranges_with_gaps_zero_length.csv
│     │  │  │  ├─ data_test_not_accepted_values.csv
│     │  │  │  ├─ data_test_not_constant.csv
│     │  │  │  ├─ data_test_relationships_where_table_1.csv
│     │  │  │  ├─ data_test_relationships_where_table_2.csv
│     │  │  │  ├─ data_test_sequential_timestamps.csv
│     │  │  │  ├─ data_test_sequential_values.csv
│     │  │  │  ├─ data_unique_combination_of_columns.csv
│     │  │  │  └─ schema.yml
│     │  │  ├─ sql
│     │  │  │  ├─ data_deduplicate.csv
│     │  │  │  ├─ data_deduplicate_expected.csv
│     │  │  │  ├─ data_events_20180101.csv
│     │  │  │  ├─ data_events_20180102.csv
│     │  │  │  ├─ data_events_20180103.csv
│     │  │  │  ├─ data_filtered_columns_in_relation.csv
│     │  │  │  ├─ data_filtered_columns_in_relation_expected.csv
│     │  │  │  ├─ data_generate_series.csv
│     │  │  │  ├─ data_generate_surrogate_key.csv
│     │  │  │  ├─ data_get_column_values.csv
│     │  │  │  ├─ data_get_column_values_dropped.csv
│     │  │  │  ├─ data_get_column_values_where.csv
│     │  │  │  ├─ data_get_column_values_where_expected.csv
│     │  │  │  ├─ data_get_query_results_as_dict.csv
│     │  │  │  ├─ data_get_single_value.csv
│     │  │  │  ├─ data_nullcheck_table.csv
│     │  │  │  ├─ data_pivot.csv
│     │  │  │  ├─ data_pivot_expected.csv
│     │  │  │  ├─ data_pivot_expected_apostrophe.csv
│     │  │  │  ├─ data_safe_add.csv
│     │  │  │  ├─ data_safe_divide.csv
│     │  │  │  ├─ data_safe_divide_denominator_expressions.csv
│     │  │  │  ├─ data_safe_divide_numerator_expressions.csv
│     │  │  │  ├─ data_safe_subtract.csv
│     │  │  │  ├─ data_star.csv
│     │  │  │  ├─ data_star_aggregate.csv
│     │  │  │  ├─ data_star_aggregate_expected.csv
│     │  │  │  ├─ data_star_expected.csv
│     │  │  │  ├─ data_star_prefix_suffix_expected.csv
│     │  │  │  ├─ data_star_quote_identifiers.csv
│     │  │  │  ├─ data_union_events_expected.csv
│     │  │  │  ├─ data_union_exclude_expected.csv
│     │  │  │  ├─ data_union_expected.csv
│     │  │  │  ├─ data_union_table_1.csv
│     │  │  │  ├─ data_union_table_2.csv
│     │  │  │  ├─ data_unpivot.csv
│     │  │  │  ├─ data_unpivot_bool.csv
│     │  │  │  ├─ data_unpivot_bool_expected.csv
│     │  │  │  ├─ data_unpivot_expected.csv
│     │  │  │  ├─ data_unpivot_original_api_expected.csv
│     │  │  │  ├─ data_unpivot_quote.csv
│     │  │  │  ├─ data_unpivot_quote_expected.csv
│     │  │  │  └─ data_width_bucket.csv
│     │  │  └─ web
│     │  │     ├─ data_urls.csv
│     │  │     ├─ data_url_host.csv
│     │  │     └─ data_url_path.csv
│     │  ├─ dbt_project.yml
│     │  ├─ macros
│     │  │  ├─ assert_equal_values.sql
│     │  │  ├─ limit_zero.sql
│     │  │  └─ tests.sql
│     │  ├─ models
│     │  │  ├─ datetime
│     │  │  │  ├─ schema.yml
│     │  │  │  └─ test_date_spine.sql
│     │  │  ├─ generic_tests
│     │  │  │  ├─ equality_less_columns.sql
│     │  │  │  ├─ recency_time_excluded.sql
│     │  │  │  ├─ recency_time_included.sql
│     │  │  │  ├─ schema.yml
│     │  │  │  ├─ test_equal_column_subset.sql
│     │  │  │  ├─ test_equal_rowcount.sql
│     │  │  │  └─ test_fewer_rows_than.sql
│     │  │  ├─ geo
│     │  │  │  ├─ schema.yml
│     │  │  │  ├─ test_haversine_distance_km.sql
│     │  │  │  └─ test_haversine_distance_mi.sql
│     │  │  ├─ sql
│     │  │  │  ├─ schema.yml
│     │  │  │  ├─ test_deduplicate.sql
│     │  │  │  ├─ test_generate_series.sql
│     │  │  │  ├─ test_generate_surrogate_key.sql
│     │  │  │  ├─ test_get_column_values.sql
│     │  │  │  ├─ test_get_column_values_where.sql
│     │  │  │  ├─ test_get_filtered_columns_in_relation.sql
│     │  │  │  ├─ test_get_relations_by_pattern.sql
│     │  │  │  ├─ test_get_relations_by_prefix_and_union.sql
│     │  │  │  ├─ test_get_single_value.sql
│     │  │  │  ├─ test_get_single_value_default.sql
│     │  │  │  ├─ test_groupby.sql
│     │  │  │  ├─ test_not_empty_string_failing.sql
│     │  │  │  ├─ test_not_empty_string_passing.sql
│     │  │  │  ├─ test_nullcheck_table.sql
│     │  │  │  ├─ test_pivot.sql
│     │  │  │  ├─ test_pivot_apostrophe.sql
│     │  │  │  ├─ test_safe_add.sql
│     │  │  │  ├─ test_safe_divide.sql
│     │  │  │  ├─ test_safe_subtract.sql
│     │  │  │  ├─ test_star.sql
│     │  │  │  ├─ test_star_aggregate.sql
│     │  │  │  ├─ test_star_no_columns.sql
│     │  │  │  ├─ test_star_prefix_suffix.sql
│     │  │  │  ├─ test_star_quote_identifiers.sql
│     │  │  │  ├─ test_star_uppercase.sql
│     │  │  │  ├─ test_union.sql
│     │  │  │  ├─ test_union_base.sql
│     │  │  │  ├─ test_union_exclude_base_lowercase.sql
│     │  │  │  ├─ test_union_exclude_base_uppercase.sql
│     │  │  │  ├─ test_union_exclude_lowercase.sql
│     │  │  │  ├─ test_union_exclude_uppercase.sql
│     │  │  │  ├─ test_union_no_source_column.sql
│     │  │  │  ├─ test_union_where.sql
│     │  │  │  ├─ test_union_where_base.sql
│     │  │  │  ├─ test_unpivot.sql
│     │  │  │  ├─ test_unpivot_bool.sql
│     │  │  │  ├─ test_unpivot_quote.sql
│     │  │  │  └─ test_width_bucket.sql
│     │  │  └─ web
│     │  │     ├─ schema.yml
│     │  │     ├─ test_urls.sql
│     │  │     ├─ test_url_host.sql
│     │  │     └─ test_url_path.sql
│     │  ├─ package-lock.yml
│     │  ├─ packages.yml
│     │  ├─ profiles.yml
│     │  ├─ README.md
│     │  └─ tests
│     │     ├─ assert_get_query_results_as_dict_objects_equal.sql
│     │     ├─ generic
│     │     │  └─ expect_table_columns_to_match_set.sql
│     │     ├─ jinja_helpers
│     │     │  ├─ assert_pretty_output_msg_is_string.sql
│     │     │  ├─ assert_pretty_time_is_string.sql
│     │     │  └─ test_slugify.sql
│     │     └─ sql
│     │        ├─ test_get_column_values_use_default.sql
│     │        └─ test_get_single_value_multiple_rows.sql
│     ├─ LICENSE
│     ├─ macros
│     │  ├─ generic_tests
│     │  │  ├─ accepted_range.sql
│     │  │  ├─ at_least_one.sql
│     │  │  ├─ cardinality_equality.sql
│     │  │  ├─ equality.sql
│     │  │  ├─ equal_rowcount.sql
│     │  │  ├─ expression_is_true.sql
│     │  │  ├─ fewer_rows_than.sql
│     │  │  ├─ mutually_exclusive_ranges.sql
│     │  │  ├─ not_accepted_values.sql
│     │  │  ├─ not_constant.sql
│     │  │  ├─ not_empty_string.sql
│     │  │  ├─ not_null_proportion.sql
│     │  │  ├─ recency.sql
│     │  │  ├─ relationships_where.sql
│     │  │  ├─ sequential_values.sql
│     │  │  └─ unique_combination_of_columns.sql
│     │  ├─ jinja_helpers
│     │  │  ├─ log_info.sql
│     │  │  ├─ pretty_log_format.sql
│     │  │  ├─ pretty_time.sql
│     │  │  ├─ slugify.sql
│     │  │  ├─ _is_ephemeral.sql
│     │  │  └─ _is_relation.sql
│     │  ├─ sql
│     │  │  ├─ date_spine.sql
│     │  │  ├─ deduplicate.sql
│     │  │  ├─ generate_series.sql
│     │  │  ├─ generate_surrogate_key.sql
│     │  │  ├─ get_column_values.sql
│     │  │  ├─ get_filtered_columns_in_relation.sql
│     │  │  ├─ get_query_results_as_dict.sql
│     │  │  ├─ get_relations_by_pattern.sql
│     │  │  ├─ get_relations_by_prefix.sql
│     │  │  ├─ get_single_value.sql
│     │  │  ├─ get_tables_by_pattern_sql.sql
│     │  │  ├─ get_tables_by_prefix_sql.sql
│     │  │  ├─ get_table_types_sql.sql
│     │  │  ├─ groupby.sql
│     │  │  ├─ haversine_distance.sql
│     │  │  ├─ nullcheck.sql
│     │  │  ├─ nullcheck_table.sql
│     │  │  ├─ pivot.sql
│     │  │  ├─ safe_add.sql
│     │  │  ├─ safe_divide.sql
│     │  │  ├─ safe_subtract.sql
│     │  │  ├─ star.sql
│     │  │  ├─ surrogate_key.sql
│     │  │  ├─ union.sql
│     │  │  ├─ unpivot.sql
│     │  │  └─ width_bucket.sql
│     │  └─ web
│     │     ├─ get_url_host.sql
│     │     ├─ get_url_parameter.sql
│     │     └─ get_url_path.sql
│     ├─ Makefile
│     ├─ pytest.ini
│     ├─ README.md
│     ├─ RELEASE.md
│     ├─ run_functional_test.sh
│     ├─ run_test.sh
│     ├─ supported_adapters.env
│     └─ tox.ini
├─ dbt_project.yml
├─ logs
│  ├─ dbt.log
│  └─ query_log.sql
├─ macros
│  └─ generate_schema_name.sql
├─ models
│  ├─ customerorder.sql
│  ├─ customerrevenue.sql
│  ├─ customers_stg.sql
│  ├─ employees_stg.sql
│  ├─ generic_test.yml
│  ├─ hook_test.sql
│  ├─ oms_doc_blocks.md
│  ├─ orderitems_stg.sql
│  ├─ orderitems_uniq.sql
│  ├─ orders_fact.sql
│  ├─ orders_stg.sql
│  ├─ sources
│  │  └─ l1.yml
│  └─ storeperformance.sql
├─ package-lock.yml
├─ packages.yml
├─ README.md
├─ seeds
│  └─ salestargets.csv
├─ snapshots
├─ target
│  ├─ catalog.json
│  ├─ compiled
│  │  ├─ analyses
│  │  │  ├─ StoreRevenue.macro_spans.json
│  │  │  └─ StoreRevenue.sql
│  │  ├─ dbt_full_project_tutorial
│  │  │  ├─ analyses
│  │  │  │  └─ StoreRevenue.sql
│  │  │  ├─ models
│  │  │  │  ├─ customerorder.sql
│  │  │  │  ├─ customerrevenue.sql
│  │  │  │  ├─ customers_stg.sql
│  │  │  │  ├─ employees_stg.sql
│  │  │  │  ├─ generic_test.yml
│  │  │  │  │  ├─ accepted_values_orders_stg_StatusCD__01__02__03.sql
│  │  │  │  │  ├─ dbt_expectations_expect_table__67c2a0af3e2620401097d9338520b385.sql
│  │  │  │  │  ├─ not_null_orders_stg_OrderID.sql
│  │  │  │  │  ├─ relationships_orderitems_stg_OrderID__OrderID__ref_orders_stg_.sql
│  │  │  │  │  ├─ string_not_empty_customers_stg_Email.sql
│  │  │  │  │  ├─ string_not_empty_employees_stg_JobTitle.sql
│  │  │  │  │  └─ unique_orders_stg_OrderID.sql
│  │  │  │  ├─ orderitems_stg.sql
│  │  │  │  ├─ orderitems_uniq.sql
│  │  │  │  ├─ orders_fact.sql
│  │  │  │  ├─ orders_stg.sql
│  │  │  │  └─ storeperformance.sql
│  │  │  └─ tests
│  │  │     ├─ orders_fact_negative_revenue_check.sql
│  │  │     └─ record_count_check.sql
│  │  └─ models
│  │     ├─ customerorder.macro_spans.json
│  │     ├─ customerorder.sql
│  │     ├─ customerrevenue.macro_spans.json
│  │     ├─ customerrevenue.sql
│  │     ├─ customers_stg.macro_spans.json
│  │     ├─ customers_stg.sql
│  │     ├─ employees_stg.macro_spans.json
│  │     ├─ employees_stg.sql
│  │     ├─ hook_test.macro_spans.json
│  │     ├─ hook_test.sql
│  │     ├─ orderitems_stg.macro_spans.json
│  │     ├─ orderitems_stg.sql
│  │     ├─ orderitems_uniq.macro_spans.json
│  │     ├─ orderitems_uniq.sql
│  │     ├─ orders_fact.macro_spans.json
│  │     ├─ orders_fact.sql
│  │     ├─ orders_stg.macro_spans.json
│  │     ├─ orders_stg.sql
│  │     ├─ storeperformance.macro_spans.json
│  │     └─ storeperformance.sql
│  ├─ data
│  │  └─ dbt_project_db
│  │     └─ dbt_project_schema_l3
│  │        └─ salestargets
│  │           └─ output.parquet
│  ├─ dbt-lsp.log
│  ├─ generic_tests
│  │  ├─ accepted_values_orders_stg_StatusCD__01__02__03.sql
│  │  ├─ expect_table_row_count_to_equa_67c2a0af3e2620401097d9338520b385.sql
│  │  ├─ not_null_orders_stg_OrderID.sql
│  │  ├─ relationships_orderitems_stg_OrderID__OrderID__ref_orders_stg_.sql
│  │  ├─ string_not_empty_customers_stg_Email.sql
│  │  ├─ string_not_empty_employees_stg_JobTitle.sql
│  │  └─ unique_orders_stg_OrderID.sql
│  ├─ graph.gpickle
│  ├─ graph_summary.json
│  ├─ index.html
│  ├─ manifest.json
│  ├─ partial_parse.msgpack
│  ├─ run
│  │  └─ dbt_full_project_tutorial
│  │     ├─ models
│  │     │  ├─ customerorder.sql
│  │     │  ├─ customerrevenue.sql
│  │     │  ├─ customers_stg.sql
│  │     │  ├─ employees_stg.sql
│  │     │  ├─ generic_test.yml
│  │     │  │  ├─ accepted_values_orders_stg_StatusCD__01__02__03.sql
│  │     │  │  ├─ dbt_expectations_expect_table__67c2a0af3e2620401097d9338520b385.sql
│  │     │  │  ├─ not_null_orders_stg_OrderID.sql
│  │     │  │  ├─ relationships_orderitems_stg_OrderID__OrderID__ref_orders_stg_.sql
│  │     │  │  ├─ string_not_empty_customers_stg_Email.sql
│  │     │  │  ├─ string_not_empty_employees_stg_JobTitle.sql
│  │     │  │  └─ unique_orders_stg_OrderID.sql
│  │     │  ├─ orderitems_stg.sql
│  │     │  ├─ orderitems_uniq.sql
│  │     │  ├─ orders_fact.sql
│  │     │  ├─ orders_stg.sql
│  │     │  └─ storeperformance.sql
│  │     └─ tests
│  │        ├─ orders_fact_negative_revenue_check.sql
│  │        └─ record_count_check.sql
│  ├─ run_results.json
│  ├─ schemas
│  │  ├─ analyzed
│  │  │  ├─ analysis.dbt_full_project_tutorial.StoreRevenue
│  │  │  │  └─ output.parquet
│  │  │  ├─ model.dbt_full_project_tutorial.customerorder
│  │  │  │  └─ output.parquet
│  │  │  ├─ model.dbt_full_project_tutorial.customerrevenue
│  │  │  │  └─ output.parquet
│  │  │  ├─ model.dbt_full_project_tutorial.customers_stg
│  │  │  │  └─ output.parquet
│  │  │  ├─ model.dbt_full_project_tutorial.employees_stg
│  │  │  │  └─ output.parquet
│  │  │  ├─ model.dbt_full_project_tutorial.hook_test
│  │  │  │  └─ output.parquet
│  │  │  ├─ model.dbt_full_project_tutorial.orderitems_stg
│  │  │  │  └─ output.parquet
│  │  │  ├─ model.dbt_full_project_tutorial.orderitems_uniq
│  │  │  │  └─ output.parquet
│  │  │  ├─ model.dbt_full_project_tutorial.orders_fact
│  │  │  │  └─ output.parquet
│  │  │  ├─ model.dbt_full_project_tutorial.orders_stg
│  │  │  │  └─ output.parquet
│  │  │  ├─ model.dbt_full_project_tutorial.storeperformance
│  │  │  │  └─ output.parquet
│  │  │  └─ seed.dbt_full_project_tutorial.salestargets
│  │  │     └─ output.parquet
│  │  └─ sourced_remote
│  │     └─ internal
│  │        └─ DBT_PROJECT_DB
│  │           └─ DBT_PROJECT_SCHEMA_L1
│  │              ├─ CUSTOMERS
│  │              │  └─ output.parquet
│  │              ├─ EMPLOYEES
│  │              │  └─ output.parquet
│  │              ├─ ORDERITEMS
│  │              │  └─ output.parquet
│  │              └─ ORDERS
│  │                 └─ output.parquet
│  ├─ semantic_manifest.json
│  └─ snapshots
└─ tests
   ├─ generic
   │  └─ string_not_empty.sql
   ├─ orders_fact_negative_revenue_check.sql
   └─ record_count_check.sql

```