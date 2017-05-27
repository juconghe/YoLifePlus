//
//  categoryCell.swift
//  YoLifePlus
//
//  Created by Jucong He on 5/26/17.
//  Copyright © 2017 JucongHe. All rights reserved.
//

import UIKit

class categoryCell: UITableViewCell {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var category: UILabel!
    fileprivate var img:UIImage!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configure(path:String, width:CGFloat, height:CGFloat, cat:String){
        let img = UIImage(named: path)?.resizeImage(newWidth: width, newHeight: height)
        imgView.image = img
        category.text = cat
    }
}
