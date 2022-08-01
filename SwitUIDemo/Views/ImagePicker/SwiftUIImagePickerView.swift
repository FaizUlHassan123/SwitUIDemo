//
//  SwiftUIImagePickerView.swift
//  SwitUIDemo
//
//  Created by Faiz Ul Hassan on 27/07/2022.
//

import SwiftUI

struct SwiftUIImagePickerView: View {
    
    var  _title = ""
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @StateObject var allMessage = Messages()
    
    @State var ismyMsg = false
    
    @State private var imgData = Data(count: 0)
    @State private var shown = false
    @State private var message = ""
    
    @State var imagePicker = false
    
    var body: some View {
        
        VStack{
            
            ZStack{
                HStack{
                    
                    Button {
                        self.presentationMode.wrappedValue.dismiss()
                    } label: {
                        Image(systemName: "chevron.left")
                            .font(.system(size: 22))
                            .foregroundColor(.white)
                    }
                        
                    Spacer()
                    
                    Button {} label: {
                        Image(systemName: "gear")
                            .font(.system(size: 22))
                            .foregroundColor(.white)
                    }
                    
                }
            }
            .padding()
//            .padding(.top,35)
            
            VStack{
//                Spacer()
                
                //Displaying message ...
                ScrollView(.vertical, showsIndicators: true) {
                    ScrollViewReader { reader in
                        
                        VStack(spacing:20){
                            ForEach(allMessage.message){ msg in
                                SwiftUIBubbleCellView(msg: msg)
                            }
                            //Whenever a data is inserted scroll to bottom
                            .onChange(of: allMessage.message) { newValue in
                                if newValue.last!.mymessage{
                                    reader.scrollTo(newValue.last!.id)
                                }else{
                                    reader.scrollTo(newValue.last!.id)
                                }
                            }
                            
                        }
                        .padding([.horizontal,.vertical])
                        .padding(.top,25)
                    }
                }
                
                HStack(spacing:12){
                    
                    HStack(spacing : 12){
                        
                        TextField("Message", text: $message)
                        
                        Button {
                            //Toggle imagePicker
                            imagePicker.toggle()
                        } label: {
                            Image(systemName: "paperclip.circle.fill")
                                .font(.system(size: 22))
                                .foregroundColor(.gray)
                        }
                        
                    }
                    .padding(.vertical,12)
                    .padding(.horizontal)
                    .background(Color.black.opacity(0.05))
                    .clipShape(Capsule())
                    
                    //hiding View
                    if self.message != ""{
                        //  Send Button
                        Button {
                            self.ismyMsg.toggle()
                            let profile = self.ismyMsg ? "p2" : "p3"
                            let msg = Message(id: Date(), mesage: message, mymessage: ismyMsg, profileimage: profile, photo: nil)
                            withAnimation(.easeIn) {
                                allMessage.message.append(msg)
                            }
                            
                            self.message = ""
                            
                        } label: {
                            Image(systemName: "paperplane.fill")
                                .font(.system(size: 22))
                                .rotationEffect(.init(degrees: 45))
                                .padding(.all)
                                .background(Color.black.opacity(0.06))
                                .clipShape(Circle())
                        }
                    }
                    
                }
                .padding([.leading,.trailing],1)
                .padding([.top,.bottom],8)
                .padding(.horizontal)
                .animation(.easeOut)
            }
            .background(Color.white)
            .clipShape(RoundShape())
            
        }
//        .edgesIgnoringSafeArea([.top])
//        .ignoresSafeArea()
        .background(Color.green)
//        .padding(.top,-50)
//        .navigationTitle(_title)
        .navigationBarHidden(true)
        
        //Full Screen image Picker
        .fullScreenCover(isPresented: self.$imagePicker, onDismiss: {
            //when ever imae picker is closed
            //verify image is selected or not
            if self.imgData.count != 0 {
                
                allMessage.writeMesage(id: Date(), msg: "", mymsg: true, profilepic: "p2", photo: self.imgData)
            }else{
                
            }
        }, content: {
            
            ImagePicker(imagepicker: $imagePicker, imgData: self.$imgData)
            
        })
        
    }
}

struct SwiftUIImagePickerView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIImagePickerView(_title: "")
    }
}


//View Top corenr Round

struct RoundShape :Shape{
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,byRoundingCorners: [.topLeft,.topRight],cornerRadii: CGSize(width: 35, height: 35))
        
        return Path(path.cgPath)
    }
}


struct ImagePicker: UIViewControllerRepresentable{
    @Binding var imagepicker: Bool
    @Binding var imgData:Data
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        
    }
    
    func makeCoordinator() -> (Cordinator) {
        return ImagePicker.Coordinator(parent1:self)
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let picker = UIImagePickerController()
        picker.sourceType = .photoLibrary
        picker.delegate = context.coordinator
        return picker
    }
    
    class Cordinator : NSObject , UIImagePickerControllerDelegate , UINavigationControllerDelegate{
        
        var parent : ImagePicker
        
        init(parent1: ImagePicker) {
            parent = parent1
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.imagepicker.toggle()
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            
            let image = info[.originalImage] as! UIImage
            parent.imgData = image.jpegData(compressionQuality: 0.5)!
            parent.imagepicker.toggle()
        }
    }
    
    
}
