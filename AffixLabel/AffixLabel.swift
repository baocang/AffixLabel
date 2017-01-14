//
//  AffixLabel.swift
//  AffixLabel
//
//  Created by Baocang Nie on 15/01/2017.
//  Copyright © 2017 Baocang Nie. All rights reserved.
//

import UIKit

@IBDesignable class AffixLabel: UILabel {
    
    @IBInspectable var prefix: String? = "" {
        didSet {
            self.displayAffix()
        }
    }
    
    @IBInspectable var contents: String? = "" {
        didSet {
            self.displayAffix()
        }
    }
    
    @IBInspectable var suffix: String? = "" {
        didSet {
            self.displayAffix()
        }
    }
    
    @IBInspectable var textSize: CGFloat = 0.0 {
        didSet {
            self.displayAffix()
        }
    }
    
    @IBInspectable var prefixSize: CGFloat = 0.0 {
        didSet {
            self.displayAffix()
        }
    }
    
    @IBInspectable var suffixSize: CGFloat = 0.0 {
        didSet {
            self.displayAffix()
        }
    }
    
    @IBInspectable var prefixColor: UIColor = UIColor.darkText {
        didSet {
            self.displayAffix()
        }
    }
    
    @IBInspectable var contentsColor: UIColor = UIColor.darkText {
        didSet {
            self.displayAffix()
        }
    }
    
    @IBInspectable var suffixColor: UIColor = UIColor.darkText {
        didSet {
            self.displayAffix()
        }
    }
    
    private func displayAffix() {
        let contents = NSMutableAttributedString(string: "")
        
        if let text = self.prefix {
            let attributes: [String : Any] = [
                NSForegroundColorAttributeName: self.prefixColor,
                NSFontAttributeName: UIFont.systemFont(ofSize: self.prefixSize)
            ]
            
            contents.append(NSAttributedString(string: text, attributes: attributes))
        }
        
        if let text = self.contents {
            let attributes: [String : Any] = [
                NSForegroundColorAttributeName: self.contentsColor,
                NSFontAttributeName: UIFont.systemFont(ofSize: self.textSize)
            ]
            
            contents.append(NSAttributedString(string: text, attributes: attributes))
        }
        
        if let text = self.suffix {
            let attributes: [String : Any] = [
                NSForegroundColorAttributeName: self.suffixColor,
                NSFontAttributeName: UIFont.systemFont(ofSize: self.suffixSize)
            ]
            
            contents.append(NSAttributedString(string: text, attributes: attributes))
        }
        
        self.attributedText = contents;
    }
}
