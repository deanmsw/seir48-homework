Battle.destroy_all

Battle.create :name => 'Operation Overlord', :theatre => 'Europe', :location => 'Northern France'
Battle.create :name => 'Battle of Singapore', :theatre => 'Pacific', :location => 'Malayan Peninsula'
Battle.create :name => 'Battle of Stalingrad', :theatre => 'Europe', :location => 'USSR'


puts "#{Battle.count} battles created."
