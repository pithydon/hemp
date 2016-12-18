-- index {
--  rope function
--  register the plant
--  nodes
--  craft items
--  craft recipes
--  mapgen
--  TRM
-- }

-- rope function
local creative = minetest.setting_getbool("creative_mode")
local place_rope = function(pos, itemstack)
	if itemstack == nil and itemstack:get_count() <= 1 then
		return
	else
		local maxNodes = itemstack:get_count();
		if creative then
			maxNodes = 100
		end
		local nSetNodes = 0;
		local node = minetest.get_node(pos)
		local param = node.param2

		for i = 2, maxNodes do
			pos.y = pos.y - 1
			local nodeBelow = minetest.get_node(pos)
			if nodeBelow ~= nil then
				if nodeBelow.name == "air" then
					minetest.set_node(pos, {name = "hemp:hemp_rope", param2 = param})
					nSetNodes = nSetNodes + 1;
				else
					break
				end
			end
		end
		if not creative then
			itemstack:set_count(maxNodes - nSetNodes);
		end
	end
end

local dig_rope = function(pos, digger)
	if digger == nil and not digger:is_player() then
		return
	end

	local nDugNodes = 0;
	local maxNodes = 100;
	local originalY = pos.y;

	for i = 1, maxNodes do
		pos.y = originalY + i;
		local node = minetest.get_node(pos)
		if node ~= nil then
			if node.name == "hemp:hemp_rope" then
				if not minetest.is_protected(pos, digger:get_player_name()) then
					minetest.remove_node(pos)
					nDugNodes = nDugNodes + 1
				else
					break
				end
			else
				break
			end
		end
	end
	for i = -1, -maxNodes, -1 do
		pos.y = originalY + i;
		local node = minetest.get_node(pos)
		if node ~= nil then
			if node.name == "hemp:hemp_rope" then
				if not minetest.is_protected(pos, digger:get_player_name()) then
					minetest.remove_node(pos)
					nDugNodes = nDugNodes + 1
				else
					break
				end
			else
				break
			end
		end
	end
	local inventory = digger:get_inventory()
	if inventory == nil then
		return
	end
	if not creative then
		inventory:add_item("main", "hemp:hemp_rope " .. nDugNodes)
	end
end

-- register the plant
farming.register_plant("hemp:hemp", {
	description = "Hemp seed",
	inventory_image = "hemp_hemp_seed.png",
	steps = 8,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"}
})

minetest.override_item("hemp:hemp_1", {
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, -0.25, 0.0625},
			{-0.125, -0.25, -0.125, 0.125, -0.25, 0.125}
		}
	},
	tiles = {"hemp_hemp_leaves.png", "hemp_hemp_leaves.png", "hemp_hemp_stalk.png"},
	sunlight_propagates = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.375, -0.5, -0.375, 0.375, -0.25, 0.375}
	}
})

minetest.override_item("hemp:hemp_2", {
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, 0, 0.0625},
			{-0.125, 0, -0.125, 0.125, 0, 0.125}
		}
	},
	tiles = {"hemp_hemp_leaves.png", "hemp_hemp_leaves.png", "hemp_hemp_stalk.png"},
	sunlight_propagates = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.375, -0.5, -0.375, 0.375, 0, 0.375}
	}
})

minetest.override_item("hemp:hemp_3", {
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, 0.25, 0.0625},
			{-0.5, 0, -0.5, 0.5, 0, 0.5},
			{-0.125, 0.25, -0.125, 0.125, 0.25, 0.125}
		}
	},
	tiles = {"hemp_hemp_leaves.png", "hemp_hemp_leaves.png", "hemp_hemp_stalk.png"},
	sunlight_propagates = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.375, -0.5, -0.375, 0.375, 0.25, 0.375}
	}
})

minetest.override_item("hemp:hemp_4", {
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
			{-0.5, 0, -0.5, 0.5, 0, 0.5},
			{-0.125, 0.5, -0.125, 0.125, 0.5, 0.125}
		}
	},
	tiles = {"hemp_hemp_leaves.png", "hemp_hemp_leaves.png", "hemp_hemp_stalk.png"},
	sunlight_propagates = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.375, -0.5, -0.375, 0.375, 0.5, 0.375}
	}
})

minetest.override_item("hemp:hemp_5", {
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, 0.75, 0.0625},
			{-0.5, 0, -0.5, 0.5, 0, 0.5},
			{-0.5, 0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.125, 0.75, -0.125, 0.125, 0.75, 0.125}
		}
	},
	tiles = {"hemp_hemp_leaves.png", "hemp_hemp_leaves.png", "hemp_hemp_stalk.png"},
	sunlight_propagates = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.375, -0.5, -0.375, 0.375, 0.75, 0.375}
	}
})

