Factory.define :entry do |f|
  f.sequence(:producer) {|n| "producername#{n}" }
  f.sequence(:consumer) {|n| "consumername#{n}" }
  f.association :food
  f.association :brand
end

Factory.define :food do |f|
  f.sequence(:name) {|n| "foodname#{n}" }
end

Factory.define :brand do |f|
  f.sequence(:name) {|n| "brandname#{n}" }
end

