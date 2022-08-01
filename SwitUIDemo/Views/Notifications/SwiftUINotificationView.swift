//
//  SwiftUINotificationView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 01/08/2022.
//

import SwiftUI
import UserNotifications

struct SwiftUINotificationView: View {
    var  _title = ""
    
    @State private var showingAlert = false
    
    var body: some View {
        
        if #available(iOS 15.0, *) {
            Button {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.badge,.sound]) { status, error in
                    if status{
                        let contet = UNMutableNotificationContent()
                        contet.title = "Notification"
                        contet.badge = 1
                        contet.body = "Body"
                        contet.sound = .default
                        
                        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                        let request = UNNotificationRequest(identifier: UUID().uuidString, content: contet, trigger: trigger)
                        UNUserNotificationCenter.current().add(request) { error in
                            if let error = error{
                                print("Error adding request \(String(describing: error.localizedDescription))")
                            }
                        }
                        return
                    }
                    
                    self.showingAlert.toggle()
                }
            } label: {
                Text("Send Notification")
            }
            .navigationTitle(_title)
            .alert("Please Enable Notificationin setting", isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
                Button {
                    if let appSettings = URL(string: UIApplication.openSettingsURLString), UIApplication.shared.canOpenURL(appSettings) {
                        UIApplication.shared.open(appSettings)
                    }
                } label: {
                    Text("Settings")
                }

            }
        } else {
            // Fallback on earlier versions
        }
        
    }
}

struct SwiftUINotificationView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUINotificationView()
    }
}
