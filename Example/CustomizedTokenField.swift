//
//  CustomizedTokenField.swift
//  Example
//
//  Created by Ben on 09/03/2016.
//  Copyright © 2016 Polydice, Inc.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import UIKit
import ICInputAccessory

class CustomizedTokenField: ICTokenField {

  override init(frame: CGRect) {
    super.init(frame: frame)
    applyCustomizedStyle()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    applyCustomizedStyle()
  }

  override var intrinsicContentSize: CGSize {
    return UILayoutFittingExpandedSize
  }

}


////////////////////////////////////////////////////////////////////////////////


extension ICTokenField {

  func applyCustomizedStyle() {
    icon = UIImage(named: "icook-iphone-input-search")

    layer.cornerRadius = 5
    layer.shouldRasterize = true
    layer.rasterizationScale = UIScreen.main.scale
    backgroundColor = UIColor(red:0.8, green:0.32, blue:0.24, alpha:1)

    textField.textColor = UIColor.white
    textField.tintColor = UIColor.white
    textField.font = UIFont.boldSystemFont(ofSize: 14)

    attributedPlaceholder = NSAttributedString(
      string: String(describing: type(of: self)),
      attributes: [
        NSForegroundColorAttributeName: UIColor.white.withAlphaComponent(0.5),
        NSFontAttributeName: UIFont.boldSystemFont(ofSize: 14)
      ]
    )

    normalTokenAttributes = [
      NSForegroundColorAttributeName: UIColor.white,
      NSBackgroundColorAttributeName: UIColor.white.withAlphaComponent(0.25),
      NSFontAttributeName: UIFont.boldSystemFont(ofSize: 14)
    ]

    highlightedTokenAttributes = [
      NSForegroundColorAttributeName: UIColor(red:0.8, green:0.32, blue:0.24, alpha:1),
      NSBackgroundColorAttributeName: UIColor.white,
      NSFontAttributeName: UIFont.boldSystemFont(ofSize: 14)
    ]
  }

}
