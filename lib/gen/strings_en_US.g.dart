///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEnUs = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.enUs,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en-US>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsMetaEnUs meta = TranslationsMetaEnUs.internal(_root);
	late final TranslationsAppEnUs app = TranslationsAppEnUs.internal(_root);
	late final TranslationsCommonEnUs common = TranslationsCommonEnUs.internal(_root);
	late final TranslationsSettingsEnUs settings = TranslationsSettingsEnUs.internal(_root);
	late final TranslationsPomodoroEnUs pomodoro = TranslationsPomodoroEnUs.internal(_root);
	late final TranslationsMusicPlayerEnUs musicPlayer = TranslationsMusicPlayerEnUs.internal(_root);
	late final TranslationsSoundMixerEnUs soundMixer = TranslationsSoundMixerEnUs.internal(_root);
	late final TranslationsAssetsEnUs assets = TranslationsAssetsEnUs.internal(_root);
}

// Path: meta
class TranslationsMetaEnUs {
	TranslationsMetaEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'English'
	String get languageName => 'English';

	/// en-US: 'United States'
	String get regionName => 'United States';

	/// en-US: '2025-07-15'
	String get created => '2025-07-15';

	/// en-US: '2025-08-30'
	String get updated => '2025-08-30';
}

// Path: app
class TranslationsAppEnUs {
	TranslationsAppEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Minova'
	String get title => 'Minova';

	/// en-US: 'Live min, think max.'
	String get slogan => 'Live min, think max.';
}

// Path: common
class TranslationsCommonEnUs {
	TranslationsCommonEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Save'
	String get save => 'Save';

	/// en-US: 'Cancel'
	String get cancel => 'Cancel';

	/// en-US: 'Close'
	String get close => 'Close';

	/// en-US: 'Success'
	String get success => 'Success';

	/// en-US: 'Failed'
	String get failed => 'Failed';
}

// Path: settings
class TranslationsSettingsEnUs {
	TranslationsSettingsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Settings'
	String get title => 'Settings';

	late final TranslationsSettingsLanguageEnUs language = TranslationsSettingsLanguageEnUs.internal(_root);
	late final TranslationsSettingsThemeModeEnUs themeMode = TranslationsSettingsThemeModeEnUs.internal(_root);
	late final TranslationsSettingsThemeEnUs theme = TranslationsSettingsThemeEnUs.internal(_root);
	late final TranslationsSettingsPomodoroAppearanceEnUs pomodoroAppearance = TranslationsSettingsPomodoroAppearanceEnUs.internal(_root);
	late final TranslationsSettingsAboutEnUs about = TranslationsSettingsAboutEnUs.internal(_root);
}

// Path: pomodoro
class TranslationsPomodoroEnUs {
	TranslationsPomodoroEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Pomodoro'
	String get title => 'Pomodoro';

	late final TranslationsPomodoroControlsEnUs controls = TranslationsPomodoroControlsEnUs.internal(_root);
	late final TranslationsPomodoroPhasesEnUs phases = TranslationsPomodoroPhasesEnUs.internal(_root);
}

// Path: musicPlayer
class TranslationsMusicPlayerEnUs {
	TranslationsMusicPlayerEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Music Player'
	String get title => 'Music Player';

	late final TranslationsMusicPlayerControlsEnUs controls = TranslationsMusicPlayerControlsEnUs.internal(_root);
}

// Path: soundMixer
class TranslationsSoundMixerEnUs {
	TranslationsSoundMixerEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Sound Mixer'
	String get title => 'Sound Mixer';
}

// Path: assets
class TranslationsAssetsEnUs {
	TranslationsAssetsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAssetsAlbumsEnUs albums = TranslationsAssetsAlbumsEnUs.internal(_root);
	late final TranslationsAssetsMusicTracksEnUs musicTracks = TranslationsAssetsMusicTracksEnUs.internal(_root);
	late final TranslationsAssetsAmbientSoundsEnUs ambientSounds = TranslationsAssetsAmbientSoundsEnUs.internal(_root);
}

