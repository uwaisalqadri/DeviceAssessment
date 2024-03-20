//
//  ContentView.swift
//  SpecAsessment
//
//  Created by Uwais Alqadri on 13/12/23.
//

import SwiftUI
import DeviceKit
import CoreMotion

struct AssessmentView: View {
  
  @ObservedObject var presenter: AssessmentPresenter
  
  var body: some View {
    NavigationView {
      ScrollView {
        VStack(spacing: 14) {
          HStack(spacing: 14) {
            FunctionalityRow(icon: "📱", title: "CPU", value: "Test the performance of your device's CPU")
            FunctionalityRow(icon: "🫙", title: "Storage", value: "Ensure your device's storage is functioning optimally")
          }.padding(.horizontal, 14).padding(.top, 20)
          
          HStack(spacing: 14) {
            FunctionalityRow(icon: "🔋", title: "Battery", value: "Check the health of your device's battery")
            FunctionalityRow(icon: "🔏", title: "Jailbreak", value: "Verify if your device has been jailbroken")
          }.padding(.horizontal, 14)
          
          HStack(spacing: 14) {
            FunctionalityRow(icon: "🔕", title: "Silent Switch", value: "Test the functionality of your device's silent switch")
            FunctionalityRow(icon: "🔊", title: "Volume Up", value: "Ensure the volume up button is responsive")
          }.padding(.horizontal, 14)
          
          HStack(spacing: 12) {
            FunctionalityRow(icon: "🔈", title: "Volume Down", value: "Check the responsiveness of the volume down button")
            FunctionalityRow(icon: "📵", title: "Power Button", value: "Verify the functionality of the power button")
          }.padding(.horizontal, 14)
          
          HStack(spacing: 14) {
            FunctionalityRow(icon: "🫨", title: "Vibration", value: "Test if the vibration motor is working correctly")
            FunctionalityRow(icon: "📸", title: "Camera", value: "Ensure the camera functionality is intact")
          }.padding(.horizontal, 14)
          
          HStack(spacing: 14) {
            FunctionalityRow(icon: "👆", title: "Touch Screen", value: "Check the responsiveness of the touch screen")
            FunctionalityRow(icon: "📶", title: "SIM", value: "Verify the status of your SIM card")
          }.padding(.horizontal, 14)
          
          HStack(spacing: 14) {
            FunctionalityRow(icon: "🛜", title: "Wi-Fi", value: "Test the connectivity of your device to Wi-Fi networks")
            FunctionalityRow(icon: "🪪", title: "Biometric", value: "Ensure the functionality of biometric authentication")
          }.padding(.horizontal, 14)
          
          HStack(spacing: 14) {
            FunctionalityRow(icon: "📏", title: "Accelerometer", value: "Test the accelerometer sensor of your device")
            FunctionalityRow(icon: "🚹", title: "Bluetooth", value: "Verify the Bluetooth connectivity of your device")
          }.padding(.horizontal, 14)
          
          HStack(spacing: 14) {
            FunctionalityRow(icon: "🌐", title: "GPS", value: "Check the accuracy of GPS functionality on your device")
            FunctionalityRow(icon: "🏠", title: "Home Button", value: "Test the responsiveness of the home button")
          }.padding(.horizontal, 14)
          
          HStack(spacing: 14) {
            FunctionalityRow(icon: "📻", title: "Main Speaker", value: "Ensure the main speaker is producing sound properly")
            FunctionalityRow(icon: "🎧", title: "Ear Speaker", value: "Test the functionality of the ear speaker")
          }.padding(.horizontal, 14)
          
          HStack(spacing: 14) {
            FunctionalityRow(icon: "⚠️", title: "Proximity", value: "Check the functionality of the proximity sensor")
            FunctionalityRow(icon: "💀", title: "Deadpixel", value: "Detect any dead pixels on your device's screen")
          }.padding(.horizontal, 14)
          
          HStack(spacing: 14) {
            FunctionalityRow(icon: "🔄", title: "Rotation", value: "Verify if the screen rotation feature is working")
            FunctionalityRow(icon: "🎙️", title: "Microphone", value: "Test the microphone's recording capability")
          }.padding(.horizontal, 14)
          
          Spacer()
        }
      }
      .navigationTitle("Device Health")
    }
  }
}

struct AssessmentView_Previews: PreviewProvider {
  static var previews: some View {
    AssessmentView(presenter: AssessmentPresenter())
  }
}
