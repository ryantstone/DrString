#if !canImport(ObjectiveC)
import XCTest

extension DocStringDescriptionFormattingTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__DocStringDescriptionFormattingTests = [
        ("testDescriptionWithinColumnLimit", testDescriptionWithinColumnLimit),
        ("testDescriptionWithinColumnLimitWithInitialColumn", testDescriptionWithinColumnLimitWithInitialColumn),
        ("testEmptyLinesInDescriptionArePreserved", testEmptyLinesInDescriptionArePreserved),
        ("testExcessiveWhitespaceInEmptyLineAreRemoved", testExcessiveWhitespaceInEmptyLineAreRemoved),
        ("testFormattingEmptyDocString", testFormattingEmptyDocString),
        ("testLeadingWhiteSpacesInDescriptionArePreserved", testLeadingWhiteSpacesInDescriptionArePreserved),
        ("testLinesExceedingColumnLimitFlowsDownward", testLinesExceedingColumnLimitFlowsDownward),
        ("testLinesExceedingColumnLimitFlowsDownwardAndPreservesLeadingWhitespace", testLinesExceedingColumnLimitFlowsDownwardAndPreservesLeadingWhitespace),
        ("testSingleLeadingWhiteSpaceIsAddedIfNecessary", testSingleLeadingWhiteSpaceIsAddedIfNecessary),
    ]
}

extension DocStringParameterFormattingTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__DocStringParameterFormattingTests = [
        ("testContinuationLeadingSpacesArePreservedWhenNecessary0", testContinuationLeadingSpacesArePreservedWhenNecessary0),
        ("testContinuationLeadingSpacesArePreservedWhenNecessary1", testContinuationLeadingSpacesArePreservedWhenNecessary1),
        ("testContinuationLineIsPaddedToProperLevel0", testContinuationLineIsPaddedToProperLevel0),
        ("testContinuationLineIsPaddedToProperLevel1", testContinuationLineIsPaddedToProperLevel1),
        ("testCorrectContinuationLinesArePreservedForVerticalAlignment", testCorrectContinuationLinesArePreservedForVerticalAlignment),
        ("testExtraIndentationsAreRemovedAndFoldingWorksProperly", testExtraIndentationsAreRemovedAndFoldingWorksProperly),
        ("testGroupedMultipleParameters", testGroupedMultipleParameters),
        ("testGroupedMultipleParametersOverColumnLimit", testGroupedMultipleParametersOverColumnLimit),
        ("testGroupedMultipleParametersVerticalAligned", testGroupedMultipleParametersVerticalAligned),
        ("testSeparateMultipleParametersNoVerticalAlignment", testSeparateMultipleParametersNoVerticalAlignment),
        ("testSeparateMultipleParametersVerticalAlignment", testSeparateMultipleParametersVerticalAlignment),
        ("testSeparateSingleParameter", testSeparateSingleParameter),
        ("testSeparateSingleParameterColumnLimit", testSeparateSingleParameterColumnLimit),
        ("testSeparateSingleParameterLowercase", testSeparateSingleParameterLowercase),
        ("testSeparateSingleParameterMultlineDescription", testSeparateSingleParameterMultlineDescription),
        ("testSeparateSingleParameterMultlineDescriptionWithInitialColumn", testSeparateSingleParameterMultlineDescriptionWithInitialColumn),
        ("testVerticalAlign", testVerticalAlign),
    ]
}

extension DocStringReturnsFormattingTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__DocStringReturnsFormattingTests = [
        ("testFormattingBasicReturns", testFormattingBasicReturns),
        ("testFormattingColumnLimitPreservesLeadingWhitespaces", testFormattingColumnLimitPreservesLeadingWhitespaces),
        ("testFormattingColumnLimitRemoveExcessLeadingSpaceBeforeColon", testFormattingColumnLimitRemoveExcessLeadingSpaceBeforeColon),
        ("testFormattingColumnLimitWithAlignAfterColon", testFormattingColumnLimitWithAlignAfterColon),
        ("testFormattingColumnLimitWithoutAlignAfterColon", testFormattingColumnLimitWithoutAlignAfterColon),
        ("testFormattingLowercaseKeyword", testFormattingLowercaseKeyword),
    ]
}

extension DocStringSectionSeparationFormattingTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__DocStringSectionSeparationFormattingTests = [
        ("testDescriptionSeparatorDoesNotGetAddedIfItsTheLastSection", testDescriptionSeparatorDoesNotGetAddedIfItsTheLastSection),
        ("testDescriptionSeparatorDoesNotGetAddedIfUnnecessary", testDescriptionSeparatorDoesNotGetAddedIfUnnecessary),
        ("testDescriptionSeparatorGetsAdded", testDescriptionSeparatorGetsAdded),
        ("testFormattingEmptyDocString", testFormattingEmptyDocString),
        ("testParameterSeparatorDoesNotGetAddedIfItsTheLastSection", testParameterSeparatorDoesNotGetAddedIfItsTheLastSection),
        ("testParameterSeparatorGetsAdded", testParameterSeparatorGetsAdded),
        ("testParametersSeparatorDoesNotGetAddedIfUnnecessary", testParametersSeparatorDoesNotGetAddedIfUnnecessary),
        ("testThrowsSeparatorDoesNotGetAddedIfItsTheLastSection", testThrowsSeparatorDoesNotGetAddedIfItsTheLastSection),
        ("testThrowsSeparatorDoesNotGetAddedIfUnnecessary", testThrowsSeparatorDoesNotGetAddedIfUnnecessary),
        ("testThrowsSeparatorGetsAdded", testThrowsSeparatorGetsAdded),
    ]
}

extension DocStringThrowsFormattingTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__DocStringThrowsFormattingTests = [
        ("testFormattingBasicThrows", testFormattingBasicThrows),
        ("testFormattingColumnLimitPreservesExcessLeadingSpaceAfterColon", testFormattingColumnLimitPreservesExcessLeadingSpaceAfterColon),
        ("testFormattingColumnLimitPreservesLeadingWhitespaces", testFormattingColumnLimitPreservesLeadingWhitespaces),
        ("testFormattingColumnLimitRemoveExcessLeadingSpaceBeforeColon", testFormattingColumnLimitRemoveExcessLeadingSpaceBeforeColon),
        ("testFormattingColumnLimitWithAlignAfterColon", testFormattingColumnLimitWithAlignAfterColon),
        ("testFormattingColumnLimitWithoutAlignAfterColon", testFormattingColumnLimitWithoutAlignAfterColon),
        ("testFormattingLowercaseKeyword", testFormattingLowercaseKeyword),
    ]
}

extension LineFoldingTests {
    // DO NOT MODIFY: This is autogenerated, use:
    //   `swift test --generate-linuxmain`
    // to regenerate.
    static let __allTests__LineFoldingTests = [
        ("testLineExceedingLimitFlowsDownward", testLineExceedingLimitFlowsDownward),
        ("testLineWithinLimitRemains", testLineWithinLimitRemains),
        ("testWordExceedingLimitFormItsOwnLine", testWordExceedingLimitFormItsOwnLine),
    ]
}

public func __allTests() -> [XCTestCaseEntry] {
    return [
        testCase(DocStringDescriptionFormattingTests.__allTests__DocStringDescriptionFormattingTests),
        testCase(DocStringParameterFormattingTests.__allTests__DocStringParameterFormattingTests),
        testCase(DocStringReturnsFormattingTests.__allTests__DocStringReturnsFormattingTests),
        testCase(DocStringSectionSeparationFormattingTests.__allTests__DocStringSectionSeparationFormattingTests),
        testCase(DocStringThrowsFormattingTests.__allTests__DocStringThrowsFormattingTests),
        testCase(LineFoldingTests.__allTests__LineFoldingTests),
    ]
}
#endif
