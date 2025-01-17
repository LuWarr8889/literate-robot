//
//  File.swift
//  MyMacro
//
//  Created by Blue Dragon on 1/16/25.
//
import SwiftSyntaxMacros
import SwiftSyntaxMacrosTestSupport
import SwiftDiagnostics
import SwiftSyntaxBuilder
import Foundation

@freestanding(declaration)
public macro View() -> Void = #externalMacro(module: "ViewPreviewPackageMacros", type: "ViewMacro")
