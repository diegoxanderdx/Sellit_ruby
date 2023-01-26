# frozen_string_literal: true

require "test_helper"

class CategoryComponentTest < ViewComponent::TestCase
  test "should render an empty category" do
    assert_equal(
      %(<a class=\"category text-blue-900 px-4 py-2 rounded-md drop-shadow-md border bg-blue-900 text-white hover:border-blue-900\" href=\"/\">Todas</a>),
      render_inline(CategoryComponent.new).to_html
    )
  end

  test "should render a category" do
    category = Category.last
    assert_equal(
      %(<a class=\"category text-blue-900 px-4 py-2 rounded-md drop-shadow-md border bg-white hover:border-blue-900 \" href=\"/?category_id=#{category.id}\">#{category.name}</a>),
      render_inline(CategoryComponent.new(category: category)).to_html
    )
  end
end