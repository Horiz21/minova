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
		  );

	/// Metadata for the translations of <en-US>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

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

	/// en-US: '2025-09-05'
	String get updated => '2025-09-05';
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

	/// en-US: 'Reset to Default'
	String get resetToDefault => 'Reset to Default';

	/// en-US: 'Minute(s)'
	String get minutes => 'Minute(s)';

	/// en-US: 'Cycle(s)'
	String get cycles => 'Cycle(s)';
}

// Path: settings
class TranslationsSettingsEnUs {
	TranslationsSettingsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Settings'
	String get title => 'Settings';

	late final TranslationsSettingsGroupsEnUs groups = TranslationsSettingsGroupsEnUs.internal(_root);
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
	Map<String, dynamic> get albums => {
		'happyPlace': TranslationsAssetsAlbumsHappyPlaceEnUs.internal(_root),
		'bloom': TranslationsAssetsAlbumsBloomEnUs.internal(_root),
		'oasis': TranslationsAssetsAlbumsOasisEnUs.internal(_root),
		'distantWorlds': TranslationsAssetsAlbumsDistantWorldsEnUs.internal(_root),
		'cityNights2': TranslationsAssetsAlbumsCityNights2EnUs.internal(_root),
	};
	Map<String, dynamic> get musicTracks => {
		'daydreams': TranslationsAssetsMusicTracksDaydreamsEnUs.internal(_root),
		'strawberryLemonade': TranslationsAssetsMusicTracksStrawberryLemonadeEnUs.internal(_root),
		'greenTea': TranslationsAssetsMusicTracksGreenTeaEnUs.internal(_root),
		'wishingWell': TranslationsAssetsMusicTracksWishingWellEnUs.internal(_root),
		'beautifulDay': TranslationsAssetsMusicTracksBeautifulDayEnUs.internal(_root),
		'missingYou': TranslationsAssetsMusicTracksMissingYouEnUs.internal(_root),
		'fallingStar': TranslationsAssetsMusicTracksFallingStarEnUs.internal(_root),
		'lonely': TranslationsAssetsMusicTracksLonelyEnUs.internal(_root),
	};
	Map<String, dynamic> get ambientSounds => {
		'rain': TranslationsAssetsAmbientSoundsRainEnUs.internal(_root),
		'birdChirp': TranslationsAssetsAmbientSoundsBirdChirpEnUs.internal(_root),
		'cricket': TranslationsAssetsAmbientSoundsCricketEnUs.internal(_root),
		'owlHoot': TranslationsAssetsAmbientSoundsOwlHootEnUs.internal(_root),
		'pencilWrite': TranslationsAssetsAmbientSoundsPencilWriteEnUs.internal(_root),
		'thunder': TranslationsAssetsAmbientSoundsThunderEnUs.internal(_root),
	};
}

// Path: settings.groups
class TranslationsSettingsGroupsEnUs {
	TranslationsSettingsGroupsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSettingsGroupsGeneralEnUs general = TranslationsSettingsGroupsGeneralEnUs.internal(_root);
	late final TranslationsSettingsGroupsPomodoroEnUs pomodoro = TranslationsSettingsGroupsPomodoroEnUs.internal(_root);
	late final TranslationsSettingsGroupsAboutEnUs about = TranslationsSettingsGroupsAboutEnUs.internal(_root);
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

// Path: settings.groups.general
class TranslationsSettingsGroupsGeneralEnUs {
	TranslationsSettingsGroupsGeneralEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'General'
	String get title => 'General';

	late final TranslationsSettingsGroupsGeneralItemsEnUs items = TranslationsSettingsGroupsGeneralItemsEnUs.internal(_root);
}

// Path: settings.groups.pomodoro
class TranslationsSettingsGroupsPomodoroEnUs {
	TranslationsSettingsGroupsPomodoroEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Pomodoro'
	String get title => 'Pomodoro';

	late final TranslationsSettingsGroupsPomodoroItemsEnUs items = TranslationsSettingsGroupsPomodoroItemsEnUs.internal(_root);
}

// Path: settings.groups.about
class TranslationsSettingsGroupsAboutEnUs {
	TranslationsSettingsGroupsAboutEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'About'
	String get title => 'About';

	late final TranslationsSettingsGroupsAboutLinksEnUs links = TranslationsSettingsGroupsAboutLinksEnUs.internal(_root);
}

// Path: settings.groups.general.items
class TranslationsSettingsGroupsGeneralItemsEnUs {
	TranslationsSettingsGroupsGeneralItemsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSettingsGroupsGeneralItemsLanguageEnUs language = TranslationsSettingsGroupsGeneralItemsLanguageEnUs.internal(_root);
	late final TranslationsSettingsGroupsGeneralItemsThemeColorEnUs themeColor = TranslationsSettingsGroupsGeneralItemsThemeColorEnUs.internal(_root);
	late final TranslationsSettingsGroupsGeneralItemsThemeModeEnUs themeMode = TranslationsSettingsGroupsGeneralItemsThemeModeEnUs.internal(_root);
}

// Path: settings.groups.pomodoro.items
class TranslationsSettingsGroupsPomodoroItemsEnUs {
	TranslationsSettingsGroupsPomodoroItemsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsSettingsGroupsPomodoroItemsDurationsEnUs durations = TranslationsSettingsGroupsPomodoroItemsDurationsEnUs.internal(_root);
	late final TranslationsSettingsGroupsPomodoroItemsLongBreakIntervalEnUs longBreakInterval = TranslationsSettingsGroupsPomodoroItemsLongBreakIntervalEnUs.internal(_root);
	late final TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesEnUs autoStartPhases = TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesEnUs.internal(_root);
	late final TranslationsSettingsGroupsPomodoroItemsStyleEnUs style = TranslationsSettingsGroupsPomodoroItemsStyleEnUs.internal(_root);
}

// Path: settings.groups.about.links
class TranslationsSettingsGroupsAboutLinksEnUs {
	TranslationsSettingsGroupsAboutLinksEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Project Page'
	String get page => 'Project Page';

