# DefaultAPI

All URIs are relative to *https://us-central1-sparkle-1c277.cloudfunctions.net*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMessagePost**](DefaultAPI.md#addmessagepost) | **POST** /addMessage | メッセージを送信します。


# **addMessagePost**
```swift
    open class func addMessagePost(text: String? = nil) -> Observable<Void>
```

メッセージを送信します。

サーバーの状態を返します。

### Example 
```swift
// The following code samples are still beta. For any issue, please report via http://github.com/OpenAPITools/openapi-generator/issues/new
import SparkleAPI

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

