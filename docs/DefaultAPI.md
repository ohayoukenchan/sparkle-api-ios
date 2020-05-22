# DefaultAPI

All URIs are relative to *https://us-central1-sparkle-1c277.cloudfunctions.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addBooksPost**](DefaultAPI.md#addbookspost) | **POST** /addBooks | 書籍データを追加して追加した書籍を返します
[**addMessagePost**](DefaultAPI.md#addmessagepost) | **POST** /addMessage | メッセージを送信します。
[**getMessagesGet**](DefaultAPI.md#getmessagesget) | **GET** /getMessages | メッセージを取得します


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

# **addMessagePost**
```swift
    open class func addMessagePost(text: String? = nil) -> Observable<Void>
```

メッセージを送信します。

サーバーの状態を返します。

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SparkleClient

let text = "text_example" // String | The number of items to skip before starting to collect the result set (optional)

// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **text** | **String** | The number of items to skip before starting to collect the result set | [optional] 

### Return type

Void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMessagesGet**
```swift
    open class func getMessagesGet() -> Observable<[Any]>
```

メッセージを取得します

メッセージの取得

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SparkleClient


// TODO RxSwift sample code not yet implemented. To contribute, please open a ticket via http://github.com/OpenAPITools/openapi-generator/issues/new
```

### Parameters
This endpoint does not need any parameter.

### Return type

**[Any]**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

