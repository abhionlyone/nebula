# lib/tasks/auto_annotate_models.rake
if Rails.env.development?
  task :set_annotation_options do # rubocop:disable Metrics/BlockLength
    Annotate.set_defaults(
      'position_in_class' => 'before',
      'show_foreign_keys' => 'true',
      'show_indexes' => 'true',
      'simple_indexes' => 'false',
      'model_dir' => 'app/models',
      'exclude_tests' => 'true',
      'exclude_fixtures' => 'true',
      'exclude_factories' => 'true',
      'exclude_serializers' => 'true',
      'exclude_scaffolds' => 'true',
      'exclude_controllers' => 'true',
      'exclude_helpers' => 'true',
      'exclude_sti_subclasses' => 'false',
      'ignore_model_sub_dir' => 'false',
      'ignore_columns' => nil,
      'ignore_routes' => 'false',
      'ignore_unknown_models' => 'false',
      'hide_limit_column_types' => 'integer,boolean',
      'hide_default_column_types' => 'json,jsonb,hstore',
      'skip_on_db_migrate' => 'false',
      'format_bare' => 'true',
      'format_rdoc' => 'false',
      'format_markdown' => 'false',
      'sort' => 'false',
      'force' => 'false',
      'trace' => 'false',
      'wrapper_open' => nil,
      'wrapper_close' => nil
    )
  end

  Annotate.load_tasks
  Rake::Task['db:migrate'].enhance ['set_annotation_options'] do
    Rake::Task['annotate_models'].invoke
  end

  Rake::Task['db:rollback'].enhance ['set_annotation_options'] do
    Rake::Task['annotate_models'].invoke
  end
end
