//
//  thermostat.swift
//  NTA TEST 007
//
//  Created by krizzly on 3/4/17.
//  Copyright © 2017 krizzly. All rights reserved.
//

import Foundation
class Thermostat
{
    
    var device_name: String
    var device_label: String
    var device_id: String
    var device_is_online: Bool
    var device_target_temperature_f: Double
    var device_target_temperature_c: Double
    var device_ambient_temperature_f: Double
    var device_ambient_temperature_c: Double
    var device_humidity: Double
    
        // variables to hold data for temperature/humidity
        // data extrapolation. will implement these as app develops.
    //var device_target_temperature_high_f: Double
    //var device_target_temperature_high_c: Double
    //var device_target_temperature_low_f: Double
    //var device_target_temperature_low_c: Double
    
    // initialization function. very simple. arguments are assigned directly to class memebers
    init?(name:String, label:String, id:String, is_online:Bool,
         target_temp_f:Double, target_temp_c:Double, ambient_temp_f:Double,ambient_temp_c:Double, humidity:Double)
    {
        guard  (humidity >= 0 && humidity <= 100)
        else
        {
            return nil
        }

        if id.isEmpty || label.isEmpty || name.isEmpty
        {
            return nil
        }
        self.device_name = name
        self.device_label = label
        self.device_id = id
        self.device_is_online = is_online
        self.device_target_temperature_c = target_temp_c
        self.device_target_temperature_f = target_temp_f
        self.device_ambient_temperature_c = ambient_temp_c
        self.device_ambient_temperature_f = ambient_temp_f
        self.device_humidity = humidity
        
    }
    
    
}

