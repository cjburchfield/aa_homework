class Person < ApplicationRecord
    primary_key: :name,
    foreign_key: :house_id,
end

