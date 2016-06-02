minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.015,
		scale = 0.02,
		spread = {x = 250, y = 250, z = 250},
		seed = seed,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"stone_grassland", "sandstone_grassland", "deciduous_forest", "coniferous_forest"},
	y_min = 1,
	y_max = 31000,
	decoration = "hemp:hemp_8",
})

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
			{-0.125, -0.25, -0.125, 0.125, -0.25, 0.125},
		},
	},
	tiles = {"hemp_hemp_leaves.png", "hemp_hemp_leaves.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png"},
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
			{-0.125, 0, -0.125, 0.125, 0, 0.125},
		},
	},
	tiles = {"hemp_hemp_leaves.png", "hemp_hemp_leaves.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png"},
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
			{-0.125, 0.25, -0.125, 0.125, 0.25, 0.125},
		},
	},
	tiles = {"hemp_hemp_leaves.png", "hemp_hemp_leaves.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png"},
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
			{-0.125, 0.5, -0.125, 0.125, 0.5, 0.125},
		},
	},
	tiles = {"hemp_hemp_leaves.png", "hemp_hemp_leaves.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png"},
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
			{-0.125, 0.75, -0.125, 0.125, 0.75, 0.125},
		},
	},
	tiles = {"hemp_hemp_leaves.png", "hemp_hemp_leaves.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png"},
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
			{-0.125, 1, -0.125, 0.125, 1, 0.125},
		},
	},
	tiles = {"hemp_hemp_leaves.png", "hemp_hemp_leaves.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png"},
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
			{-0.125, 1.25, -0.125, 0.125, 1.25, 0.125},
		},
	},
	tiles = {"hemp_hemp_leaves.png", "hemp_hemp_leaves.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png"},
	sunlight_propagates = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.375, -0.5, -0.375, 0.375, 1.25, 0.375}
		},
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
			{-0.125, 1.5, -0.125, 0.125, 1.5, 0.125},
		},
	},
	tiles = {"hemp_hemp_leaves.png", "hemp_hemp_leaves.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png", "hemp_hemp_stalk.png"},
	sunlight_propagates = true,
	selection_box = {
		type = "fixed",
		fixed = {-0.375, -0.5, -0.375, 0.375, 1.5, 0.375}
		},
})

minetest.register_craftitem("hemp:cooked_seed_hemp", {
	description = "cooked Hemp Seed",
	inventory_image = "hemp_cooked_hemp_seed.png",
	on_use = minetest.item_eat(4),
})

minetest.register_craft({
	type = "cooking",
	cooktime = 13,
	output = "hemp:cooked_seed_hemp",
	recipe = "hemp:seed_hemp",
})

minetest.register_craftitem("hemp:hemp_fiber", {
	description = "Hemp Fiber",
	inventory_image = "hemp_hemp_fiber.png",
})

minetest.register_craft({
	type = "shapeless",
	output = "hemp:hemp_fiber",
	recipe = {"hemp:hemp"},
})

minetest.register_craftitem("hemp:hemp_fabric", {
	description = "Hemp Fabric",
	inventory_image = "hemp_hemp_fabric.png",
})

minetest.register_craft({
	output = "hemp:hemp_fabric",
	recipe = {
		{"hemp:hemp_fiber", "hemp:hemp_fiber"},
		{"hemp:hemp_fiber", "hemp:hemp_fiber"},
	}
})

minetest.register_node("hemp:hemp_rope", {
	description = "Hemp Rope",
	tiles = {"hemp_rope.png"},
	walkable = false,
	climbable = true,
	paramtype = "light",
	paramtype2 = "wallmounted",
	groups = {snappy=3},
	drawtype = "nodebox",
	node_box = {
		type = "wallmounted",
		wall_top = {-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		wall_bottom = {-0.0625, -0.5, -0.0625, 0.0625, 0.5, 0.0625},
		wall_side = {-0.5, -0.5, -0.0625, -0.375, 0.5, 0.0625},
	},
	selection_box = {
		type = "wallmounted",
		wall_top = {-0.125, -0.5, -0.125, 0.125, 0.5, 0.125},
		wall_bottom = {-0.125, -0.5, -0.125, 0.125, 0.5, 0.125},
		wall_side = {-0.5, -0.5, -0.125, -0.25, 0.5, 0.125},
	},
})

minetest.register_craft({
	output = "hemp:hemp_rope",
	recipe = {
		{"hemp:hemp_fiber"},
		{"hemp:hemp_fiber"},
		{"hemp:hemp_fiber"},
	}
})

minetest.register_node("hemp:hemp_rope_ground", {
	description = "Hemp Rope ground",
	tiles = {"hemp_rope.png"},
	walkable = true,
	climbable = false,
	paramtype = "light",
	paramtype2 = "facedir",
	groups = {snappy=3},
	drawtype = "nodebox",
	node_box = {
		type = "fixed",
		fixed = {-0.0625, -0.5, -0.5, 0.0625, -0.375, 0.5,},
	},
	selection_box = {
		type = "fixed",
		fixed = {-0.125, -0.5, -0.5, 0.125, -0.3125, 0.5},
	},
})

minetest.register_craft({
	type = "shapeless",
	output = "hemp:hemp_rope_ground",
	recipe = {"hemp:hemp_rope"},
})

minetest.register_craft({
	type = "shapeless",
	output = "hemp:hemp_rope",
	recipe = {"hemp:hemp_rope_ground"},
})

minetest.register_node("hemp:hemp_rope_fence", {
	description = "Hemp Rope Fence",
	tiles = {"hemp_rope.png"},
	inventory_image = "hemp_hemp_rope_fence.png",
	wield_image = "hemp_hemp_rope_fence.png",
	walkable = true,
	climbable = false,
	paramtype = "light",
	groups = {snappy=3, fence=1},
	drawtype = "nodebox",
	node_box = {
		type = "connected",
		fixed = {-0.0625, -0.3125, -0.0625, 0.0625, 0.3125, 0.0625},
		connect_front = {{-0.0625, 0.1875, -0.5, 0.0625, 0.3125, -0.0625}, {-0.0625, -0.3125, -0.5, 0.0625, -0.1875, -0.0625}},
		connect_left = {{-0.5, 0.1875, -0.0625, -0.0625, 0.3125, 0.0625}, {-0.5, -0.3125, -0.0625, -0.0625, -0.1875, 0.0625}},
		connect_back = {{-0.0625, 0.1875, 0.0625, 0.0625, 0.3125, 0.5}, {-0.0625, -0.3125, 0.0625, 0.0625, -0.1875, 0.5}},
		connect_right = {{0.0625, 0.1875, -0.0625, 0.5, 0.3125, 0.0625}, {0.0625, -0.3125, -0.0625, 0.5, -0.1875, 0.0625}},
	},
	connects_to = {"group:fence", "group:wood", "group:tree", "group:stone"},
})

minetest.register_craft({
	output = "hemp:hemp_rope_fence",
	recipe = {
		{"hemp:hemp_rope"},
		{""},
		{"hemp:hemp_rope"},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "hemp:hemp_rope 2",
	recipe = {"hemp:hemp_rope_fence"},
})
