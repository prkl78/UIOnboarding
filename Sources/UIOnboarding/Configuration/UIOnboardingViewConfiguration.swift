//
//  UIOnboardingViewConfiguration.swift
//  UIOnboarding
//
//  Created by Lukman Aščić on 14.02.22.
//

import UIKit

public struct UIOnboardingViewConfiguration {
    /// Delay (in seconds) before the features list appears.
    /// Exposed so host apps can tune the pause between the title screen and the features reveal.
    /// Default kept compatible with the package's original timing (0.834s).
    public var featuresAppearanceDelay: TimeInterval = 0.834

    public var appIcon: UIImage
    public var firstTitleLine: NSMutableAttributedString
    public var secondTitleLine: NSMutableAttributedString
    public var features: Array<UIOnboardingFeature>
    public let featureStyle: UIOnboardingFeatureStyle
    public var textViewConfiguration: UIOnboardingTextViewConfiguration? = nil
    public var buttonConfiguration: UIOnboardingButtonConfiguration
    
    public init(appIcon: UIImage,
                firstTitleLine: NSMutableAttributedString,
                secondTitleLine: NSMutableAttributedString,
                features: Array<UIOnboardingFeature>,
                featureStyle: UIOnboardingFeatureStyle = .init(),
                textViewConfiguration: UIOnboardingTextViewConfiguration? = nil,
                buttonConfiguration: UIOnboardingButtonConfiguration) {
        self.appIcon = appIcon
        self.firstTitleLine = firstTitleLine
        self.secondTitleLine = secondTitleLine
        self.features = features
        self.featureStyle = featureStyle
        self.textViewConfiguration = textViewConfiguration
        self.buttonConfiguration = buttonConfiguration
    }
}
