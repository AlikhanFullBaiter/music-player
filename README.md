# assignment3 🎶

Project is a mobile application designed for playing music tracks with features for managing playlists, changing theme colors, and more.

![Alt text](/assets/images/application.png)

## Key Files 🔑

**main.dart** - the main application file containing the entry point (main()) and application configuration.

**theme_provider.dart** - file with the ThemeProvider class responsible for managing the application's theme.

**light_mode.dart and dark_mode.dart** - files with light and dark theme configurations respectively.

**models/playlist_provider.dart** - file with the PlaylistProvider class responsible for managing playlist data.

**song_page.dart** - The SongPage widget is responsible for displaying details about a song, including its album artwork, title, artist, playback controls, and more. Displays album artwork, song title, artist name, and playback controls.
Uses the NeuBox component for a neumorphic design.
Utilizes the PlaylistProvider from the provider package for managing playlist data.

**setting_page.dart** - The SettingsPage widget allows users to toggle between light and dark modes in the application. Displays a switch to toggle between light and dark modes.
Uses the ThemeProvider from the provider package for managing the application's theme

**home_page.dart** -The HomePage widget displays a list of songs in a playlist and allows users to navigate to individual song details. Displays a list of songs from a playlist.
Uses the MyDrawer component for the application drawer.
Navigates to the SongPage widget when a song in the playlist is tapped.
Utilizes the PlaylistProvider from the provider package for managing playlist data.

**song.dart** - The Song class represents a song in a music application with properties such as song name, artist name, and album art image path.

**playlist_provider.dart** - The PlaylistProvider class manages a playlist of songs and keeps track of the current song index for playback control.

- playlist: Returns the list of songs in the playlist.
- currentSongIndex: Returns the current song index.
- playlist: Returns the list of songs in the playlist.
- currentSongIndex: Returns the current song index.
- currentSongIndex: Sets the current song index and updates the UI

**NeuBox.dart** - The NeuBox widget creates a neumorphic-style container with a subtle shadow effect. The NeuBox widget applies a neumorphic-style design with a darker shadow on the bottom right and a lighter shadow on the top left.

**my_drawer.dart** - The MyDrawer widget creates a custom drawer for navigation within the application, including links to the home page and settings page. Displays a custom drawer with links to the home page and settings page.
Uses icons and text for navigation items.
