//
// PhrasesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import RxSwift



open class PhrasesAPI {
    /**
     Phraseの一覧を返します
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<[Phrase]>
     */
    open class func getPhrasesGet(apiResponseQueue: DispatchQueue = SparkleClientAPI.apiResponseQueue) -> Observable<[Phrase]> {
        return Observable.create { observer -> Disposable in
            getPhrasesGetWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     Phraseの一覧を返します
     - GET /getPhrases
     - phraseの一覧
     - returns: RequestBuilder<[Phrase]> 
     */
    open class func getPhrasesGetWithRequestBuilder() -> RequestBuilder<[Phrase]> {
        let path = "/getPhrases"
        let URLString = SparkleClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Phrase]>.Type = SparkleClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
