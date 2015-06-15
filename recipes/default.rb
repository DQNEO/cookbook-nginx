include_recipe cookbook_name.to_s + "::package"
include_recipe cookbook_name.to_s + "::garbage"
include_recipe cookbook_name.to_s + "::conf"


