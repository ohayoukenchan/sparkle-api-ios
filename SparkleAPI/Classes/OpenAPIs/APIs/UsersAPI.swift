//
// UsersAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import RxSwift



open class UsersAPI {
    /**
     メッセージを取得します
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<[User]>
     */
    open class func getMessagesGet(apiResponseQueue: DispatchQueue = SparkleAPIAPI.apiResponseQueue) -> Observable<[User]> {
        return Observable.create { observer -> Disposable in
            getMessagesGetWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
                switch result {
                case let .success(response):
                    observer.onNext(response.body!)
                case let .failure(error):
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     メッセージを取得します
     - GET /getMessages
     - メッセージの取得
     - returns: RequestBuilder<[User]> 
     */
    open class func getMessagesGetWithRequestBuilder() -> RequestBuilder<[User]> {
        let path = "/getMessages"
        let URLString = SparkleAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[User]>.Type = SparkleAPIAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}