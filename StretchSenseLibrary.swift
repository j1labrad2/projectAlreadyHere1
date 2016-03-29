//
//  StretchSenseClass.swift
//  BluetoothChart
//
//  Created by Jeremy Labrado on 16/03/16.
//  Copyright © 2016 Jeremy. All rights reserved.
//

import Foundation
import CoreBluetooth

class StretchSenseClass: NSObject, CBCentralManagerDelegate, CBPeripheralDelegate {
    
    /////////////
    //Variables//
    /////////////
    
    // MARK: - Variables
    
    // MARK: - Variables : Manager & Peripherals
    
    /* Central & List of peripheral available and connected */
    private var CentralManager : CBCentralManager! //CBCentralManager object is used to manage the discovered sensors
    private var ListPeripheralAvailable : [CBPeripheral?] = [] //The CBPeripheral object represent the discovered peripheral
   
    // MARK:  Variables : Services & Characteristics UUID

    /* Name, Services & Characteristics UUIDs */
    private var deviceName = "StretchSense"
    private var serviceUUID = CBUUID(string: "00001501-7374-7265-7563-6873656e7365")
    private var dataUUID = CBUUID(string: "00001502-7374-7265-7563-6873656e7365")
    private var resetUUID = CBUUID(string: "00001503-7374-7265-7563-6873656e7365")
    private var shutdownUUID = CBUUID(string: "00001504-7374-7265-7563-6873656e7365")
    private var frequencyUUID = CBUUID(string: "00001505-7374-7265-7563-6873656e7365")
    
    // MARK:  Variables : List & Info

    /* Values of the connected devices*/
    private var listValues: [Int] = []
    /* Informations  */
    private var info = ""

    /////////////
    // Methods //
    /////////////
    
    // MARK: -  Methods

    // MARK: - Getter & Setter : Connection
    
    func getDeviceName() -> String{
        /* Return the Name of the device we are looking for */
        return self.deviceName
    }
    
    func setDeviceName(names: String){
        /* Set the Name of the device we are looking for */
        self.deviceName = names
    }
    
    func getStretchsenseServiceUUID() -> String{
        /* Return the UUID of the Service we are looking for */
        return self.serviceUUID.UUIDString
    }
    func setStretchsenseServiceUUID(service: String){
        /* Set the UUID of the Service we are looking for */
        self.serviceUUID = CBUUID(string: service)
    }
    
    func getStretchSenseDataUUID() -> String{
        /* Return the UUID of the Data Characteristic */
        return self.dataUUID.UUIDString
    }
    func setStretchSenseDataUUID(data: String){
        /* Set the UUID of the Data Characteristic */
        self.dataUUID = CBUUID(string: data)
    }
    
    func getStretchSenseResetUUID() -> String{
        /* Return the UUID of the Reset Characteristic */
        return self.dataUUID.UUIDString
    }
    
    func setStretchSenseResetUUID(reset: String){
        /* Set the UUID of the Reset Characteristic */
        self.dataUUID = CBUUID(string: reset)
    }
    
    func getStretchSenseFreqUUID() -> String{
        /* Return the UUID of the Frequency Characteristic */
        return self.frequencyUUID.UUIDString
    }
    
    func setStretchSenseFreqUUID(freq: String){
        /* Set the UUID of the Frequency Characteristic */
        self.frequencyUUID = CBUUID(string: freq)
    }
    
    func getStretchSenseShutDownUUID() -> String{
        /* Set the UUID of the ShutDown Characteristic */
        return self.shutdownUUID.UUIDString
    }
    
    func setStretchSenseShutDownUUID(shut: String){
        /* Set the UUID of the Shutdown Characteristic */
        self.shutdownUUID = CBUUID(string: shut)
    }
    
  // MARK: Getter & Setter: Values
    
    func getListUUIDPeripheralsAvailable() -> [String] {

    }
    
    func getListDatafromAllPeripheral() -> [Int]{
 
    }
    
    
    func getFrequencyValue(myPeripheral : CBPeripheral!) -> Int{

    }
    
    func getShutdownValue(myPeripheral : CBPeripheral!) -> Int{    }
    
    func getResetValue(myPeripheral : CBPeripheral!) -> Int{
    }
    
    
    func writeFrequency(dataIn: UInt8, myPeripheral : CBPeripheral?) {

    }
    
    func writeReset(dataIn: UInt8, myPeripheral : CBPeripheral?) {

    }
    
    func writeShutdown(dataIn: UInt8, myPeripheral : CBPeripheral?) {

    }


    // MARK:  Getter & Setter : Informations
    
    func getListPeripheralsAvailable() -> [CBPeripheral?]   {

    }
    
    func getNumberOfDeviceAvailable() -> Int {

    }
    
    func getInformation() -> String{

    }
    
    // MARK: - Main functions
    
    func startBluetooth(){

    }
    
    func startScanning() {

    }
    
    func connectToPeripheralWithUUID(uuid : String){

    }
    
    
    // MARK:  Optional Functions
    
    func stopScanning(){

    }
    
    func connectToPeripheralWithCBPeripheral(myPeripheral : CBPeripheral?){

    }

    func disconnectAllDevices(){

    }
    func disconnectOneDeviceWithCBPeripheral(myPeripheral : CBPeripheral){
        /* disconnect the peripheral given from the central */
        CentralManager.cancelPeripheralConnection(myPeripheral)
    }
    
    
    // MARK: - Central & Peripheral Manager
    
    func centralManagerDidUpdateState(central: CBCentralManager) {

    }
    
    func centralManager(central: CBCentralManager, didDiscoverPeripheral peripheral: CBPeripheral?, advertisementData: [String : AnyObject], RSSI: NSNumber){    }
    
    
    func centralManager(central: CBCentralManager, didConnectPeripheral peripheral: CBPeripheral) {    }
    
    
    func centralManager(central: CBCentralManager, didDisconnectPeripheral peripheral: CBPeripheral, error: NSError?) {
    }
    
    
    func peripheral(peripheral: CBPeripheral, didDiscoverServices error: NSError?) {    }
    
    
    func peripheral(peripheral: CBPeripheral, didDiscoverCharacteristicsForService service: CBService, error: NSError?) {
    }
    
    func peripheral(peripheral: CBPeripheral, didUpdateValueForCharacteristic characteristic: CBCharacteristic, error: NSError?) {
    }
}
