//
//  PackageTableViewCell.swift
//  CarList
//
//  Created by Aluno on 06/11/21.
//

import UIKit

class PackageTableViewCell: UITableViewCell {

    
    @IBOutlet weak var lblNumero: UILabel!
    @IBOutlet weak var lblStatus: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func configure(with package : PackageStruct){
        lblNumero.text = package.numero
        lblStatus.text = package.evento.descricao
    }

}
