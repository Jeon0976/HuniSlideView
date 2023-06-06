//
//  SlideUpView.swift
//  
//
//  Created by 전성훈 on 2023/06/07.
//

import UIKit

open class SlideUpView: UIView {
    
    // 화면의 반만큼 높이를 갖는 뷰를 생성
    override init(frame: CGRect) {
        let halfScreenHeight = UIScreen.main.bounds.height / 2
        let newFrame = CGRect(x: 0, y: UIScreen.main.bounds.height, width: UIScreen.main.bounds.width, height: halfScreenHeight)
        super.init(frame: newFrame)
        
        self.backgroundColor = .white // 배경색은 원하는대로 설정
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // 슬라이드업 애니메이션
    open func slideUp() {
        UIView.animate(withDuration: 0.5, animations: {
            self.frame.origin.y = UIScreen.main.bounds.height / 2
        })
    }
    
    // 슬라이드다운 애니메이션
    open func slideDown() {
        UIView.animate(withDuration: 0.5, animations: {
            self.frame.origin.y = UIScreen.main.bounds.height
        })
    }
}
