#if !canImport(ObjectiveC)
import XCTest

extension ArrayTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ArrayTests = [
        ("testArrayOfIntAbsent", testArrayOfIntAbsent),
        ("testArrayOfIntPresentWithNoValue", testArrayOfIntPresentWithNoValue),
        ("testArrayOfOptionalIntPresentWithNoValue", testArrayOfOptionalIntPresentWithNoValue),
        ("testArrayOfOptionalStringPresentWithNoValue", testArrayOfOptionalStringPresentWithNoValue),
        ("testArrayOfStringAbsent", testArrayOfStringAbsent),
        ("testArrayOfStringPresentWithNoValue", testArrayOfStringPresentWithNoValue),
        ("testMissing", testMissing),
        ("testOptionalArrayOfIntAbsent", testOptionalArrayOfIntAbsent),
        ("testOptionalArrayOfStringAbsent", testOptionalArrayOfStringAbsent)
    ]
}

extension BooksTest {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__BooksTest = [
        ("testBookXML", testBookXML),
        ("testCatalogXML", testCatalogXML)
    ]
}

extension BoolTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__BoolTests = [
        ("testBoolAsAttribute", testBoolAsAttribute),
        ("testBoolAsElement", testBoolAsElement),
        ("testMissing", testMissing)
    ]
}

extension CRTClientEngineIntegrationTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__CRTClientEngineIntegrationTests = [
        ("testHttpStatusCodeDescriptionWorks", testHttpStatusCodeDescriptionWorks),
        ("testMakeHttpGetRequest", testMakeHttpGetRequest),
        ("testMakeHttpPostRequest", testMakeHttpPostRequest),
        ("testMakeHttpStreamRequestDynamicReceive", testMakeHttpStreamRequestDynamicReceive),
        ("testMakeHttpStreamRequestFromData", testMakeHttpStreamRequestFromData),
        ("testMakeHttpStreamRequestReceive", testMakeHttpStreamRequestReceive),
        ("testMakeHttpStreamRequestReceive3ThousandBytes", testMakeHttpStreamRequestReceive3ThousandBytes),
        ("testMakeHttpStreamRequestReceiveOneByte", testMakeHttpStreamRequestReceiveOneByte)
    ]
}

extension ClientErrorTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__ClientErrorTests = [
        ("testNetworkErrorEqualityWithDescription", testNetworkErrorEqualityWithDescription),
        ("testNetworkErrorInEqualityWithDescription", testNetworkErrorInEqualityWithDescription),
        ("testNetworkErrorInEqualityWithoutDescription", testNetworkErrorInEqualityWithoutDescription)
    ]
}

extension DataObjectSerializationTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__DataObjectSerializationTests = [
        ("testDataObjectIsEncodedToBase64String", testDataObjectIsEncodedToBase64String),
        ("testDecodingDataObjectFromBase64EncodedString", testDecodingDataObjectFromBase64EncodedString),
        ("testDecodingInvalidBase64EncodedDataObject", testDecodingInvalidBase64EncodedDataObject)
    ]
}

extension DateFormatterTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__DateFormatterTests = [
        ("testCreateDateFromInValidISO8601StringReturnsNil", testCreateDateFromInValidISO8601StringReturnsNil),
        ("testCreateDateFromInValidRFC5322StringReturnsNil", testCreateDateFromInValidRFC5322StringReturnsNil),
        ("testCreateDateFromValidISO8601StringWithFractionalSeconds", testCreateDateFromValidISO8601StringWithFractionalSeconds),
        ("testCreateDateFromValidISO8601StringWithoutFractionalSeconds", testCreateDateFromValidISO8601StringWithoutFractionalSeconds),
        ("testCreateDateFromValidRFC5322String", testCreateDateFromValidRFC5322String)
    ]
}

extension DateTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__DateTests = [
        ("testCustomDateFormatter", testCustomDateFormatter),
        ("testDateAsAttribute", testDateAsAttribute),
        ("testDateAsElement", testDateAsElement),
        ("testMissing", testMissing)
    ]
}

extension DictionaryTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__DictionaryTests = [
        ("testCodingDictionary", testCodingDictionary),
        ("testMissing", testMissing),
        ("testMissingDictionary", testMissingDictionary),
        ("testMissingDictionaryValue", testMissingDictionaryValue)
    ]
}

extension EncodingErrorExtensionsTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__EncodingErrorExtensionsTests = [
        ("testInvalidFloatingPointValueGivesInvalidValueError", testInvalidFloatingPointValueGivesInvalidValueError)
    ]
}