minetest.override_item("hemp:hemp_6", {
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, 1, 0.0625},
			{-0.5, 0, -0.5, 0.5, 0, 0.5},
			{-0.5, 0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.125, 1, -0.125, 0.125, 1, 0.125}
		}
	},
	tiles = {"hemp_hemp_leaves.png", "hemp_hemp_leaves.png", "hemp_hemp_stalk.png"},
	sunlight_propagates = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.375, -0.5, -0.375, 0.375, 1, 0.375}
	}
})

minetest.override_item("hemp:hemp_7", {
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, 1.25, 0.0625},
			{-0.5, 0, -0.5, 0.5, 0, 0.5},
			{-0.5, 0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.5, 1, -0.5, 0.5, 1, 0.5},
			{-0.125, 1.25, -0.125, 0.125, 1.25, 0.125}
		}
	},
	tiles = {"hemp_hemp_leaves.png", "hemp_hemp_leaves.png", "hemp_hemp_stalk.png"},
	sunlight_propagates = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.375, -0.5, -0.375, 0.375, 1.25, 0.375}
		}
})

minetest.override_item("hemp:hemp_8", {
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.0625, 0.0625, 1.5, 0.0625},
			{-0.5, 0, -0.5, 0.5, 0, 0.5},
			{-0.5, 0.5, -0.5, 0.5, 0.5, 0.5},
			{-0.5, 1, -0.5, 0.5, 1, 0.5},
			{-0.125, 1.5, -0.125, 0.125, 1.5, 0.125}
		}
	},
	tiles = {"hemp_hemp_leaves.png", "hemp_hemp_leaves.png", "hemp_hemp_stalk.png"},
	sunlight_propagates = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.375, -0.5, -0.375, 0.375, 1.5, 0.375}
		}
})

-- nodes
minetest.register_node("hemp:hemp_rope", {
	description = "Hemp Rope",
	tiles = {"hemp_rope.png"},
	walkable = false,
	climbable = true,
	paramtype = "light",
	paramtype2 = "wallmounted",
	groups = {snappy = 3, flammable = 3},
	drawtype = "nodebox",
	node_box = {
		type = "wallmounted",
		wall_top = {-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		wall_bottom = {-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		wall_side = {-0.5, -0.5, -0.0625, -0.375, 0.5, 0.0625}
	},
	selection_box = {
		type = "wallmounted",
		wall_top = {-0.125, -0.5, -0.125, 0.125, 0.5, 0.125},
		wall_bottom = {-0.125, -0.5, -0.125, 0.125, 0.5, 0.125},
		wall_side = {-0.5, -0.5, -0.125, -0.25, 0.5, 0.125}
	},
	connect_sides = {"top", "bottom"},
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		local under = pointed_thing.under
		local above = pointed_thing.above
		if under.y >= above.y then
			place_rope(pos, itemstack);
			return false;
		else
			local placer_pos = placer:getpos()
			local dir = {
				x = above.x - placer_pos.x,
				y = above.y - placer_pos.y,
				z = above.z - placer_pos.z
			}
			local param = minetest.dir_to_facedir(dir)
			local above = minetest.get_node({x = pos.x, y = pos.y + 1, z = pos.z})
			if above.name == "hemp:hemp_rope" then
				minetest.swap_node(pos, {name = "hemp:hemp_rope_corner", param2 = param})
			else
				minetest.swap_node(pos, {name = "hemp:hemp_rope_ground", param2 = param})
			end
		end
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		dig_rope(pos, digger)
	end
})

minetest.register_node("hemp:hemp_rope_ground", {
	description = "Hemp Rope",
	tiles = {"hemp_rope.png"},
	walkable = true,
	climbable = false,
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, flammable = 3, not_in_creative_inventory = 1},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {-0.0625, -0.5, -0.5, 0.0625, -0.375, 0.5}
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.125, -0.5, -0.5, 0.125, -0.3125, 0.5}
	},
	drop = "hemp:hemp_rope"
})

minetest.register_node("hemp:hemp_rope_corner", {
	description = "Hemp Rope",
	tiles = {"hemp_rope.png"},
	walkable = true,
	climbable = true,
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy = 3, flammable = 3, not_in_creative_inventory = 1},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.0625, -0.5, -0.5, 0.0625, -0.375, 0.5},
			{-0.0625, -0.375, 0.375, 0.0625, 0.5, 0.5}
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.125, -0.5, -0.5, 0.125, -0.3125, 0.5},
			{-0.125, -0.3125, 0.3125, 0.125, 0.5, 0.5}
		}
	},
	collision_box = {
		type = "fixed",
		fixed = {-0.0625, -0.5, -0.5, 0.0625, -0.375, 0.5}
	},
	drop = "hemp:hemp_rope"
})

