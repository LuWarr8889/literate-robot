import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import SwiftDiagnostics
import SwiftSyntaxBuilder
import Foundation

public struct ViewMacro: FreestandingDeclarationMacro {
    public static func expansion(
        of node: some FreestandingDeclarationSyntax,
        in context: some MacroExpansionContext
    ) throws -> DeclSyntax {
        // Generate the boilerplate SwiftUI preview code
        """
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
            }
        }
        """
    }
}

