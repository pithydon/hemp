minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = -0.015,
		scale = 0.025,
		spread = {x = 200, y = 200, z = 200},
		seed = seed,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"stone_grassland", "sandstone_grassland", "deciduous_forest", "coniferous_forest"},
	y_min = 1,
	y_max = 31000,
	decoration = "hemp:hemp_4",
})

farming.register_plant("hemp:hemp", {
	description = "Hemp seed",
	inventory_image = "hemp_hemp_seed.png",
	steps = 4,
	minlight = 13,
	maxlight = default.LIGHT_MAX,
	fertility = {"grassland"}
})

minetest.override_item("hemp:hemp_1", {
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

minetest.override_item("hemp:hemp_2", {
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

minetest.override_item("hemp:hemp_3", {
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

minetest.override_item("hemp:hemp_4", {
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
	drop = {
		items = {
			{items = {"hemp:hemp"}, rarity = 9 - 8},
			{items = {"hemp:hemp"}, rarity= 18 - 8 * 2},
			{items = {"hemp:seed_hemp"}, rarity = 9 - 8},
			{items = {"hemp:seed_hemp"}, rarity = 18 - 8 * 2},
		},
	}
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

minetest.register_node("hemp:rope", {
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
	output = "hemp:rope",
	recipe = {
		{"hemp:hemp"},
		{"hemp:hemp"},
		{"hemp:hemp"},
	}
})
