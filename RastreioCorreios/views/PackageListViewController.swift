//
//  PackageListViewController.swift
//  CarList
//
//  Created by Aluno on 06/11/21.
//

import UIKit

class PackageListViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {
    
    @IBOutlet weak var tvList: UITableView!
    
    var list : NSMutableArray = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let evento1 = EventStruct(dataPostagem: "teste", descricao: "Encaminhado", hora: "teste")
        let objeto1 = PackageStruct(numero: "TE123456789BR", evento: evento1)
        
        for _ in 1...10 {
            list.add(objeto1)
        }
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let packageTableViewCell = tableView.dequeueReusableCell(withIdentifier: "PackageCell" , for: indexPath) as! PackageTableViewCell
        packageTableViewCell.configure(with: list[indexPath.row] as! PackageStruct)
        return packageTableViewCell
    }
    
}
