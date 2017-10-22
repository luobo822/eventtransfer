﻿module.exports = function(world) {
	var query = world.query;
	var routerhandle = function(req, res) {
		res.setHeader('Content-Type', 'application/json');
		var r_eventid = req.session.userconfig.eventselected.eventid ;
		var r_teamid = req.session.userconfig.eventselected.teamid ;
		var r_userposition = req.session.userconfig.eventselected.userposition ;
		var r_userid = req.user.userid ;
		var r_missiongroupid = req.body.missiongroupid ;
		
		var ownerstr = "";
		if (r_userposition != 'Owner') {
			ownerstr =" AND `BifMissionGroup`.`UserID` = '" + r_userid + "' " ;
		}
		var queryStr = " DELETE FROM `BifMissionGroup` " + 
						" WHERE `BifMissionGroup`.`EventID` = '" + r_eventid + "' " + 
						" AND `BifMissionGroup`.`TeamID` = '" + r_teamid + "' " + ownerstr +
						" AND `BifMissionGroup`.`MissionGroupID` = '" + r_missiongroupid + "'; " ;
		//console.log(queryStr);
		
		query.put(queryStr, function(result) {
			res.send("END.");
		});
	}
	return routerhandle;
}