	/// en-US: 'GitHub Repository'
	String get gitHub => 'GitHub Repository';

	/// en-US: 'Contact via Email'
	String get email => 'Contact via Email';
}

// Path: settings.groups.general.items.language
class TranslationsSettingsGroupsGeneralItemsLanguageEnUs {
	TranslationsSettingsGroupsGeneralItemsLanguageEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Language'
	String get label => 'Language';
}

// Path: settings.groups.general.items.themeColor
class TranslationsSettingsGroupsGeneralItemsThemeColorEnUs {
	TranslationsSettingsGroupsGeneralItemsThemeColorEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Theme Color'
	String get label => 'Theme Color';

	Map<String, String> get options => {
		'graphite': 'Graphite',
		'everflame': 'Everflame',
		'abyssal': 'Abyssal',
		'verdant': 'Verdant',
		'earthen': 'Earthen',
		'twilight': 'Twilight',
	};
}

// Path: settings.groups.general.items.themeMode
class TranslationsSettingsGroupsGeneralItemsThemeModeEnUs {
	TranslationsSettingsGroupsGeneralItemsThemeModeEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Theme Mode'
	String get label => 'Theme Mode';

	Map<String, String> get options => {
		'light': 'Light Mode',
		'dark': 'Dark Mode',
		'system': 'Sync with System',
	};
}

// Path: settings.groups.pomodoro.items.durations
class TranslationsSettingsGroupsPomodoroItemsDurationsEnUs {
	TranslationsSettingsGroupsPomodoroItemsDurationsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Durations'
	String get label => 'Durations';

	late final TranslationsSettingsGroupsPomodoroItemsDurationsFieldsEnUs fields = TranslationsSettingsGroupsPomodoroItemsDurationsFieldsEnUs.internal(_root);
}

// Path: settings.groups.pomodoro.items.longBreakInterval
class TranslationsSettingsGroupsPomodoroItemsLongBreakIntervalEnUs {
	TranslationsSettingsGroupsPomodoroItemsLongBreakIntervalEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Long Break Interval'
	String get label => 'Long Break Interval';

	/// en-US: '(one) {Long Break After $n cycle} (other) {Long Break After $n cycles}'
	String description({required num n}) => (_root.$meta.cardinalResolver ?? PluralResolvers.cardinal('en'))(n,
		one: 'Long Break After ${n} cycle',
		other: 'Long Break After ${n} cycles',
	);
}

// Path: settings.groups.pomodoro.items.autoStartPhases
class TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesEnUs {
	TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Automatically Start Next Phase'
	String get label => 'Automatically Start Next Phase';

	Map<String, dynamic> get options => {
		'always': TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsAlwaysEnUs.internal(_root),
		'onNaturalCompletion': TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsOnNaturalCompletionEnUs.internal(_root),
		'never': TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsNeverEnUs.internal(_root),
	};
}

// Path: settings.groups.pomodoro.items.style
class TranslationsSettingsGroupsPomodoroItemsStyleEnUs {
	TranslationsSettingsGroupsPomodoroItemsStyleEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Style'
	String get label => 'Style';

	Map<String, String> get options => {
		'currentTime': 'Current Time',
		'countdownTimer': 'Countdown Timer',
		'progressBar': 'Progress Bar',
		'breathingBall': 'Breathing Ball',
		'blank': 'Blank',
	};
}

// Path: settings.groups.pomodoro.items.durations.fields
class TranslationsSettingsGroupsPomodoroItemsDurationsFieldsEnUs {
	TranslationsSettingsGroupsPomodoroItemsDurationsFieldsEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Focus Duration'
	String get focus => 'Focus Duration';

	/// en-US: 'Short Break Duration'
	String get shortBreak => 'Short Break Duration';

	/// en-US: 'Long Break Duration'
	String get longBreak => 'Long Break Duration';
}

// Path: settings.groups.pomodoro.items.autoStartPhases.options.always
class TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsAlwaysEnUs {
	TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsAlwaysEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Always'
	String get label => 'Always';

	/// en-US: 'Automatically start the next phase, whether the current one finishes naturally or is manually actioned (e.g., "Skip Phase").'
	String get description => 'Automatically start the next phase, whether the current one finishes naturally or is manually actioned (e.g., "Skip Phase").';
}

// Path: settings.groups.pomodoro.items.autoStartPhases.options.onNaturalCompletion
class TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsOnNaturalCompletionEnUs {
	TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsOnNaturalCompletionEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'On Natural Completion'
	String get label => 'On Natural Completion';

	/// en-US: 'Automatically start the next phase ONLY when the timer completes naturally. Manual actions like "Skip Phase" or "Reset Phase" will require a manual start.'
	String get description => 'Automatically start the next phase ONLY when the timer completes naturally. Manual actions like "Skip Phase" or "Reset Phase" will require a manual start.';
}

// Path: settings.groups.pomodoro.items.autoStartPhases.options.never
class TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsNeverEnUs {
	TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsNeverEnUs.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en-US: 'Never'
	String get label => 'Never';

	/// en-US: 'Always require a manual start for the next phase. Not recommended!'
	String get description => 'Always require a manual start for the next phase. Not recommended!';
}
