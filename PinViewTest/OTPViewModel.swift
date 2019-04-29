//
//  OTPViewModel.swift
//  Loqqat
//
//  Created by Sukumar Anup Sukumaran on 22/03/19.
//  Copyright © 2019 Qaptive_Technologies. All rights reserved.
//

import UIKit
//import SVPinView



class OTPViewModel: NSObject {
    
  // weak var main: OTPViewController?
    var phoneNum = ""
    weak var main: ViewController!
    
    init(_ main: ViewController) {
        self.main = main
    }
    
    func changeTitle1(text: String) {
        main.titleLB.text = text
    }
    
    //MARK:
//    func assignTitles(_ main: OTPViewController) {
//        main.welcomeLB.text = Constants.Texts.welcomeTxt
//    }
    
    //MARK:
//    func assignTitles(_ main: OTPViewController) {
//
//        switch L102Language.currentAppleLanguage()  {
//
//        case "en":
//            assignEngTitles(main)
//
//        case "ar":
//            assignArbTitles(main)
//
//        default:
//            break
//        }
//
//    }
//
//    fileprivate func assignEngTitles(_ main: OTPViewController) {
//        main.welcomeLB.text = Texts.welcomeTxt
//        main.otpCaptionLB.text = Texts.otpCap
//        main.resentOTPBtn.setTitle(Texts.resendTitle, for: .normal)
//        main.verifyBtn.setTitle(Texts.verify, for: .normal)
//    }
//
//    fileprivate func assignArbTitles(_ main: OTPViewController) {
//        main.welcomeLB.text = Texts.arb_welcomeTxt
//        main.otpCaptionLB.text = Texts.arb_otpCap
//        main.resentOTPBtn.setTitle(Texts.arb_resendTitle, for: .normal)
//        main.verifyBtn.setTitle(Texts.arb_verify, for: .normal)
//    }
    
    func configurePinView() {
        
        main.pinView.pinLength = 4
        main.pinView.secureCharacter = "\u{25CF}"
        main.pinView.interSpace = 15
        main.pinView.borderLineThickness = 2
        main.pinView.shouldSecureText = false
        main.pinView.style = .underline
        main.pinView.fieldBackgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 0)
        main.pinView.fieldCornerRadius = 15
        main.pinView.font = UIFont.systemFont(ofSize: 15)
        main.pinView.keyboardType = .phonePad
        main.pinView.didFinishCallback = { pin in
            
            print("The pin entered is \(pin)")
        }
    }
    

    //MARK: otp API