minetest.register_node("hemp:hemp_rope_fence", {
	description = "Hemp Rope Fence",
	tiles = {"hemp_rope.png"},
	inventory_image = "hemp_hemp_rope_fence.png",
	wield_image = "hemp_hemp_rope_fence.png",
	walkable = true,
	climbable = false,
	paramtype = "light",
	groups = {snappy = 3, fence = 1, flammable = 3},
	drawtype = "nodebox",
	node_box = {
		type = "connected",
		fixed = {-0.0625, -0.3125, -0.0625, 0.0625, 0.3125, 0.0625},
		connect_top = {-0.0625, 0.3125, -0.0625, 0.0625, 0.5, 0.0625},
		connect_bottom = {-0.0625, -0.5, -0.0625, 0.0625, -0.3125, 0.0625},
		connect_front = {{-0.0625, 0.1875, -0.5, 0.0625, 0.3125, -0.0625}, {-0.0625, -0.3125, -0.5, 0.0625, -0.1875, -0.0625}},
		connect_left = {{-0.5, 0.1875, -0.0625, -0.0625, 0.3125, 0.0625}, {-0.5, -0.3125, -0.0625, -0.0625, -0.1875, 0.0625}},
		connect_back = {{-0.0625, 0.1875, 0.0625, 0.0625, 0.3125, 0.5}, {-0.0625, -0.3125, 0.0625, 0.0625, -0.1875, 0.5}},
		connect_right = {{0.0625, 0.1875, -0.0625, 0.5, 0.3125, 0.0625}, {0.0625, -0.3125, -0.0625, 0.5, -0.1875, 0.0625}}
	},
	connects_to = {"group:fence", "group:wood", "group:tree", "group:stone", "hemp:hemp_rope", "hemp:hempcrete"}
})

minetest.register_node("hemp:hemp_rug", {
	description = "Hemp Rug",
	tiles = {"hemp_rope.png"},
	wield_image = "hemp_rope.png",
	inventory_image = "hemp_rope.png",
	paramtype = "light",
	paramtype2 = "wallmounted",
	groups = {snappy = 3, flammable = 3, attached_node = 1},
	drawtype = "nodebox",
	node_box = {
		type = "wallmounted",
		wall_top = {-0.5, 0.4375, -0.5, 0.5, 0.5, 0.5},
		wall_bottom = {-0.5, -0.5, -0.5, 0.5, -0.4375, 0.5},
		wall_side = {-0.5, -0.5, -0.5, -0.4375, 0.5, 0.5}
	}
})

minetest.register_node("hemp:hempcrete", {
	description = "Hempcrete",
	tiles = {"hemp_hempcrete.png"},
	groups = {crumbly = 1, cracky = 3},
	drawtype = "normal",
	sound = default.node_sound_stone_defaults()
})

minetest.register_node("hemp:hempcrete_brick", {
	description = "Hempcrete Brick",
	tiles = {"hemp_hempcrete_brick.png"},
	groups = {crumbly = 1, cracky = 3},
	drawtype = "normal",
	sound = default.node_sound_stone_defaults()
})

if minetest.get_modpath("flowerpots") then
	minetest.register_node("hemp:flowerpot_hemp", {
		description = "hemp in a pot.",
		tiles = {{name = "hemp_hemp_leaves.png", backface_culling = true}, {name = "hemp_hemp_stalk.png", backface_culling = true},
				{name = "flowerpots_pot.png", backface_culling = true}, {name = "default_dirt.png", backface_culling = true}},
		paramtype = "light",
		paramtype2 = "facedir",
		drawtype = "mesh",
		mesh = "hemp_flowerpot.obj",
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.1875, -0.5, -0.1875, 0.1875, -0.1875, 0.1875},
				{-0.1875, -0.3125, 0.1875, 0.25, -0.125, 0.25},
				{-0.25, -0.3125, -0.1875, -0.1875, -0.125, 0.25},
				{-0.25, -0.3125, -0.25, 0.1875, -0.125, -0.1875},
				{0.1875, -0.3125, -0.25, 0.25, -0.125, 0.1875}
			}
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.1875, -0.5, -0.1875, 0.1875, -0.3125, 0.1875},
				{-0.25, -0.3125, -0.25, 0.25, 0.5, 0.25}
			}
		},
		groups = {snappy = 3, cracky = 3, oddly_breakable_by_hand = 3, not_in_creative_inventory = 1},
		on_punch = flowerpots.take_plant("hemp:seed_hemp")
	})

	flowerpots.plants["hemp:seed_hemp"] = "hemp:flowerpot_hemp"

	flowerpots.override_on_place("hemp:seed_hemp")
end

