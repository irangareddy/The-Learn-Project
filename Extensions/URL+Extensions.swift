//
//  URL+Extensions.swift
//  The Learn Project
//
//  Created by Ranga Reddy Nukala on 12/01/22.
//

import UIKit
import CoreImage.CIFilterBuiltins

extension URL {
    
    /// Creates a QR code for the current URL in the given color.
      func qrImage(using color: UIColor) -> CIImage? {
          return qrImage?.tinted(using: color)
      }

      /// Returns a black and white QR code for this URL.
      var qrImage: CIImage? {
          let context = CIContext()
          let filter = CIFilter.qrCodeGenerator()
              let data = absoluteString.data(using: String.Encoding.ascii)
              filter.setValue(data, forKey: "inputMessage")
              if let qrCodeImage = filter.outputImage {
                  if let qrCodeCGImage = context.createCGImage(qrCodeImage, from: qrCodeImage.extent) {
                      return CIImage(cgImage: qrCodeCGImage)
                  }
              }
return nil
         
      }

    /// Creates a QR code for the current URL in the given color.
     func qrImage(using color: UIColor, logo: UIImage? = nil) -> CIImage? {
         let tintedQRImage = qrImage?.tinted(using: color)

         guard let logo = logo?.cgImage else {
             return tintedQRImage
         }

         return tintedQRImage?.combined(with: CIImage(cgImage: logo))
     }
    
    

    


    
}