//    func callOTPAPI(_ main: OTPViewController) {
//        guard main.pinView.getPin().count == 4 else {emptyPinAlert(main);return}
//        ActIndic.startActWithConstrains(classVC: main.view, colour: GVars.is_in_NightMode ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1): #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), midCon: 1.0)
//        APILibrary.shared.verifyParentOTP(device_info: "IMAEdff,NokiaA32", mobile: phoneNum, otp: main.pinView.getPin()) { (response) in
//            switch response {
//            case .Success(let data):
//                ActIndic.stopAct(classVC: main.view)
//                if let userID = data.otpModel?.auth_token, let parent_id = data.otpModel?.parent_id {
//                    userDef.set(userID, forKey: Constants.Keys.authID)
//                    userDef.set(parent_id, forKey: Constants.Keys.parent_id)
//                    self.dismissToRootVC(main)
//                }
//
//            case .Error(let error):
//                ActIndic.stopAct(classVC: main.view)
//                AlertView.showAlert(title: error, message: "", buttonTitle: Constants.Texts.ok, selfClass: main)
//            }
//        }
//    }
//
//    //MARK:
//    func emptyPinAlert(_ main: OTPViewController) {
//        AlertView.showAlert(title: "Message", message: "Please enter a valid OTP", buttonTitle: "OK", selfClass: main)
//    }
//
//    //MARK: KEYBOARD FUNCS
//    func keyboardFunc(_ main: OTPViewController) {
//
//        KeyBrdFunc.keyboardFunc(main) { (contChanged) in
//            main.scrollView.contentInset = contChanged
//        }
//
//    }
//
//    //MARK: dismiss To RootViewController
//    func dismissToRootVC(_ main: OTPViewController) {
//        main.performSegue(withIdentifier: "unwindToMenu", sender: self)
//    }
//
//    func keyBrdDeinit() {
//        KeyBrd.shared.deregisterKBNotific()
//    }
//
//    func theme_changer(_ main: OTPViewController) {
//
//
//
//
//        if GVars.is_in_NightMode {
//            Night_Mode_Theme(main)
//        } else {
//            Day_Mode_Theme(main)
//        }
//    }
//
//    //MARK:
//    func Night_Mode_Theme(_ main: OTPViewController) {
//        main.view.backgroundColor = #colorLiteral(red: 0.545524776, green: 0.1046532467, blue: 0.2771101296, alpha: 1)
//        main.pinView.textColor = #colorLiteral(red: 0.9333333333, green: 0.9450980392, blue: 0.9764705882, alpha: 1)
//        main.pinView.borderLineColor = #colorLiteral(red: 0.9333333333, green: 0.9450980392, blue: 0.9764705882, alpha: 1)
//        main.backImg.image = #imageLiteral(resourceName: "rightArrow-1").withRenderingMode(.alwaysTemplate)
//        main.backImg.tintColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
//        GVars.isArabic ? MirrorImage.flipUp(imageView: main.backImg) : MirrorImage.flipDown(imageView: main.backImg)
//        main.loqqatLogoimg.image = #imageLiteral(resourceName: "LoqqatLogo").withRenderingMode(.alwaysTemplate)
//        main.loqqatLogoimg.tintColor = #colorLiteral(red: 0.9333333333, green: 0.9450980392, blue: 0.9764705882, alpha: 1)
//        main.backgroundImg.image = #imageLiteral(resourceName: "backgroundImg2")
//        main.welcomeLB.textColor = #colorLiteral(red: 0.9333333333, green: 0.9450980392, blue: 0.9764705882, alpha: 1)
//        main.otpCaptionLB.textColor = #colorLiteral(red: 0.6803128123, green: 0.680839479, blue: 0.6803943515, alpha: 1)
//        main.resentOTPBtn.setTitleColor(#colorLiteral(red: 0.9333333333, green: 0.9450980392, blue: 0.9764705882, alpha: 1), for: .normal)
//        main.verifyBtn.backgroundColor = #colorLiteral(red: 0.9333333333, green: 0.9450980392, blue: 0.9764705882, alpha: 1)
//        main.verifyBtn.setTitleColor(#colorLiteral(red: 0.545524776, green: 0.1046532467, blue: 0.2771101296, alpha: 1), for: .normal)
//
//    }
//
//    //MARK:
//    func Day_Mode_Theme(_ main: OTPViewController) {
//        main.view.backgroundColor = #colorLiteral(red: 0.9996390939, green: 1, blue: 0.9997561574, alpha: 1)
//        main.backImg.image = #imageLiteral(resourceName: "rightArrow-1")
//        GVars.isArabic ? MirrorImage.flipUp(imageView: main.backImg) : MirrorImage.flipDown(imageView: main.backImg)
//        main.pinView.textColor = #colorLiteral(red: 0.6803128123, green: 0.680839479, blue: 0.6803943515, alpha: 1)
//        main.pinView.borderLineColor = #colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)
//        main.loqqatLogoimg.image = #imageLiteral(resourceName: "LoqqatLogo").withRenderingMode(.alwaysOriginal)
//        main.backgroundImg.image = #imageLiteral(resourceName: "backgroundImg1")
//        main.welcomeLB.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
//        main.otpCaptionLB.textColor = #colorLiteral(red: 0.6803128123, green: 0.680839479, blue: 0.6803943515, alpha: 1)
//        main.resentOTPBtn.setTitleColor(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
//        main.verifyBtn.backgroundColor = #colorLiteral(red: 0.5455120206, green: 0.1047528461, blue: 0.2594764531, alpha: 1)
//        main.verifyBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
//    }
//
//
//    //-----------***CALLING LOGIN API***-----------//
//
//    //MARK: Calling Login API
//    func callLoginResendAPI(mobile: String, _ main: OTPViewController) {
//        ActIndic.startActWithConstrains(classVC: main.view, colour: GVars.is_in_NightMode ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1): #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), midCon: 1.0)
//        APILibrary.shared.loginAPI(mobile: mobile) { (response) in
//
//            switch response {
//            case .Success(_):
//                ActIndic.stopAct(classVC: main.view)
//                 AlertView.showAlert(title: Constants.Texts.otpMessage, message: "", buttonTitle: Constants.Texts.ok, selfClass: main)
//                //self.callOTPView(main)
//
//            case .Error(let error):
//                ActIndic.stopAct(classVC: main.view)
//                AlertView.showAlert(title: Constants.Texts.message, message: error, buttonTitle: Constants.Texts.ok, selfClass: main)
//
//            }
//        }
//
//    }
//
//
//    //-----------***Timer Functions***-----------//
//
//    //MARK:
//    func timer_resend_btn(_ main: OTPViewController,_ stop: Bool) {
//
//        switch stop {
//        case true:
//            Timer_Loqqat.shared.stop()
//
//        case false:
//            self.resend_btn_is(enabled: false, for: main.resentOTPBtn)
//
//            Timer_Loqqat.shared.start(60, false) {
//                self.resend_btn_is(enabled: true, for: main.resentOTPBtn)
//            }
//        }
//
//    }
//
//    //MARK:
//    func resend_btn_is(enabled: Bool,for btn: UIButton ) {
//
//        switch enabled {
//        case true:
//            btn.setTitleColor(GVars.is_in_NightMode ? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) : #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1), for: .normal)
//            btn.isEnabled = true
//
//        case false:
//            btn.setTitleColor(GVars.is_in_NightMode ? #colorLiteral(red: 0.7686191307, green: 0.7686191307, blue: 0.7686191307, alpha: 1) : #colorLiteral(red: 0.7686191307, green: 0.7686191307, blue: 0.7686191307, alpha: 1), for: .normal)
//            btn.isEnabled = false
//        }
//
//
//    }
}
