//
//  MusicTableViewCell.swift
//  appleMusic
//
//  Created by Joker on 08.04.2023.
//

import UIKit
import SDWebImage

class MusicTableViewCell: UITableViewCell {
    @IBOutlet weak var albumImageView: UIImageView!
    
    @IBOutlet weak var artistLabel: UILabel!
    @IBOutlet weak var songLabel: UILabel!
  
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData (music: itunesMusic) {
        artistLabel.text = music.artistName
        songLabel.text = music.trackName
        albumImageView.sd_setImage(with: URL(string: music.artWorkUrl100), completed: nil)
        
    }
}
