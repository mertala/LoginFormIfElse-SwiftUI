//
//  LoginForm.swift
//  LoginFormIfElse-SwiftUI
//
//  Created by Mert Ala on 13.12.2019.
//  Copyright © 2019 Mert Ala. All rights reserved.
import SwiftUI

struct LoginFormView : View {
   
    @State var user = ""
    @State var pass = ""
    @State var show = false
    @State var message = ""
    var body: some View {
        
        VStack {
            Text("Sign In").fontWeight(.heavy).font(.largeTitle).padding([.top,.bottom], 20)
           
            VStack(alignment: .leading ){
                VStack(alignment: .leading ) {
                    Text("Username").font(.headline).fontWeight(.light).foregroundColor(Color.black.opacity(0.75))
                    HStack {
                    TextField("Enter Username", text: $user)
                    }
                        Divider()
                }.padding(.bottom, 15)
                    VStack(alignment: .leading ) {
                        Text("Password").font(.headline).fontWeight(.light).foregroundColor(Color.black.opacity(0.75))
                                SecureField("Enter Password", text: $pass)
                          Divider()
                    }
       
                HStack {
                    Spacer()
                    Button(action: {
                        
                    }) {
                        
                        Text("forget Password").foregroundColor(Color.gray.opacity(0.5))
                    }
                }.padding()
                
                VStack {
                    Button(action: {
                   
                    if self.user  == "" && self.pass == "" {
                           self.message = " Boşlukları doldurun"
                           self.show.toggle()
                           return
                    print("Boşlukları doldur")
                       }
                        if self.user == "" {
                            self.message = "Kullanıcı ismini gir"
                            self.show.toggle()
                            return
                        }
                        if self.pass == "" {
                            self.message = "şifreni gir"
                            self.show.toggle()
                            return
                        }
                    else
                    {
                        self.message = " Başarılı Giriş"
                        self.show.toggle()
                        print("Başarılı Giriş")
                        return
                        
                        
                        }
                    }) {
                        HStack {
                            Text("Sign In").foregroundColor(Color.white).frame(width: UIScreen.main.bounds.width - 120).padding()
                            .frame(minWidth: 0, maxWidth: .infinity)
                            .background(Color.blue)
                            .cornerRadius(20)
                        } .alert(isPresented: $show) {
                        
                        return Alert(title: Text(self.message))
                    }
                }.padding(.top,20)
            } .padding(.horizontal, 6)
        }.padding()
    
        }
    }
}