extension FloatFamilyTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__FloatFamilyTests = [
        ("testDecimalAsAttribute", testDecimalAsAttribute),
        ("testDecimalAsElement", testDecimalAsElement),
        ("testFloatAsAttribute", testFloatAsAttribute),
        ("testFloatAsElement", testFloatAsElement),
        ("testMissing", testMissing)
    ]
}

extension HeaderUtilsTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__HeaderUtilsTests = [
        ("testSplitHeaderListValues", testSplitHeaderListValues),
        ("testSplitHttpDateHeaderListValues", testSplitHttpDateHeaderListValues)
    ]
}

extension HttpClientTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__HttpClientTests = [
        ("testExecuteRequest", testExecuteRequest),
        ("testHttpStatusCodeDescriptionWorks", testHttpStatusCodeDescriptionWorks)
    ]
}

extension HttpHeadersTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__HttpHeadersTests = [
        ("testAddingExistingHeaderUpdatesIt", testAddingExistingHeaderUpdatesIt),
        ("testAddNameValuePairAsHeaderItem", testAddNameValuePairAsHeaderItem),
        ("testCaseInsensitiveHeaderValueFetchingFromName", testCaseInsensitiveHeaderValueFetchingFromName),
        ("testInitWithDictionary", testInitWithDictionary),
        ("testRemoveHeaderWithName", testRemoveHeaderWithName),
        ("testUpdateHeaderItem", testUpdateHeaderItem)
    ]
}

extension HttpRequestTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__HttpRequestTests = [
        ("testConversionToUrlRequestFailsWithInvalidEndpoint", testConversionToUrlRequestFailsWithInvalidEndpoint),
        ("testHttpStatusCodeDescriptionWorks", testHttpStatusCodeDescriptionWorks),
        ("testSdkHttpRequestToHttpRequest", testSdkHttpRequestToHttpRequest)
    ]
}

extension IntFamilyTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__IntFamilyTests = [
        ("testIntAsAttribute", testIntAsAttribute),
        ("testIntAsElement", testIntAsElement),
        ("testMissing", testMissing),
        ("testUIntAsAttribute", testUIntAsAttribute),
        ("testUIntAsElement", testUIntAsElement)
    ]
}

extension MiddlewareStackTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__MiddlewareStackTests = [
        ("testFullBlownOperationRequestWithClientHandler", testFullBlownOperationRequestWithClientHandler),
        ("testMiddlewareStackConvenienceFunction", testMiddlewareStackConvenienceFunction),
        ("testMiddlewareStackSuccessInterceptAfter", testMiddlewareStackSuccessInterceptAfter)
    ]
}

extension NetworkingTestUtils {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__NetworkingTestUtils = [
        ("testHttpStatusCodeDescriptionWorks", testHttpStatusCodeDescriptionWorks)
    ]
}

extension OperationStackTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__OperationStackTests = [
        ("testMiddlewareInjectableInit", testMiddlewareInjectableInit)
    ]
}

extension OptionalTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__OptionalTests = [
        ("testMissing", testMissing),
        ("testOptionalIntMemberAbsent", testOptionalIntMemberAbsent),
        ("testOptionalIntMemberPresentWithNoValue", testOptionalIntMemberPresentWithNoValue),
        ("testOptionalStringMemberAbsent", testOptionalStringMemberAbsent),
        ("testOptionalStringMemberPresentWithNoValue", testOptionalStringMemberPresentWithNoValue)
    ]
}

extension StringExtensionsTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__StringExtensionsTests = [
        ("testCapitalizingFirstLetter", testCapitalizingFirstLetter),
        ("testDecodingBase64EncodedString", testDecodingBase64EncodedString),
        ("testEscapingChars", testEscapingChars),
        ("testLowerCasingFirstLetter", testLowerCasingFirstLetter),
        ("testRemovingPrefixFromString", testRemovingPrefixFromString),
        ("testSubstringAfter", testSubstringAfter),
        ("testSubstringBefore", testSubstringBefore),
        ("testTrimmingString", testTrimmingString),
        ("testValidBase64EncodedString", testValidBase64EncodedString)
    ]
}

extension StringTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__StringTests = [
        ("testMissing", testMissing),
        ("testStringAsAttribute", testStringAsAttribute),
        ("testStringAsElement", testStringAsElement)
    ]
}

extension URLTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__URLTests = [
        ("testMissing", testMissing),
        ("testURLAsAttribute", testURLAsAttribute),
        ("testURLAsElement", testURLAsElement)
    ]
}

extension XMLArrayBasedContainerTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__XMLArrayBasedContainerTests = [
        ("testDescription", testDescription),
        ("testInsertAt", testInsertAt),
        ("testIsNull", testIsNull),
        ("testSequence", testSequence),
        ("testSubscript", testSubscript),
        ("testUnbox", testUnbox),
        ("testXMLString", testXMLString)
    ]
}

extension XMLBoolContainerTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__XMLBoolContainerTests = [
        ("testInvalidValues", testInvalidValues),
        ("testIsNull", testIsNull),
        ("testUnbox", testUnbox),
        ("testValidValues", testValidValues),
        ("testXMLString", testXMLString)
    ]
}

extension XMLDateContainerTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__XMLDateContainerTests = [
        ("testInvalidStrings_formatter", testInvalidStrings_formatter),
        ("testInvalidStrings_iso8601", testInvalidStrings_iso8601),
        ("testInvalidStrings_millisecondsSince1970", testInvalidStrings_millisecondsSince1970),
        ("testInvalidStrings_secondsSince1970", testInvalidStrings_secondsSince1970),
        ("testIsNull", testIsNull),
        ("testUnbox", testUnbox),
        ("testValidStrings_formatter", testValidStrings_formatter),
        ("testValidStrings_iso8601", testValidStrings_iso8601),
        ("testValidStrings_millisecondsSince1970", testValidStrings_millisecondsSince1970),
        ("testValidStrings_secondsSince1970", testValidStrings_secondsSince1970)
    ]
}

extension XMLElementRepresentableTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__XMLElementRepresentableTests = [
        ("testInitWithArrayBasedContainer", testInitWithArrayBasedContainer),
        ("testInitWithKey", testInitWithKey),
        ("testInitWithKeyBasedContainer", testInitWithKeyBasedContainer),
        ("testInitWithStringContainer", testInitWithStringContainer),
        ("testTransformToKeyBasedContainer", testTransformToKeyBasedContainer)
    ]
}

extension XMLEncoderTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__XMLEncoderTests = [
        ("testEncodingHomogenousDictionary", testEncodingHomogenousDictionary)
    ]
}

extension XMLFloatFamilyContainers {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__XMLFloatFamilyContainers = [
        ("testFloatInvalidValues", testFloatInvalidValues),
        ("testFloatIsNull", testFloatIsNull),
        ("testFloatUnbox", testFloatUnbox),
        ("testFloatValidValues", testFloatValidValues),
        ("testFloatXMLString", testFloatXMLString),
        ("testInvalidValues", testInvalidValues),
        ("testIsNull", testIsNull),
        ("testUnbox", testUnbox),
        ("testValidValues", testValidValues),
        ("testXMLString", testXMLString)
    ]
}

extension XMLHeaderTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__XMLHeaderTests = [
        ("testDefaultInit", testDefaultInit),
        ("testHeaderIsEmpty", testHeaderIsEmpty),
        ("testHeaderToXML", testHeaderToXML),
        ("testInitWithVersion", testInitWithVersion),
        ("testInitWithVersionEncoding", testInitWithVersionEncoding),
        ("testInitWithVersionEncodingStandalone", testInitWithVersionEncodingStandalone)
    ]
}

extension XMLIntFamilyContainerTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__XMLIntFamilyContainerTests = [
        ("testInvalidValues", testInvalidValues),
        ("testIsNull", testIsNull),
        ("testUIntInvalidValues", testUIntInvalidValues),
        ("testUIntIsNull", testUIntIsNull),
        ("testUIntUnbox", testUIntUnbox),
        ("testUIntValidValues", testUIntValidValues),
        ("testUIntXMLString", testUIntXMLString),
        ("testUnbox", testUnbox),
        ("testValidValues", testValidValues),
        ("testXMLString", testXMLString)
    ]
}

extension XMLKeyBasedContainerTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__XMLKeyBasedContainerTests = [
        ("testDescription", testDescription),
        ("testIsNull", testIsNull),
        ("testSequence", testSequence),
        ("testSubscript", testSubscript),
        ("testUnbox", testUnbox),
        ("testXMLString", testXMLString)
    ]
}

extension XMLKeyTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__XMLKeyTests = [
        ("testInitWithIntValue", testInitWithIntValue),
        ("testInitWithStringValue", testInitWithStringValue),
        ("testInitWithStringValueIntValue", testInitWithStringValueIntValue)
    ]
}

extension XMLNullContainerTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__XMLNullContainerTests = [
        ("testDescription", testDescription),
        ("testEqual", testEqual),
        ("testIsNull", testIsNull),
        ("testXMLString", testXMLString)
    ]
}

