local S = minetest.get_translator(minetest.get_current_modname())

tt.register_snippet(function(itemstring)
	local def = minetest.registered_items[itemstring]
	local desc
	local armor_heal = def.groups.armor_heal
	local armor_fire = def.groups.armor_fire
	local armor_water = def.groups.armor_water
	local armor_use = def.groups.armor_use
	local physics_speed = def.groups.physics_speed
	local physics_gravity = def.groups.physics_gravity
	local physics_jump = def.groups.physics_jump

	if def.armor_groups then
		desc = S("Armor")

		if armor_heal then
			desc = desc .. "\n" .. S("Heal: @1", armor_heal)
		end

		if armor_fire then
			desc = desc .. "\n" .. S("Fire: @1", armor_fire)
		end

		if armor_water then
			desc = desc .. "\n" .. S("Water: @1", armor_water)
		end

		if armor_use then
			desc = desc .. "\n" .. S("Damageability: @1", armor_use)
		end

		if physics_speed then
			desc = desc .. "\n" .. S("Speed: @1", physics_speed)
		end

		if physics_gravity then
			desc = desc .. "\n" .. S("Gravity: @1", physics_gravity)
		end

		if physics_jump then
			desc = desc .. "\n" .. S("Jump: @1", physics_jump)
		end
	end

	return desc
end)
