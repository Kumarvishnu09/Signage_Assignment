A minimal fullscreen digital signage application built using Flutter.
The app fetches content from an API and continuously displays images and videos in a loop, similar to a real-world display screen.

🚀 Features
Fetches playlist from a remote API (JSON format)
Supports:
🖼️ Images
🎬 Videos
Displays one item at a time
Each item plays for exactly 10 seconds
Infinite loop playback
Fully fullscreen UI (no controls, no interaction)
Automatic video playback (no user input required)
Clean architecture with proper separation of concerns
Proper resource management (timers + video controller disposal)

🛠️ Tech Stack
Flutter
Dart
http (API calls)
video_player (video playback)

▶️ How to Run the Project
1. Clone the repository
   git clone <your-repo-url>
    cd digital-signage-app
2. Install dependencies
    flutter pub get

3. Update API URL

Open:

lib/main.dart

Replace:

ApiService("YOUR_API_URL_HERE")

with your actual API endpoint.

4. Run the app
For Android:
flutter run
For Web (if testing):
flutter run -d chrome

📡 API Format

The app expects the API response in the following format:

{
  "result": [
    {
      "type": "image",
      "url": "https://example.com/image.jpg"
    },
    {
      "type": "video",
      "url": "https://example.com/video.mp4"
    }
  ]
}

⏱️ Playback Behaviour
Each item is displayed for 10 seconds
After 10 seconds:
Moves to the next item
After last item:
Restarts from the first item
Loop runs indefinitely


🎬 Video Handling
Videos:
Auto-play on load
Muted (default device behavior)
Stopped after 10 seconds (even if longer)
Uses video_player package
Proper initialization and disposal to prevent memory leaks

🖼️ Image Handling
Loaded via network
Scales to fill screen using BoxFit.cover
Maintains aspect ratio


⚠️ Assumptions Made
API Availability
API is always reachable and returns valid JSON
Content Validity
All URLs provided:
Are publicly accessible
Support CORS (important for web)
Return valid media formats
Video Format
Videos are in supported format (MP4 with H.264 codec recommended)
Network Stability
Stable internet connection is available
Device Usage
App is intended for kiosk/digital signage use
No user interaction is expected
Error Handling
Basic error handling is implemented (logs + fallback UI)
No retry mechanism for failed API/media requests
Timing
Each item is forced to display for exactly 10 seconds regardless of:
Video length
Loading delays


🧠 Possible Improvements
Preloading next media for smoother transitions
Offline caching of images/videos
Retry mechanism for API failures
Dynamic duration per item (instead of fixed 10 sec)
Remote configuration / CMS support
Kiosk mode for Android devices


📌 Notes
No state management libraries were used (as per requirements)
No animations or transitions are implemented
No PageView or user interaction included


