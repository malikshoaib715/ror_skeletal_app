class Report < ApplicationRecord
  def self.to_csv
    attributes = %w{column1 column2 column3 column4 column5 column6 column7 column8 column9 column }
    CSV.generate(headers: true) do |csv|
      csv << attributes
      all.each do |report|
        csv << report.attributes.values_at(*attributes)

      end

    end
  end
end
