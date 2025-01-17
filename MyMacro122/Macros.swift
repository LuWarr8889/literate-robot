//
//  File.swift
//  MyMacro122
//
//  Created by Blue Dragon on 1/16/25.
//
// Macros.swift
// Contains the macro declaration.

@freestanding(declaration)
public macro View() -> Void = #externalMacro(module: "ViewPreviewPackageMacros", type: "ViewMacro")

