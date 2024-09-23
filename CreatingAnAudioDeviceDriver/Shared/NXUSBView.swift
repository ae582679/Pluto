/*
See the LICENSE.txt file for this sample’s licensing information.

Abstract:
The SwiftUI view that provides the driver-loading UI.
*/

import SwiftUI

struct NXUSBView: View {
	@ObservedObject var viewModel = NXUSBViewModel()
	var userClient = SimpleAudioUserClient()
	@State var userClientText = ""

	var body: some View {
#if os(macOS)
		VStack(alignment: .center) {
			Text("Naxiang USB_Serial_Driver Manager")
				.padding()
				.font(.title)
			Text(self.viewModel.dextLoadingState)
				.multilineTextAlignment(.center)
			HStack {
				Button(
					action: {
						self.viewModel.activateMyDext()
					}, label: {
						Text("Install Dext")
					}
				)
			}
		}
		.frame(width: 500, height: 200, alignment: .center)
#endif
		
		
	}
}

struct NXUSBDriverView_Previews: PreviewProvider {
    static var previews: some View {
		NXUSBView()
    }
}