// Path: settings.language
class TranslationsSettingsLanguageEnUs {
	TranslationsSettingsLanguageEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Language'
	String get title => 'Language';
}

// Path: settings.themeMode
class TranslationsSettingsThemeModeEnUs {
	TranslationsSettingsThemeModeEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Theme Mode'
	String get title => 'Theme Mode';

	/// en-US: 'Light Mode'
	String get light => 'Light Mode';

	/// en-US: 'Dark Mode'
	String get dark => 'Dark Mode';

	/// en-US: 'Sync with System'
	String get system => 'Sync with System';
}

// Path: settings.theme
class TranslationsSettingsThemeEnUs {
	TranslationsSettingsThemeEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Theme'
	String get title => 'Theme';
}

// Path: settings.pomodoroAppearance
class TranslationsSettingsPomodoroAppearanceEnUs {
	TranslationsSettingsPomodoroAppearanceEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Pomodoro Appearance'
	String get title => 'Pomodoro Appearance';

	/// en-US: 'Current Time'
	String get currentTime => 'Current Time';

	/// en-US: 'Countdown Timer'
	String get countdownTimer => 'Countdown Timer';

	/// en-US: 'Progress Bar'
	String get progressBar => 'Progress Bar';

	/// en-US: 'Breathing Ball'
	String get breathingBall => 'Breathing Ball';
}

// Path: settings.about
class TranslationsSettingsAboutEnUs {
	TranslationsSettingsAboutEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'About'
	String get title => 'About';

	/// en-US: 'Project Page'
	String get page => 'Project Page';

	/// en-US: 'GitHub Repository'
	String get gitHub => 'GitHub Repository';

	/// en-US: 'Contact via Email'
	String get email => 'Contact via Email';
}

// Path: pomodoro.controls
class TranslationsPomodoroControlsEnUs {
	TranslationsPomodoroControlsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Start'
	String get start => 'Start';

	/// en-US: 'Pause'
	String get pause => 'Pause';

	/// en-US: 'Resume'
	String get resume => 'Resume';

	/// en-US: 'Stop'
	String get stop => 'Stop';

	/// en-US: 'Skip Phase'
	String get skipPhase => 'Skip Phase';

	/// en-US: 'Reset Phase'
	String get resetPhase => 'Reset Phase';
}

// Path: pomodoro.phases
class TranslationsPomodoroPhasesEnUs {
	TranslationsPomodoroPhasesEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Focus'
	String get focus => 'Focus';

	/// en-US: 'Break'
	String get kBreak => 'Break';

	/// en-US: 'Short Break'
	String get shortBreak => 'Short Break';

	/// en-US: 'Long Break'
	String get longBreak => 'Long Break';
}

// Path: musicPlayer.controls
class TranslationsMusicPlayerControlsEnUs {
	TranslationsMusicPlayerControlsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Play'
	String get play => 'Play';

	/// en-US: 'Pause'
	String get pause => 'Pause';

	/// en-US: 'Previous'
	String get previous => 'Previous';

	/// en-US: 'Next'
	String get next => 'Next';
}

// Path: assets.albums
class TranslationsAssetsAlbumsEnUs {
	TranslationsAssetsAlbumsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAssetsAlbumsHappyPlaceEnUs happyPlace = TranslationsAssetsAlbumsHappyPlaceEnUs.internal(_root);
	late final TranslationsAssetsAlbumsBloomEnUs bloom = TranslationsAssetsAlbumsBloomEnUs.internal(_root);
	late final TranslationsAssetsAlbumsOasisEnUs oasis = TranslationsAssetsAlbumsOasisEnUs.internal(_root);
	late final TranslationsAssetsAlbumsDistantWorldsEnUs distantWorlds = TranslationsAssetsAlbumsDistantWorldsEnUs.internal(_root);
	late final TranslationsAssetsAlbumsCityNights2EnUs cityNights2 = TranslationsAssetsAlbumsCityNights2EnUs.internal(_root);
}

