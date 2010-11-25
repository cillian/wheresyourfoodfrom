Factory.define :entry do |f|
  f.association :producer, :factory => :country
  f.association :consumer, :factory => :country
  f.association :food
  f.association :brand
end

Factory.define :food do |f|
  f.sequence(:name) {|n| "foodname#{n}" }
  f.consumption_type 'food'
end

Factory.define :brand do |f|
  f.sequence(:name) {|n| "brandname#{n}" }
end

Factory.define :country do |f|
  f.sequence(:name) {|n| "countryname#{n}" } 
end
