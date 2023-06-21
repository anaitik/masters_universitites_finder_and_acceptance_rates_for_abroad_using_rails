namespace :bx_block_university do
    desc 'Import universities from JSON'
    task import_universities: :environment do
      json_file_path = Rails.root.join('public', 'bx_block_university', 'datauniversity.json')
      json_data = File.read(json_file_path, encoding: 'UTF-8')
      universities = JSON.parse(json_data)
  
      universities.each do |university_data|
        university_attributes = {
          logo: university_data['logo'],
          ios_logo: university_data['ios_logo'],
          name: university_data['name'],
          tuition: university_data['tuition'],
          gpa: university_data['gpa'],
          uni_type: university_data['uni_type'],
          avg_salary: university_data['avg_salary'],
          rank: university_data['rank'],
          country_name: university_data['country_name'],
          living_expenses: university_data['living_expenses'],
          gmat: university_data['gmat'],
          gre: university_data['gre'],
          slug: university_data['slug'],
          total_students: university_data['total_students'].to_i,
          address: university_data['address'],
          schools: university_data['schools'],
          acceptance_rate_masters: university_data['acceptance_rate_masters'],
          short_name: university_data['short_name']
        }
  
       BxBlockUniversity::University.create!(university_attributes)
      end
  
      puts 'Universities imported successfully.'
    end
  end
  