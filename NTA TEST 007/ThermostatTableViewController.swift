//
//  ThermostatTableViewController.swift
//  NTA TEST 007
//
//  Created by krizzly on 3/4/17.
//  Copyright © 2017 krizzly. All rights reserved.
//

import UIKit

class ThermostatTableViewController: UITableViewController {
    //PROPERTIES
    var thermostats = [Thermostat]()
    let thermoIcon = UIImage(named: "hero_01")

    
    // PRIVATE FUNCTIONS
    private func loadSampleThermos()
    {
        
        // build some dummy thermostats
        guard let thermo0 = Thermostat(name: "DUMMY_THERMO_0", label: "DUMMY_LABEL_0", id: "0000000", is_online: true, target_temp_f: 77.7, target_temp_c: 15.5, ambient_temp_f: 77.7, ambient_temp_c: 15.5, humidity: 99.9)
        else
        {
            fatalError("Unable to instantiate thermostat")
        }
        guard let thermo1 = Thermostat(name: "DUMMY_THERMO_1", label: "DUMMY_LABEL_1", id: "0000001", is_online: true, target_temp_f: 77.7, target_temp_c: 15.5, ambient_temp_f: 77.7, ambient_temp_c: 15.5, humidity: 99.9)
            else
        {
            fatalError("Unable to instantiate thermostat")
        }
        
        thermostats += [thermo0,thermo1]
        
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        loadSampleThermos()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return thermostats.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        //table view cells are reused and shoule be dequeed using a cell identifier
        let cellIdentifier = "ThermostatTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
            as? ThermostatTableViewCell
        else
        {
            fatalError("The dequeued cell is not an instance of ThermostatTableViewCell")
        }
        let thermo = thermostats[indexPath.row]
        cell.NameLabel.text =  thermo.device_name
        cell.humidityLabel.text = String(format:"%f",thermo.device_humidity)
        cell.tempLabel.text = String(format:"%f",thermo.device_ambient_temperature_f)
        cell.iconImageView.image = thermoIcon

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    

}
