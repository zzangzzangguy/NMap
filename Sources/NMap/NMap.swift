// The Swift Programming Language
// https://docs.swift.org/swift-book

import Foundation
import NMapsMap
import NMapsGeometry

public struct NMap {
    /// 네이버 맵 SDK 초기화를 위한 메소드
    public static func initialize(clientId: String) {
        NMFAuthManager.shared().clientId = clientId
    }

    /// 새로운 지도 뷰 인스턴스 생성
    public static func createMapView() -> NMFMapView {
        return NMFMapView()
    }

    // 현재 SDK 버전 반환 - 실제로 이 메서드가 있는지 확인 필요
    // public static var sdkVersion: String {
    //     return NMFAuthManager.shared().sdkVersion
    // }

    // 초기화 방지
    private init() {}
}

// 편의성을 위한 별칭
public typealias NaverMapView = NMFMapView
public typealias NaverMarker = NMFMarker
