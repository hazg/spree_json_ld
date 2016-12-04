Deface::Override.new(
    :virtual_path => 'spree/products/show',
    :name => 'add_json_ld',
    :insert_after => "[data-hook='product_show']",
    :partial => 'products/json_ld'
)
