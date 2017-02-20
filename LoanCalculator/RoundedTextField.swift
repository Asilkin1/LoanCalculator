//
//  RoundedTextField.swift
//  LoanCalculator
//
//  Created by Alexander Silkin on 2/19/17.
//  Copyright © 2017 Alexander Silkin. All rights reserved.
//

import UIKit


    @IBDesignable
    class RoundTextField: UITextField {
        
        
        @IBInspectable var leftImage: UIImage? {
        
            didSet{
                
                updateView()
                
            }
        
        }
        
        func updateView() {
        
            if let image = leftImage {
                leftViewMode = .always
                let imageView = UIImageView(frame:CGRect(x:leftPadding, y:0, width:20, height: 20))
                
                imageView.image = image
                
                let width = leftPadding + 20
                let view = UIView(frame:CGRect(x: 0, y: 0, width: width, height: 20))
                view.addSubview(imageView)
                leftView = view
                
            }
            
            else {
                
                leftViewMode = .never
            
            }
        
        }
        
        @IBInspectable var leftPadding: CGFloat = 0 {
            didSet {
                updateView()
            }
        
        }
        
        @IBInspectable var cornerRadius: CGFloat = 0 {
            didSet {
                layer.cornerRadius = cornerRadius
                layer.masksToBounds = cornerRadius > 0
            }
        }
        
        @IBInspectable var borderWidth: CGFloat = 0 {
            didSet {
                layer.borderWidth = borderWidth
            }
        }
        
        @IBInspectable var borderColor: UIColor? {
            didSet {
                layer.borderColor = borderColor?.cgColor
            }
        }
        
        @IBInspectable var bgColor: UIColor? {
            didSet {
                backgroundColor = bgColor
            }
        }
        
        
        @IBInspectable var placeholderColor: UIColor? {
            didSet {
                let rawString = attributedPlaceholder?.string != nil ? attributedPlaceholder!.string : ""
                let str = NSAttributedString(string: rawString, attributes: [NSForegroundColorAttributeName: placeholderColor!])
                attributedPlaceholder = str
            }
        }

}

