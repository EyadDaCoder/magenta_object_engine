-- made by the one and only eyad taha

-- Magenta b_1.0

function Magenta_new_object(object_data_dict) -- !!! Magenta core function !!! Do not tamper with !!!
	objects[object_data_dict["name"]] = object_data_dict["miccel"]
	objects_position[object_data_dict["name"]] = object_data_dict["position"]
	object_data[object_data_dict["name"]] = object_data_dict["data"]
	object_reload_status[object_data_dict["name"]] = false 
	table.insert(objects_names, object_data_dict["name"])
end

function Magenta_reload(cancel_reload) -- !!! Magenta core function !!! Do not tamper with !!!
	for i, v in pairs(objects_names) do
		if cancel_reload ~= v then
			object_reload_status[v] = true
		else 
			object_reload_status[v] = false
		end
	end
end

function love.load()
	objects_names = {} --  !!! Magenta core tables !!! Do not tamper with below values !!!
	objects = {}
	objects_position = {}
	object_data = {}
	object_reload_status = {}

  -- Call new objects under this comment with Magenta_new_object()
end

function love.update(dt)
  Magenta_reload("none") -- This line reloads and draws objects. Replace none with the object you do not want to draw. 
end

function love.draw() -- !! Do not tamper with love.draw !! To create and draw a new object, use Magenta_new_object() and Magenta_reload("none")
	for key_RS, v_RS in pairs(object_reload_status) do
		if v_RS == true then
			if object_data[key_RS][1] == "rectangle" then
				love.graphics.rectangle(-- !!
					object_data[key_RS][5],
					objects_position[key_RS][1],
					objects_position[key_RS][2],
					object_data[key_RS][2],
					object_data[key_RS][3]
				)
			end
		end
	end
end

