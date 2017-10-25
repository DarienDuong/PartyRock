//
//  PartyCell.swift
//  PartyRock
//
//  Created by Darien Duong on 10/24/17.
//  Copyright © 2017 Darien Duong. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func updateUI(partyRock: PartyRock){
        videoTitle.text = partyRock.videoTitle
        
        let url = URL(string: partyRock.imageURL)!
        
        DispatchQueue.global().async {
            do {
                let data = try Data(contentsOf: url)
                DispatchQueue.main.async {
                    self.videoPreviewImage.image = UIImage(data: data)
                }
            } catch {
//                handle the error
            }
        }
        
    }

}
