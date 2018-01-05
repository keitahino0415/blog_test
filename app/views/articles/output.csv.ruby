require 'csv'

CSV.generate do |csv|
  csv_column_names = %w(Title Text Created_Date Updated_Date)
  csv << csv_column_names

  @article.each do |a|
    csv_column_values = [
      a.title,
      a.text,
      a.created_at,
      a.updated_at
    ]
    csv << csv_column_values
  end
end
