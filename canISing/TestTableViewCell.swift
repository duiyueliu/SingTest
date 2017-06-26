//
//  TestTableViewCell.swift
//  canISing
//
//  Created by woroninb on 19/06/2017.
//  Copyright © 2017 com.roche. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {
    
    let testNameLabel: UILabel = UILabel()
    let levelLabel: UILabel = UILabel()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        testNameLabel.font = UIFont(name:"HelveticaNeue-Bold", size: 16.0)
        levelLabel.font = UIFont(name:"HelveticaNeue-Light", size: 12.0)
        
        addSubview(testNameLabel)
        addSubview(levelLabel)
        
        configureConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureConstraints() {
        
        testNameLabel.translatesAutoresizingMaskIntoConstraints = false
        levelLabel.translatesAutoresizingMaskIntoConstraints = false
        
        var constraints: [NSLayoutConstraint] = []
        
        constraints.append(testNameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20))
        constraints.append(testNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor))
        constraints.append(testNameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 8))
        constraints.append(testNameLabel.bottomAnchor.constraint(equalTo: levelLabel.topAnchor, constant: -2))
        
        constraints.append(levelLabel.leadingAnchor.constraint(equalTo: testNameLabel.leadingAnchor))
        constraints.append(levelLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor))
        constraints.append(levelLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8))
        
        NSLayoutConstraint.activate(constraints)
        
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
