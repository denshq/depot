require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  def new_product(image_url)
    Product.new(
      title: "Thermaltake 500w",
      description: "bla bla bla",
      price: 1,
      image_url: image_url)
  end

  test "product attributes must not be empty" do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test "product price must be positive" do
    product = Product.new(
      title: "Thermaltake 500w",
      description: "another psu",
      image_url: "thermaltake.png")
    product.price = -1
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      product.errors[:price]

    product.price = 0
    assert product.invalid?
    assert_equal ["must be greater than or equal to 0.01"],
      product.errors[:price]

    product.price = 1
    assert product.valid?
  end

  test "image_url" do
    ok = %w{ psu.jpg psu.png psu.gif PSU.PNG PSU.Png http://a.a.a/b/c/d/psu.png }
    bad = %w{ psu.bin psu.png/more psu.jpg.more }

    ok.each do |name|
      assert new_product(name).valid?, "#{name} shouldn't be invalid"
    end

    bad.each do |name|
      assert new_product(name).invalid?, "#{name} shouldn't be valid"
    end
  end

  test "product is not valid without a unique title" do
    product = Product.new(
      title: products(:corsair).title,
      description: "bla",
      price: 10,
      image_url: "corsair.png")
    assert product.invalid?
    assert_equal ["has already been taken"], product.errors[:title]
  end
end