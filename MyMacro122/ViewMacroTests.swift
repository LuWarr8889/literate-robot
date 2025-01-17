// ViewMacroTests.swift
// Validates the `#View` macro expansion.

import XCTest
import ViewPreviewPackageMacros

final class ViewMacroTests: XCTestCase {
    func testViewMacro() {
        assertMacroExpansion(
            """
            #View
            """,
            expandedSource: """
            struct ContentView_Previews: PreviewProvider {
                static var previews: some View {
                    ContentView()
                }
            }
            """,
            macros: ["View": ViewMacro.self]
        )
    }
}

