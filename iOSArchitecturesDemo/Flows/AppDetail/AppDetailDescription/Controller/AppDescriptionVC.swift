//
//  AppDescriptionVC.swift
//  iOSArchitecturesDemo
//
//  Created by Vitaliy Talalay on 18.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import UIKit

final class AppDescriptionVC: UIViewController {
    
    private let app: ITunesApp
    
    private var appDetailDescriptionView: AppDetailDescriptionView {
        return self.view as! AppDetailDescriptionView
    }
    
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        super.loadView()
        self.view = AppDetailDescriptionView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fillData()
        
    }
    
    private func fillData() {
        self.appDetailDescriptionView.versionLabel.text = "Version \(app.version)"
        self.appDetailDescriptionView.releaseNotesLabel.text = app.releaseNotes
    }
}
