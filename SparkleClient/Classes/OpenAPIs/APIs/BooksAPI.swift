//
// BooksAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import RxSwift



open class BooksAPI {
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
     書籍データを返します
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - returns: Observable<[Book]>
     */
    open class func getBooksGet(apiResponseQueue: DispatchQueue = SparkleClientAPI.apiResponseQueue) -> Observable<[Book]> {
        return Observable.create { observer -> Disposable in
            getBooksGetWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
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
     書籍データを返します
     - GET /getBooks
     - 書籍の一覧
     - returns: RequestBuilder<[Book]> 
     */
    open class func getBooksGetWithRequestBuilder() -> RequestBuilder<[Book]> {
        let path = "/getBooks"
        let URLString = SparkleClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        
        let url = URLComponents(string: URLString)

        let requestBuilder: RequestBuilder<[Book]>.Type = SparkleClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }

}
