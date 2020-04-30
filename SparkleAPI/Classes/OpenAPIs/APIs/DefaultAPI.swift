//
// DefaultAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import RxSwift



open class DefaultAPI {
    /**
     メッセージを送信します。
     
     - parameter text: (query) The number of items to skip before starting to collect the result set (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Void>
     */
    open class func addMessagePost(text: String? = nil, apiResponseQueue: DispatchQueue = SparkleAPIAPI.apiResponseQueue) -> Observable<Void> {
        return Observable.create { observer -> Disposable in
            addMessagePostWithRequestBuilder(text: text).execute(apiResponseQueue) { result -> Void in
                switch result {
                case .success:
                    observer.onNext(())
                case let .failure(error):
                    observer.onError(error)
                }
                observer.onCompleted()
            }
            return Disposables.create()
        }
    }

    /**
     メッセージを送信します。
     - POST /addMessage
     - サーバーの状態を返します。
     - parameter text: (query) The number of items to skip before starting to collect the result set (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func addMessagePostWithRequestBuilder(text: String? = nil) -> RequestBuilder<Void> {
        let path = "/addMessage"
        let URLString = SparkleAPIAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "text": text?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SparkleAPIAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
