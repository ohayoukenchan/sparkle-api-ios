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
     書籍データを追加して追加した書籍を返します
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Book>
     */
    open class func addBooksPost(apiResponseQueue: DispatchQueue = SparkleClientAPI.apiResponseQueue) -> Observable<Book> {
        return Observable.create { observer -> Disposable in
            addBooksPostWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     書籍データを追加して追加した書籍を返します
     - POST /addBooks
     - めせーず
     - returns: RequestBuilder<Book> 
     */
    open class func addBooksPostWithRequestBuilder() -> RequestBuilder<Book> {
        let path = "/addBooks"
        let URLString = SparkleClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<Book>.Type = SparkleClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

    /**
     メッセージを送信します。
     
     - parameter text: (query) The number of items to skip before starting to collect the result set (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<Void>
     */
    open class func addMessagePost(text: String? = nil, apiResponseQueue: DispatchQueue = SparkleClientAPI.apiResponseQueue) -> Observable<Void> {
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
        let URLString = SparkleClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
            "text": text?.encodeToJSON()
        ])

        let requestBuilder: RequestBuilder<Void>.Type = SparkleClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
