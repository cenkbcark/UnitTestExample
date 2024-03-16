//
//  MainVC.swift
//  UnitTestExample
//
//  Created by Cenk Bahadır Çark on 16.03.2024.
//

import UIKit

final class MainVC: UIViewController {

    var viewModel: MainViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBindings()
        viewModel?.fetchSongs()
    }
}

extension MainVC {
    func setupBindings() {
        viewModel?.reloadData = { [weak self] in
            print("Data reloaded.")
        }
    }
}
