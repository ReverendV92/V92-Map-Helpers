
-- V92 Auto-Download Map File

-- How It Works:
-- When playing on a map, the map and all needed files will be dynamically added to the resource.AddWorkshop list.
-- When the map is no longer actively loaded, the download will be removed.

AddCSLuaFile()

if SERVER then

	maplist = {}

	-- V92

	maplist["fs_auditorium"] = "543254337"
	maplist["fs_brain-archives"] = "135616832"
	maplist["fs_bridge"] = "474414964"
	maplist["fs_cityx"] = "517232476"
	maplist["fs_gs-teamspeak"] = "133545651"
	maplist["fs_hoth"] = "660464983"
	maplist["fs_shining"] = "563628067"
	maplist["fs_western"] = "215552742"
	maplist["v92_airship"] = "819571874"	
	maplist["v92_basementdweller"] = "105497660"
	maplist["v92_bench"] = "1507172856"
	maplist["v92_bench_night"] = "1507172856"
	maplist["v92_dynamicrp"] = "841255224"
	maplist["v92_luckyhouse"] = "161584931"
	maplist["v92_ratloft"] = "515532525"
	maplist["v92_styx-train"] = "819658117"
	maplist["v92_toysoldiers"] = "171540690"
	maplist["v92_steptest"] = "918830898"	
	maplist["v92_warehouse"] = "482291622"
	
	maplist["v92_cyberapartment"] = "779486754"
	maplist["v92_cyberapartment_blue"] = "779486754"
	maplist["v92_cyberapartment_green"] = "779486754"

	maplist["v92_toyhouse"] = "776116981" -- Map
	maplist["v92_toyhouse"] = "883694408" -- Content
	maplist["v92_toyhouse"] = "316911859" -- Toy Props
	
	maplist["v92_toyhouse_night"] = "776116981" -- Map
	maplist["v92_toyhouse_night"] = "883694408" -- Content
	maplist["v92_toyhouse_night"] = "316911859" -- Toy Props
	
	maplist["v92_toyhouse_train"] = "814836760" -- Map
	maplist["v92_toyhouse_train"] = "883694408" -- Content
	maplist["v92_toyhouse_train"] = "316911859" -- Toy Props
	maplist["v92_toyhouse_train"] = "391016040" -- TrakPak
	
	maplist["v92_toyhouse_train_night"] = "814836760" -- Map
	maplist["v92_toyhouse_train_night"] = "883694408" -- Content
	maplist["v92_toyhouse_train_night"] = "316911859" -- Toy Props
	maplist["v92_toyhouse_train_night"] = "391016040" -- TrakPak

	-- Gets the current map name
	local map = game.GetMap()
	
	-- Finds the workshop ID for the current map name from the table above
	local workshopid = maplist[map] 

	if( workshopid != nil )then
	
		--If the map is in the table above, add it through workshop
		print( "[WORKSHOP] Setting up map download: " ..map.. " has workshop ID of: " ..workshopid )
		
		resource.AddWorkshop( workshopid )
		
	else
	
		--If not, then hope the server has FastDL or the client has the map
		print( "[WORKSHOP] Not available for current map." )
		
	end
	
	resource.AddWorkshop( "927273038" ) -- V92 Map sorter / Auto-downloader
	
end
