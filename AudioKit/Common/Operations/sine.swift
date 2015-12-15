//
//  sine.swift
//  AudioKit For iOS
//
//  Autogenerated by scripts by Aurelius Prochazka. Do not edit directly.
//  Copyright © 2015 AudioKit. All rights reserved.
//

import Foundation

extension AKP {

    /** sine: Sine wave oscillator - 
     - returns: AKParameter
     - Parameter frequency: Frequency in cycles per second (Default: 440, Minimum: , Maximum: )
     - Parameter amplitude: Amplitude of the output (Default: 1, Minimum: , Maximum: )
     */
    public static func sine(
        frequency frequency: AKParameter = 440.ak,
        amplitude: AKParameter = 1.ak
        ) -> AKParameter {
            return AKParameter("\(frequency)\(amplitude)sine")
    }
    
    public enum SinePreset {
        case Fast
        case Slow
    }
    public static func sine(preset preset: SinePreset) -> AKParameter {
        switch preset {
        case .Fast:
            return sine(frequency: 10.ak, amplitude: 1.ak)
        case .Slow:
            return sine(frequency: 0.1.ak, amplitude: 1.ak)
        }
    }
}

