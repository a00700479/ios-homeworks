//
//  ProfileView.swift
//  Netology_IB_Instruments
//
//  Created by Natali on 09.02.2022.
//

import UIKit

class ProfileView: UIView {

    @IBOutlet weak var userPhoto: UIImageView!

    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    
    @IBOutlet weak var textLabel: UITextView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.commonInit()
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.commonInit()
    }
    private func commonInit() {
        let bundle = Bundle.init(for: ProfileView.self)
        if let viewToAdd = bundle.loadNibNamed("ProfileView", owner: self, options: nil), let
            contentView = viewToAdd.first as? UIView {
            addSubview(contentView)
            contentView.frame = self.bounds
            contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        }
    }
}
