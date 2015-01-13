//
//  SwiftView.swift
//  YOLayoutExample
//
//  Created by John Boiles on 1/9/15.
//  Copyright (c) 2015 YOLayout. All rights reserved.
//

class SwiftView: YOView {

    override func sharedInit() {
        self.backgroundColor = UIColor.whiteColor()

        let label = UILabel()
        label.text = "Hello yolo holo rolo."
        self.addSubview(label)

        self.layout = YOLayout(layoutBlock: { (layout, size) -> CGSize in
            layout.setFrame(CGRectMake(0, 64, size.width, 100), view: label, options: YOLayoutOptionsSizeToFit)
            return CGSizeMake(0, 0)
        })
    }
}
