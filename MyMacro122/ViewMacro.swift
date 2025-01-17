// ViewMacro.swift
// Macro implementation that generates SwiftUI preview code.

import SwiftSyntaxMacros
import SwiftDiagnostics
import SwiftSyntaxBuilder
import Foundation

public struct ViewMacro: FreestandingDeclarationMacro {
    public static func expansion(
        of node: some FreestandingDeclarationSyntax,
        in context: some MacroExpansionContext
    ) throws -> DeclSyntax {
        """
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        """
    }
}

