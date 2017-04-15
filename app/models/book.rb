class Book < ApplicationRecord
  enum binding_format: [:hardcover, :paperback]
end