extension XMLSharedContainerTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__XMLSharedContainerTests = [
        ("testInit", testInit),
        ("testIsNull", testIsNull),
        ("testWithShared", testWithShared),
        ("testXMLString", testXMLString)
    ]
}

extension XMLSimpleKeyBasedContainerTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__XMLSimpleKeyBasedContainerTests = [
        ("testIsNull", testIsNull),
        ("testXMLString", testXMLString)
    ]
}

extension XMLSimpleTypesTestsUtils {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__XMLSimpleTypesTestsUtils = [
        ("testMissing", testMissing)
    ]
}

extension XMLStringContainerTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__XMLStringContainerTests = [
        ("testInvalidValues", testInvalidValues),
        ("testIsNull", testIsNull),
        ("testUnbox", testUnbox),
        ("testValidValues", testValidValues),
        ("testXMLString", testXMLString)
    ]
}

extension XMLTreeParserTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__XMLTreeParserTests = [
        ("testInValidXMLTreeParseFails", testInValidXMLTreeParseFails),
        ("testValidXMLTreeParse", testValidXMLTreeParse)
    ]
}

extension XMLURLContainerTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__XMLURLContainerTests = [
        ("testInvalidValues", testInvalidValues),
        ("testIsNull", testIsNull),
        ("testUnbox", testUnbox),
        ("testValidValues", testValidValues),
        ("testXMLString", testXMLString)
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(ArrayTests.__allTests__ArrayTests),
        testCase(BooksTest.__allTests__BooksTest),
        testCase(BoolTests.__allTests__BoolTests),
        testCase(CRTClientEngineIntegrationTests.__allTests__CRTClientEngineIntegrationTests),
        testCase(ClientErrorTests.__allTests__ClientErrorTests),
        testCase(DataObjectSerializationTests.__allTests__DataObjectSerializationTests),
        testCase(DateFormatterTests.__allTests__DateFormatterTests),
        testCase(DateTests.__allTests__DateTests),
        testCase(DictionaryTests.__allTests__DictionaryTests),
        testCase(EncodingErrorExtensionsTests.__allTests__EncodingErrorExtensionsTests),
        testCase(FloatFamilyTests.__allTests__FloatFamilyTests),
        testCase(HeaderUtilsTests.__allTests__HeaderUtilsTests),
        testCase(HttpClientTests.__allTests__HttpClientTests),
        testCase(HttpHeadersTests.__allTests__HttpHeadersTests),
        testCase(HttpRequestTests.__allTests__HttpRequestTests),
        testCase(IntFamilyTests.__allTests__IntFamilyTests),
        testCase(MiddlewareStackTests.__allTests__MiddlewareStackTests),
        testCase(NetworkingTestUtils.__allTests__NetworkingTestUtils),
        testCase(OperationStackTests.__allTests__OperationStackTests),
        testCase(OptionalTests.__allTests__OptionalTests),
        testCase(StringExtensionsTests.__allTests__StringExtensionsTests),
        testCase(StringTests.__allTests__StringTests),
        testCase(URLTests.__allTests__URLTests),
        testCase(XMLArrayBasedContainerTests.__allTests__XMLArrayBasedContainerTests),
        testCase(XMLBoolContainerTests.__allTests__XMLBoolContainerTests),
        testCase(XMLDateContainerTests.__allTests__XMLDateContainerTests),
        testCase(XMLElementRepresentableTests.__allTests__XMLElementRepresentableTests),
        testCase(XMLEncoderTests.__allTests__XMLEncoderTests),
        testCase(XMLFloatFamilyContainers.__allTests__XMLFloatFamilyContainers),
        testCase(XMLHeaderTests.__allTests__XMLHeaderTests),
        testCase(XMLIntFamilyContainerTests.__allTests__XMLIntFamilyContainerTests),
        testCase(XMLKeyBasedContainerTests.__allTests__XMLKeyBasedContainerTests),
        testCase(XMLKeyTests.__allTests__XMLKeyTests),
        testCase(XMLNullContainerTests.__allTests__XMLNullContainerTests),
        testCase(XMLSharedContainerTests.__allTests__XMLSharedContainerTests),
        testCase(XMLSimpleKeyBasedContainerTests.__allTests__XMLSimpleKeyBasedContainerTests),
        testCase(XMLSimpleTypesTestsUtils.__allTests__XMLSimpleTypesTestsUtils),
        testCase(XMLStringContainerTests.__allTests__XMLStringContainerTests),
        testCase(XMLTreeParserTests.__allTests__XMLTreeParserTests),
        testCase(XMLURLContainerTests.__allTests__XMLURLContainerTests)
    ]
}
#endif