// Path: assets.musicTracks
class TranslationsAssetsMusicTracksEnUs {
	TranslationsAssetsMusicTracksEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAssetsMusicTracksDaydreamsEnUs daydreams = TranslationsAssetsMusicTracksDaydreamsEnUs.internal(_root);
	late final TranslationsAssetsMusicTracksStrawberryLemonadeEnUs strawberryLemonade = TranslationsAssetsMusicTracksStrawberryLemonadeEnUs.internal(_root);
	late final TranslationsAssetsMusicTracksGreenTeaEnUs greenTea = TranslationsAssetsMusicTracksGreenTeaEnUs.internal(_root);
	late final TranslationsAssetsMusicTracksWishingWellEnUs wishingWell = TranslationsAssetsMusicTracksWishingWellEnUs.internal(_root);
	late final TranslationsAssetsMusicTracksBeautifulDayEnUs beautifulDay = TranslationsAssetsMusicTracksBeautifulDayEnUs.internal(_root);
	late final TranslationsAssetsMusicTracksMissingYouEnUs missingYou = TranslationsAssetsMusicTracksMissingYouEnUs.internal(_root);
	late final TranslationsAssetsMusicTracksFallingStarEnUs fallingStar = TranslationsAssetsMusicTracksFallingStarEnUs.internal(_root);
	late final TranslationsAssetsMusicTracksLonelyEnUs lonely = TranslationsAssetsMusicTracksLonelyEnUs.internal(_root);
}

// Path: assets.ambientSounds
class TranslationsAssetsAmbientSoundsEnUs {
	TranslationsAssetsAmbientSoundsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAssetsAmbientSoundsRainEnUs rain = TranslationsAssetsAmbientSoundsRainEnUs.internal(_root);
	late final TranslationsAssetsAmbientSoundsBirdChirpEnUs birdChirp = TranslationsAssetsAmbientSoundsBirdChirpEnUs.internal(_root);
	late final TranslationsAssetsAmbientSoundsCricketEnUs cricket = TranslationsAssetsAmbientSoundsCricketEnUs.internal(_root);
	late final TranslationsAssetsAmbientSoundsOwlHootEnUs owlHoot = TranslationsAssetsAmbientSoundsOwlHootEnUs.internal(_root);
	late final TranslationsAssetsAmbientSoundsPencilWriteEnUs pencilWrite = TranslationsAssetsAmbientSoundsPencilWriteEnUs.internal(_root);
	late final TranslationsAssetsAmbientSoundsThunderEnUs thunder = TranslationsAssetsAmbientSoundsThunderEnUs.internal(_root);
}

// Path: assets.albums.happyPlace
class TranslationsAssetsAlbumsHappyPlaceEnUs {
	TranslationsAssetsAlbumsHappyPlaceEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Happy Place'
	String get title => 'Happy Place';
}

// Path: assets.albums.bloom
class TranslationsAssetsAlbumsBloomEnUs {
	TranslationsAssetsAlbumsBloomEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Bloom'
	String get title => 'Bloom';
}

// Path: assets.albums.oasis
class TranslationsAssetsAlbumsOasisEnUs {
	TranslationsAssetsAlbumsOasisEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Oasis'
	String get title => 'Oasis';
}

// Path: assets.albums.distantWorlds
class TranslationsAssetsAlbumsDistantWorldsEnUs {
	TranslationsAssetsAlbumsDistantWorldsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Distant Worlds'
	String get title => 'Distant Worlds';
}

// Path: assets.albums.cityNights2
class TranslationsAssetsAlbumsCityNights2EnUs {
	TranslationsAssetsAlbumsCityNights2EnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'City Nights 2'
	String get title => 'City Nights 2';
}

// Path: assets.musicTracks.daydreams
class TranslationsAssetsMusicTracksDaydreamsEnUs {
	TranslationsAssetsMusicTracksDaydreamsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Daydreams'
	String get title => 'Daydreams';

	/// en-US: 'Purrple Cat'
	String get artist => 'Purrple Cat';
}

// Path: assets.musicTracks.strawberryLemonade
class TranslationsAssetsMusicTracksStrawberryLemonadeEnUs {
	TranslationsAssetsMusicTracksStrawberryLemonadeEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Strawberry Lemonade'
	String get title => 'Strawberry Lemonade';

