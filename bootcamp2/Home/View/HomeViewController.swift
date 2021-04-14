//
//  HomeViewController.swift
//  bootcamp2
//
//  Created by Piero Sifuentes on 8/4/21.
//

import UIKit

protocol HomeView: class {
    func reloadData()
}

class HomeViewController: UIViewController {
    
    var presenter: HomePresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "CardCell", bundle: .main), forCellReuseIdentifier: "cellIdentifier")
    }
    
    deinit {
        print("this view was deinit")
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
}

extension HomeViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
    
    
}


extension HomeViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter?.users?.count ?? 0
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellIdentifier", for: indexPath) as? CardCell
        let user = presenter?.users?[indexPath.row]
        cell?.setup(title: user?.fullname)
        return cell!
    }
    
    
}


extension HomeViewController: HomeView {
    
    func reloadData() {
        tableView?.reloadData()
    }
}
