//
//  SideMenuViewController.swift
//  DrawerMenuExample
//
//  Created by Sagar Sukode on 20/01/20.
//  Copyright © 2020 iOS App Templates. All rights reserved.
//

import UIKit

class SideMenuViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var menuCloseButton: UIButton!
    @IBOutlet weak var tableView: UITableView!
    
    var userImage: UIImage!
    var imageName = String()
    
    var arraySideMenuTitle: [String]! = [String]()
    
    var arraySideMenuImages: [String]! = [String]()
    //    weak var delegate: getInfoDelegate?
    
    //MARK:- View Life Cycle -
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //        self.navigationController?.setNavigationBarHidden(true, animated: false)
        UIApplication.shared.statusBarStyle = .lightContent
        
        //        if Utility.getUserType() == "User" {
        //            tableView.isScrollEnabled = true
        //            arraySideMenuTitle = ["HOME","POSTED TASK","BIDS RECEIVED","TASK HISTORY","FAVORITES","CHAT","ON CALL","TOTALS","PRO242 HELP","FAQ","T`S AND C`S","LOGOUT"]
        //            arraySideMenuImages = ["home","posted_tasks_navigation","bids_received_navigation","task_history_navigation","favourites_navigation","chat_navigation","on_call_navigation","payment_navigation","help_navigation","faq_navigation","terms_and_conditions_navigation","logout_navigation"]
        //        } else if Utility.getUserType() == "Project_Manager" {
        //            tableView.isScrollEnabled = true
        //            //            arraySideMenuTitle = ["CUSTOMER LIST","SERVICE PRO LIST","LEADS","BIDS","MY JOBS","CHAT","MY PROFILE","NOTIFICATION","PAYMENT HISTORY","PRO242 HELP","IN - APP FEES","LOGOUT"]
        //            //            arraySideMenuImages = ["home","posted_tasks_navigation","leads_navigation_vendor","my_bids_navigation_vendor","my_jobs_navigation_vendor","chat_navigation","my_profile_navigation_vendor","notifications_navigation_vendor-copy","on_call_navigation","help_navigation","faq_navigation","logout_navigation"]
        //            arraySideMenuTitle = ["CUSTOMER LIST","SERVICE PRO LIST","LEADS","MY JOBS","CHAT","TOTALS","MY PROFILE","NOTIFICATION","PAYMENT HISTORY","GENERATE LEADS","PRO242 HELP","LOGOUT"]
        //            arraySideMenuImages = ["home","posted_tasks_navigation","leads_navigation_vendor","my_jobs_navigation_vendor","chat_navigation","payment_navigation","my_profile_navigation_vendor","notifications_navigation_vendor-copy","payment_navigation","my_jobs_navigation_vendor","help_navigation","logout_navigation"]
        //        } else {
        arraySideMenuTitle = ["LEADS","MY BIDS","MY JOBS","CHAT","SUGGESTED LEADS","MY PROFILE","COMPLETED JOBS","REJECTED BIDS","TOTALS","NOTIFICATION","PRO242 HELP","LOGOUT"]
        //        tableView.reloadData()
        //            arraySideMenuImages = ["leads_navigation_vendor","my_bids_navigation_vendor","my_jobs_navigation_vendor","chat_navigation","suggested_job","my_profile_navigation_vendor","completed_jobs_navigation_vendor","rejected_bids_navigation_vendor","payment_navigation","notifications_navigation_vendor-copy","help_navigation","logout_navigation"]
        //        }
        
        //        userNameLabel.text = Utility.getUserName()
        
        //        if let imageURL:URL = URL(string: Utility.getProfileURL()) {
        //
        //            SDImageCache.shared().clearMemory()
        //            SDImageCache.shared().clearDisk()
        //
        //            self.profileImageView.sd_setShowActivityIndicatorView(true)
        //            self.profileImageView.sd_setIndicatorStyle(.gray)
        //            self.profileImageView.sd_setImage(with: imageURL, completed: { (image, error, cache, urls) in
        //                if (error != nil) {
        //                    self.profileImageView.image = UIImage(named: "default_profile")
        //                } else {
        //                    self.profileImageView.image = image
        //                }
        //            })
        //
        //        } else {
        //        self.profileImageView.image = UIImage(named:"default_profile")
        //        }
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        //        profileImageView.setRounded(borderWidth: 1, borderColor: UIColor.gray)
        //        self.profileImageView.customizeImageView(borderWidth: 1, borderColor: .gray, borderCornerRadius: self.profileImageView.frame.size.height/2, shadowOffset_X: 0, shadowOffset_Y: 0, shadowOpacity: 0, shadowRadius: 0, shadowColor: .black)
        //        profileImageView.layoutIfNeeded()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        //        userNameLabel.text = Utility.getUserName()
        //
        //        if let imageURL:URL = URL(string: Utility.getProfileURL()) {
        //
        //            SDImageCache.shared().clearMemory()
        //            SDImageCache.shared().clearDisk()
        //
        //            self.profileImageView.sd_setShowActivityIndicatorView(true)
        //            self.profileImageView.sd_setIndicatorStyle(.gray)
        //            self.profileImageView.sd_setImage(with: imageURL, completed: { (image, error, cache, urls) in
        //                if (error != nil) {
        //                    self.profileImageView.image = UIImage(named: "default_profile")
        //                } else {
        //                    self.profileImageView.image = image
        //                }
        //            })
        //
        //        } else {
        //            self.profileImageView.image = UIImage(named:"default_profile")
        //        }
    }
    
    // MARK: - Table View Delegates -
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arraySideMenuTitle.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SideMenuTableViewCell", for: indexPath) as! SideMenuTableViewCell
        
        cell.imageViewIcon.image = UIImage(named:"\(arraySideMenuImages[indexPath.row])")
        cell.labelTitle.text = arraySideMenuTitle[indexPath.row] //as? String// as? String
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            print("case")
            //            if Utility.getUserType() == "User" {
            //                let VC:HomeViewController! = self.storyboard?.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else if Utility.getUserType() == "Project_Manager" {
            //                let VC:PMHomeViewController = storyBoardPM.instantiateViewController(withIdentifier: "PMHomeViewController") as! PMHomeViewController
            //                VC.from = "Customer"
            //                NotificationCenter.default.post(name: Notification.Name(rawValue: "PMHomeViewController"), object: nil, userInfo:["type":"Customer"])
            //                self.navigationController?.pushViewController(VC, animated: true)
            //            } else {
            //                let VC:LeadsViewController! = self.storyboard?.instantiateViewController(withIdentifier: "LeadsViewController") as! LeadsViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            }
            
            break
        case 1:
            print("case")
            //            if Utility.getUserType() == "User" {
            //                let VC:PostedTaskViewController! = self.storyboard?.instantiateViewController(withIdentifier: "PostedTaskViewController") as! PostedTaskViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else if Utility.getUserType() == "Project_Manager" {
            //                let VC:PMHomeViewController = storyBoardPM.instantiateViewController(withIdentifier: "PMHomeViewController") as! PMHomeViewController
            //                VC.from = "ServicePro"
            //                NotificationCenter.default.post(name: Notification.Name(rawValue: "PMHomeViewController"), object: nil, userInfo:["type":"ServicePro"])
            //                self.navigationController?.pushViewController(VC, animated: true)
            //            } else {
            //                let VC:MyBidsViewController! = self.storyboard?.instantiateViewController(withIdentifier: "MyBidsViewController") as! MyBidsViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            }
            
            break
        case 2:
            print("case")
            //            if Utility.getUserType() == "User" {
            //                let VC:BidsReceivedViewController! = self.storyboard?.instantiateViewController(withIdentifier: "BidsReceivedViewController") as! BidsReceivedViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else if Utility.getUserType() == "Project_Manager" {
            //                let VC:PMLeadsViewController! = storyBoardPM.instantiateViewController(withIdentifier: "PMLeadsViewController") as! PMLeadsViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else {
            //                let VC:MyJobsViewController! = self.storyboard?.instantiateViewController(withIdentifier: "MyJobsViewController") as! MyJobsViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            }
            
            
        case 3:
            print("case")
            //            if Utility.getUserType() == "User" {
            //                let VC:TaskHistoryViewController! = self.storyboard?.instantiateViewController(withIdentifier: "TaskHistoryViewController") as! TaskHistoryViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else if Utility.getUserType() == "Project_Manager" {
            //                let VC:PMJobsViewController! = storyBoardPM.instantiateViewController(withIdentifier: "PMJobsViewController") as! PMJobsViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else {
            //                let VC:ChatViewController! = self.storyboard?.instantiateViewController(withIdentifier: "ChatViewController") as! ChatViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            }
            break
        case 4:
            print("case")
            //            if Utility.getUserType() == "User" {
            //                let VC:FavoritesViewController! = self.storyboard?.instantiateViewController(withIdentifier: "FavoritesViewController") as! FavoritesViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else if Utility.getUserType() == "Project_Manager" {
            //                let VC:ChatViewController! = storyBoardMain.instantiateViewController(withIdentifier: "ChatViewController") as! ChatViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else {
            //                let VC:SuggestedJobsVC! = self.storyboard?.instantiateViewController(withIdentifier: "SuggestedJobsVC") as! SuggestedJobsVC
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            }
            break
        case 5:
            print("case")
            //            if Utility.getUserType() == "User" {
            //                let VC:ChatViewController! = self.storyboard?.instantiateViewController(withIdentifier: "ChatViewController") as! ChatViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else if Utility.getUserType() == "Project_Manager" {
            //                let VC:TotalsViewController! = storyBoardMain.instantiateViewController(withIdentifier: "TotalsViewController") as! TotalsViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else {
            //                let VC:MyProfileViewController! = self.storyboard?.instantiateViewController(withIdentifier: "MyProfileViewController") as! MyProfileViewController
            //                VC.delegate = self
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            }
            
            break
        case 6:
            print("case")
            //            if Utility.getUserType() == "User" {
            //                let VC:OnCallViewController! = self.storyboard?.instantiateViewController(withIdentifier: "OnCallViewController") as! OnCallViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else if Utility.getUserType() == "Project_Manager" {
            //                let VC:MyProfileViewController! = self.storyboard?.instantiateViewController(withIdentifier: "MyProfileViewController") as! MyProfileViewController
            //                VC.delegate = self
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else {
            //                let VC:ComletedJobsViewController! = self.storyboard?.instantiateViewController(withIdentifier: "ComletedJobsViewController") as! ComletedJobsViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            }
            
            break
        case 7:
            print("case")
            //            if Utility.getUserType() == "User" {
            //                let VC:TotalsViewController! = storyBoardMain.instantiateViewController(withIdentifier: "TotalsViewController") as! TotalsViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else if Utility.getUserType() == "Project_Manager" {
            //                let VC:NotificationViewController! = storyBoardPM.instantiateViewController(withIdentifier: "NotificationViewController") as! NotificationViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else {
            //                let VC:RejectedBidsViewController! = self.storyboard?.instantiateViewController(withIdentifier: "RejectedBidsViewController") as! RejectedBidsViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            }
            
            break
        case 8:
            print("case")
            //            if Utility.getUserType() == "User" {
            //                let VC:Pro242HelpViewController! = self.storyboard?.instantiateViewController(withIdentifier: "Pro242HelpViewController") as! Pro242HelpViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else if Utility.getUserType() == "Project_Manager" {
            //                let VC:PaymentViewController! = storyBoardPM.instantiateViewController(withIdentifier: "PaymentViewController") as! PaymentViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else {
            //                let VC:TotalsViewController! = storyBoardMain.instantiateViewController(withIdentifier: "TotalsViewController") as! TotalsViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            ////                self.showToastBlackBackgraound(toastMessage: UnderDevelopment, duration: 1.5, position: .center)
            //                //                let VC:FAQViewController! = self.storyboard?.instantiateViewController(withIdentifier: "FAQViewController") as! FAQViewController
            //                //                self.navigationController?.pushViewController(VC, animated: false)
            //            }
            break
            
        case 9:
            print("case")
            //            if Utility.getUserType() == "User" {
            //                let VC:FAQViewController! = self.storyboard?.instantiateViewController(withIdentifier: "FAQViewController") as! FAQViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else if Utility.getUserType() == "Project_Manager" {
            //                let VC:GenerateLeadsVC! = storyBoardPM.instantiateViewController(withIdentifier: "GenerateLeadsVC") as! GenerateLeadsVC
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else {
            //                self.showToastBlackBackgraound(toastMessage: UnderDevelopment, duration: 1.5, position: .center)
            //            }
            
            break
        case 10:
            print("case")
            //            if Utility.getUserType() == "User" {
            //                let VC:Terms_ConditionsViewController! = self.storyboard?.instantiateViewController(withIdentifier: "Terms_ConditionsViewController") as! Terms_ConditionsViewController
            //                VC.from = "SideMenu"
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else if Utility.getUserType() == "Project_Manager" {
            //                let VC:Pro242HelpViewController! = storyBoardMain.instantiateViewController(withIdentifier: "Pro242HelpViewController") as! Pro242HelpViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            } else {
            //                let VC:Pro242HelpViewController! = storyBoardMain.instantiateViewController(withIdentifier: "Pro242HelpViewController") as! Pro242HelpViewController
            //                self.navigationController?.pushViewController(VC, animated: false)
            //            }
            
            break
        case 11:
            print("case")
            //            if Utility.getUserType() == "User" {
            //                logout()
            //            } else if Utility.getUserType() == "Project_Manager" {
            //                logout()
            //            } else {
            //                logout()
            //            }
            
            break
            
        default:
            print("case")
            break
        }
        
        //        DispatchQueue.main.async {
        //            if Utility.getUserType() == "User" {
        //                if indexPath.row != 11 {
        //                    self.dismiss(animated: true, completion: nil)
        //                }
        //            } else if Utility.getUserType() == "Project_Manager" {
        //                if indexPath.row != 11 {
        //                    self.dismiss(animated: true, completion: nil)
        //                }
        //            } else {
        //                if indexPath.row != 11 {
        //                    self.dismiss(animated: true, completion: nil)
        //                }
        //            }
        //        }
        
    }
    
    let appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    var window: UIWindow?
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        //        if Utility.getUserType() == "User" {
        //            return tableView.frame.size.height/12
        //        } else if Utility.getUserType() == "Project_Manager" {
        //            return tableView.frame.size.height/11
        //        } else {
        return tableView.frame.size.height/12
        //        }
        //        return tableView.frame.size.height/10//UIScreen.main.bounds.height/12
    }
    
    //MARK:- Button Actions -
    @IBAction func menuCloseButtonClick(_ sender: Any) {
        //        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func editProfileButtonClick(_ sender: Any) {
        //        showActionSheet()
    }
    
    
    
}