	/// en-US: 'Purrple Cat'
	String get artist => 'Purrple Cat';
}

// Path: assets.musicTracks.greenTea
class TranslationsAssetsMusicTracksGreenTeaEnUs {
	TranslationsAssetsMusicTracksGreenTeaEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Green Tea'
	String get title => 'Green Tea';

	/// en-US: 'Purrple Cat'
	String get artist => 'Purrple Cat';
}

// Path: assets.musicTracks.wishingWell
class TranslationsAssetsMusicTracksWishingWellEnUs {
	TranslationsAssetsMusicTracksWishingWellEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Wishing Well'
	String get title => 'Wishing Well';

	/// en-US: 'Purrple Cat'
	String get artist => 'Purrple Cat';
}

// Path: assets.musicTracks.beautifulDay
class TranslationsAssetsMusicTracksBeautifulDayEnUs {
	TranslationsAssetsMusicTracksBeautifulDayEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Beautiful Day'
	String get title => 'Beautiful Day';

	/// en-US: 'Purrple Cat'
	String get artist => 'Purrple Cat';
}

// Path: assets.musicTracks.missingYou
class TranslationsAssetsMusicTracksMissingYouEnUs {
	TranslationsAssetsMusicTracksMissingYouEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Missing You'
	String get title => 'Missing You';

	/// en-US: 'Purrple Cat'
	String get artist => 'Purrple Cat';
}

// Path: assets.musicTracks.fallingStar
class TranslationsAssetsMusicTracksFallingStarEnUs {
	TranslationsAssetsMusicTracksFallingStarEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Falling Star'
	String get title => 'Falling Star';

	/// en-US: 'Purrple Cat'
	String get artist => 'Purrple Cat';
}

// Path: assets.musicTracks.lonely
class TranslationsAssetsMusicTracksLonelyEnUs {
	TranslationsAssetsMusicTracksLonelyEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Lonely'
	String get title => 'Lonely';

	/// en-US: 'Purrple Cat'
	String get artist => 'Purrple Cat';
}

// Path: assets.ambientSounds.rain
class TranslationsAssetsAmbientSoundsRainEnUs {
	TranslationsAssetsAmbientSoundsRainEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Rain'
	String get title => 'Rain';
}

// Path: assets.ambientSounds.birdChirp
class TranslationsAssetsAmbientSoundsBirdChirpEnUs {
	TranslationsAssetsAmbientSoundsBirdChirpEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Bird Chirp'
	String get title => 'Bird Chirp';
}

// Path: assets.ambientSounds.cricket
class TranslationsAssetsAmbientSoundsCricketEnUs {
	TranslationsAssetsAmbientSoundsCricketEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Cricket'
	String get title => 'Cricket';
}

// Path: assets.ambientSounds.owlHoot
class TranslationsAssetsAmbientSoundsOwlHootEnUs {
	TranslationsAssetsAmbientSoundsOwlHootEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Owl Hoot'
	String get title => 'Owl Hoot';
}

// Path: assets.ambientSounds.pencilWrite
class TranslationsAssetsAmbientSoundsPencilWriteEnUs {
	TranslationsAssetsAmbientSoundsPencilWriteEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Pencil Write'
	String get title => 'Pencil Write';
}

