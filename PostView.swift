//
//  PostView.swift
//  ILW-iOS
//
//  Created by Quang-Linh LE on 15/02/2019.
//  Copyright © 2019 Quang-Linh LE. All rights reserved.
//

import UIKit

class Post: Codable {
    var id: Int
    var text: String?
    var photos: [String]?
    
    init(id: Int, text: String?, photos: [String]?) {
        self.id = id
        self.text = text
        self.photos = photos
    }
}

class PostView: UIView {
    @IBOutlet var contentView: UIView!
    @IBOutlet weak var avatarView: UIImageView!
    @IBOutlet weak var nameView: UILabel!
    @IBOutlet weak var dateView: UILabel!

    @IBOutlet weak var textView: UILabel!
    @IBOutlet weak var coverView: UIImageView!
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initView()
    }
    
    func initView() {
        _ = Bundle.main.loadNibNamed("PostView", owner: self, options: nil)
        addSubview(contentView)
        contentView.frame = bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        contentView.translatesAutoresizingMaskIntoConstraints = true
    }
    
    func withPost(_ post: Post) {
        if let text = post.text {
            textView.text = text
            textView.isHidden = false
        } else {
            textView.isHidden = true
        }
        
        if let photos = post.photos, photos.count == 1 {
            coverView.image = #imageLiteral(resourceName: "64x64.png")
            coverView.isHidden = false
        } else {
            coverView.isHidden = true
        }
    }
}