-- craft items
minetest.register_craftitem("hemp:cooked_seed_hemp", {
	description = "cooked Hemp Seed",
	inventory_image = "hemp_cooked_hemp_seed.png",
	on_use = minetest.item_eat(4)
})

minetest.register_craftitem("hemp:hemp_fiber", {
	description = "Hemp Fiber",
	inventory_image = "hemp_hemp_fiber.png"
})

minetest.register_craftitem("hemp:hemp_fabric", {
	description = "Hemp Fabric",
	inventory_image = "hemp_hemp_fabric.png"
})

-- craft recipes
minetest.register_craft({
	type = "cooking",
	cooktime = 13,
	output = "hemp:cooked_seed_hemp",
	recipe = "hemp:seed_hemp"
})

minetest.register_craft({
	type = "shapeless",
	output = "hemp:hemp_fiber",
	recipe = {"hemp:hemp"}
})

minetest.register_craft({
	output = "default:paper",
	recipe = {
		{"hemp:hemp_fiber", "hemp:hemp_fiber", "hemp:hemp_fiber"}
	}
})

minetest.register_craft({
	output = "hemp:hemp_fabric",
	recipe = {
		{"hemp:hemp_fiber", "hemp:hemp_fiber"},
		{"hemp:hemp_fiber", "hemp:hemp_fiber"}
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "hemp:hemp_fiber 4",
	recipe = {"hemp:hemp_fabric"}
})

minetest.register_craft({
	output = "hemp:hemp_rope",
	recipe = {
		{"hemp:hemp_fiber"},
		{"hemp:hemp_fiber"},
		{"hemp:hemp_fiber"}
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "hemp:hemp_fiber 3",
	recipe = {"hemp:hemp_rope"}
})

minetest.register_craft({
	output = "hemp:hemp_rope_fence",
	recipe = {
		{"hemp:hemp_rope"},
		{""},
		{"hemp:hemp_rope"}
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "hemp:hemp_rope 2",
	recipe = {"hemp:hemp_rope_fence"}
})

minetest.register_craft({
	output = "hemp:hemp_rug",
	recipe = {
		{"hemp:hemp_fabric", "hemp:hemp_fabric", "hemp:hemp_fabric"}
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "hemp:hemp_fabric 3",
	recipe = {"hemp:hemp_rug"}
})

minetest.register_craft({
	output = "hemp:hempcrete",
	recipe = {
		{"hemp:hemp_fiber", "hemp:hemp_fiber", "hemp:hemp_fiber"},
		{"hemp:hemp_fiber", "group:stone", "hemp:hemp_fiber"},
		{"hemp:hemp_fiber", "hemp:hemp_fiber", "hemp:hemp_fiber"}
	}
})

minetest.register_craft({
	output = "hemp:hempcrete_brick 4",
	recipe = {
		{"hemp:hempcrete", "hemp:hempcrete"},
		{"hemp:hempcrete", "hemp:hempcrete"}
	}
})

-- mapgen
if minetest.setting_getbool("enable_hemp_mapgen") ~= false then
	local mg_params = minetest.get_mapgen_params()
	if mg_params.mgname ~= "singlenode" then
		minetest.register_decoration({
			deco_type = "simple",
			place_on = {"default:dirt_with_grass"},
			sidelen = 16,
			noise_params = {
				offset = -0.02,
				scale = 0.02,
				spread = {x = 200, y = 200, z = 200},
				seed = seed,
				octaves = 3,
				persist = 0.8
			},
			biomes = {"stone_grassland", "sandstone_grassland", "deciduous_forest", "coniferous_forest"},
			y_min = 1,
			y_max = 31000,
			decoration = "hemp:hemp_8"
		})
	end
end

-- TRM
if minetest.get_modpath("treasurer") then
	treasurer.register_treasure("hemp:hemp",0.03,2,{1,8},nil,"crafting_component")
	treasurer.register_treasure("hemp:seed_hemp",0.006,3,{1,4},nil,"seed")
	treasurer.register_treasure("hemp:hemp_rope",0.02,3,{1,16})
	treasurer.register_treasure("hemp:hemp_rope_fence",0.02,3,{1,7},nil,"building_block")
	treasurer.register_treasure("hemp:hemp_rug",0.01,3,{1,6},nil,"deco")
	treasurer.register_treasure("hemp:hempcrete",0.01,4,{1,4},nil,"building_block")
	treasurer.register_treasure("hemp:hempcrete_brick",0.01,4,{1,4},nil,"building_block")
	treasurer.register_treasure("hemp:cooked_seed_hemp",0.006,2,{1,3},nil,"food")
	treasurer.register_treasure("hemp:hemp_fiber",0.05,2,{1,16},nil,"crafting_component")
	treasurer.register_treasure("hemp:hemp_fabric",0.05,2,{1,4},nil,"crafting_component")
end
