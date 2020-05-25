# BooksAPI

All URIs are relative to *https://us-central1-sparkle-1c277.cloudfunctions.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addBooksPost**](BooksAPI.md#addbookspost) | **POST** /addBooks | 書籍データを追加して追加した書籍を返します
[**getBooksGet**](BooksAPI.md#getbooksget) | **GET** /getBooks | 書籍データを返します


# **addBooksPost**
```swift
    open class func addBooksPost() -> Observable<Book>
```

書籍データを追加して追加した書籍を返します

めせーず

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SparkleClient


// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Book**](Book.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBooksGet**
```swift
    open class func getBooksGet() -> Observable<[Book]>
```

書籍データを返します

書籍の一覧

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SparkleClient


// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**[Book]**](Book.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