// Path: assets.ambientSounds.thunder
class TranslationsAssetsAmbientSoundsThunderEnUs {
	TranslationsAssetsAmbientSoundsThunderEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Thunder'
	String get title => 'Thunder';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'meta.languageName': return 'English';
			case 'meta.regionName': return 'United States';
			case 'meta.created': return '2025-07-15';
			case 'meta.updated': return '2025-08-30';
			case 'app.title': return 'Minova';
			case 'app.slogan': return 'Live min, think max.';
			case 'common.save': return 'Save';
			case 'common.cancel': return 'Cancel';
			case 'common.close': return 'Close';
			case 'common.success': return 'Success';
			case 'common.failed': return 'Failed';
			case 'settings.title': return 'Settings';
			case 'settings.language.title': return 'Language';
			case 'settings.themeMode.title': return 'Theme Mode';
			case 'settings.themeMode.light': return 'Light Mode';
			case 'settings.themeMode.dark': return 'Dark Mode';
			case 'settings.themeMode.system': return 'Sync with System';
			case 'settings.theme.title': return 'Theme';
			case 'settings.pomodoroAppearance.title': return 'Pomodoro Appearance';
			case 'settings.pomodoroAppearance.currentTime': return 'Current Time';
			case 'settings.pomodoroAppearance.countdownTimer': return 'Countdown Timer';
			case 'settings.pomodoroAppearance.progressBar': return 'Progress Bar';
			case 'settings.pomodoroAppearance.breathingBall': return 'Breathing Ball';
			case 'settings.about.title': return 'About';
			case 'settings.about.page': return 'Project Page';
			case 'settings.about.gitHub': return 'GitHub Repository';
			case 'settings.about.email': return 'Contact via Email';
			case 'pomodoro.title': return 'Pomodoro';
			case 'pomodoro.controls.start': return 'Start';
			case 'pomodoro.controls.pause': return 'Pause';
			case 'pomodoro.controls.resume': return 'Resume';
			case 'pomodoro.controls.stop': return 'Stop';
			case 'pomodoro.controls.skipPhase': return 'Skip Phase';
			case 'pomodoro.controls.resetPhase': return 'Reset Phase';
			case 'pomodoro.phases.focus': return 'Focus';
			case 'pomodoro.phases.kBreak': return 'Break';
			case 'pomodoro.phases.shortBreak': return 'Short Break';
			case 'pomodoro.phases.longBreak': return 'Long Break';
			case 'musicPlayer.title': return 'Music Player';
			case 'musicPlayer.controls.play': return 'Play';
			case 'musicPlayer.controls.pause': return 'Pause';
			case 'musicPlayer.controls.previous': return 'Previous';
			case 'musicPlayer.controls.next': return 'Next';
			case 'soundMixer.title': return 'Sound Mixer';
			case 'assets.albums.happyPlace.title': return 'Happy Place';
			case 'assets.albums.bloom.title': return 'Bloom';
			case 'assets.albums.oasis.title': return 'Oasis';
			case 'assets.albums.distantWorlds.title': return 'Distant Worlds';
			case 'assets.albums.cityNights2.title': return 'City Nights 2';
			case 'assets.musicTracks.daydreams.title': return 'Daydreams';
			case 'assets.musicTracks.daydreams.artist': return 'Purrple Cat';
			case 'assets.musicTracks.strawberryLemonade.title': return 'Strawberry Lemonade';
			case 'assets.musicTracks.strawberryLemonade.artist': return 'Purrple Cat';
			case 'assets.musicTracks.greenTea.title': return 'Green Tea';
			case 'assets.musicTracks.greenTea.artist': return 'Purrple Cat';
			case 'assets.musicTracks.wishingWell.title': return 'Wishing Well';
			case 'assets.musicTracks.wishingWell.artist': return 'Purrple Cat';
			case 'assets.musicTracks.beautifulDay.title': return 'Beautiful Day';
			case 'assets.musicTracks.beautifulDay.artist': return 'Purrple Cat';
			case 'assets.musicTracks.missingYou.title': return 'Missing You';
			case 'assets.musicTracks.missingYou.artist': return 'Purrple Cat';
			case 'assets.musicTracks.fallingStar.title': return 'Falling Star';
			case 'assets.musicTracks.fallingStar.artist': return 'Purrple Cat';
			case 'assets.musicTracks.lonely.title': return 'Lonely';
			case 'assets.musicTracks.lonely.artist': return 'Purrple Cat';
			case 'assets.ambientSounds.rain.title': return 'Rain';
			case 'assets.ambientSounds.birdChirp.title': return 'Bird Chirp';
			case 'assets.ambientSounds.cricket.title': return 'Cricket';
			case 'assets.ambientSounds.owlHoot.title': return 'Owl Hoot';
			case 'assets.ambientSounds.pencilWrite.title': return 'Pencil Write';
			case 'assets.ambientSounds.thunder.title': return 'Thunder';
			default: return null;
		}
	}
}

