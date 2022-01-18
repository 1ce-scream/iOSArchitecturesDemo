//
//  AlbumVC.swift
//  iOSArchitecturesDemo
//
//  Created by Vitaliy Talalay on 18.01.2022.
//  Copyright © 2022 ekireev. All rights reserved.
//

import UIKit

class AlbumVC: UIViewController {
    
    // MARK: - Properties
    
    private let app: ITunesApp
    
    private var albumView: AlbumView {
        return self.view as! AlbumView
    }
    
    // MARK: - Init
    
    init(app: ITunesApp) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Lifecycle
    
    override func loadView() {
        super.loadView()
        self.view = AlbumView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
