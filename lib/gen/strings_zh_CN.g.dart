///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsZhCn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZhCn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.zhCn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-CN>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsZhCn _root = this; // ignore: unused_field

	@override 
	TranslationsZhCn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsZhCn(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsMetaZhCn meta = _TranslationsMetaZhCn._(_root);
	@override late final _TranslationsAppZhCn app = _TranslationsAppZhCn._(_root);
	@override late final _TranslationsCommonZhCn common = _TranslationsCommonZhCn._(_root);
	@override late final _TranslationsSettingsZhCn settings = _TranslationsSettingsZhCn._(_root);
	@override late final _TranslationsPomodoroZhCn pomodoro = _TranslationsPomodoroZhCn._(_root);
	@override late final _TranslationsMusicPlayerZhCn musicPlayer = _TranslationsMusicPlayerZhCn._(_root);
	@override late final _TranslationsSoundMixerZhCn soundMixer = _TranslationsSoundMixerZhCn._(_root);
	@override late final _TranslationsAssetsZhCn assets = _TranslationsAssetsZhCn._(_root);
}

// Path: meta
class _TranslationsMetaZhCn extends TranslationsMetaEnUs {
	_TranslationsMetaZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get languageName => '中文';
	@override String get regionName => '中国大陆';
	@override String get created => '2025-07-15';
	@override String get updated => '2025-08-30';
}

// Path: app
class _TranslationsAppZhCn extends TranslationsAppEnUs {
	_TranslationsAppZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Minova';
	@override String get slogan => 'Live min, think max.';
}

// Path: common
class _TranslationsCommonZhCn extends TranslationsCommonEnUs {
	_TranslationsCommonZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get save => '保存';
	@override String get cancel => '取消';
	@override String get close => '关闭';
	@override String get success => '成功';
	@override String get failed => '失败';
}

// Path: settings
class _TranslationsSettingsZhCn extends TranslationsSettingsEnUs {
	_TranslationsSettingsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '设置';
	@override late final _TranslationsSettingsLanguageZhCn language = _TranslationsSettingsLanguageZhCn._(_root);
	@override late final _TranslationsSettingsThemeModeZhCn themeMode = _TranslationsSettingsThemeModeZhCn._(_root);
	@override late final _TranslationsSettingsThemeZhCn theme = _TranslationsSettingsThemeZhCn._(_root);
	@override late final _TranslationsSettingsPomodoroAppearanceZhCn pomodoroAppearance = _TranslationsSettingsPomodoroAppearanceZhCn._(_root);
	@override late final _TranslationsSettingsAboutZhCn about = _TranslationsSettingsAboutZhCn._(_root);
}

// Path: pomodoro
class _TranslationsPomodoroZhCn extends TranslationsPomodoroEnUs {
	_TranslationsPomodoroZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '番茄钟';
	@override late final _TranslationsPomodoroControlsZhCn controls = _TranslationsPomodoroControlsZhCn._(_root);
	@override late final _TranslationsPomodoroPhasesZhCn phases = _TranslationsPomodoroPhasesZhCn._(_root);
}

// Path: musicPlayer
class _TranslationsMusicPlayerZhCn extends TranslationsMusicPlayerEnUs {
	_TranslationsMusicPlayerZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '音乐播放器';
	@override late final _TranslationsMusicPlayerControlsZhCn controls = _TranslationsMusicPlayerControlsZhCn._(_root);
}

// Path: soundMixer
class _TranslationsSoundMixerZhCn extends TranslationsSoundMixerEnUs {
	_TranslationsSoundMixerZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '音效混合器';
}

// Path: assets
class _TranslationsAssetsZhCn extends TranslationsAssetsEnUs {
	_TranslationsAssetsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAssetsAmbientSoundsZhCn ambientSounds = _TranslationsAssetsAmbientSoundsZhCn._(_root);
}

// Path: settings.language
class _TranslationsSettingsLanguageZhCn extends TranslationsSettingsLanguageEnUs {
	_TranslationsSettingsLanguageZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '语言';
}

// Path: settings.themeMode
class _TranslationsSettingsThemeModeZhCn extends TranslationsSettingsThemeModeEnUs {
	_TranslationsSettingsThemeModeZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '主题模式';
	@override String get light => '浅色模式';
	@override String get dark => '深色模式';
	@override String get system => '跟随系统';
}

// Path: settings.theme
class _TranslationsSettingsThemeZhCn extends TranslationsSettingsThemeEnUs {
	_TranslationsSettingsThemeZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '主题';
}

// Path: settings.pomodoroAppearance
class _TranslationsSettingsPomodoroAppearanceZhCn extends TranslationsSettingsPomodoroAppearanceEnUs {
	_TranslationsSettingsPomodoroAppearanceZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '番茄钟外观';
	@override String get currentTime => '当前时间';
	@override String get countdownTimer => '倒计时';
	@override String get progressBar => '进度环';
	@override String get breathingBall => '呼吸球';
}

// Path: settings.about
class _TranslationsSettingsAboutZhCn extends TranslationsSettingsAboutEnUs {
	_TranslationsSettingsAboutZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '关于';
	@override String get page => '项目页面';
	@override String get gitHub => 'GitHub 仓库';
	@override String get email => '联系邮箱';
}

// Path: pomodoro.controls
class _TranslationsPomodoroControlsZhCn extends TranslationsPomodoroControlsEnUs {
	_TranslationsPomodoroControlsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get start => '开始';
	@override String get pause => '暂停';
	@override String get resume => '继续';
	@override String get stop => '终止';
	@override String get skipPhase => '跳过本阶段';
	@override String get resetPhase => '重置本阶段';
}

// Path: pomodoro.phases
class _TranslationsPomodoroPhasesZhCn extends TranslationsPomodoroPhasesEnUs {
	_TranslationsPomodoroPhasesZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get focus => '专注';
	@override String get kBreak => '休息';
	@override String get shortBreak => '短休息';
	@override String get longBreak => '长休息';
}

// Path: musicPlayer.controls
class _TranslationsMusicPlayerControlsZhCn extends TranslationsMusicPlayerControlsEnUs {
	_TranslationsMusicPlayerControlsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get play => '播放';
	@override String get pause => '暂停';
	@override String get previous => '上一首';
	@override String get next => '下一首';
}

// Path: assets.ambientSounds
class _TranslationsAssetsAmbientSoundsZhCn extends TranslationsAssetsAmbientSoundsEnUs {
	_TranslationsAssetsAmbientSoundsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAssetsAmbientSoundsRainZhCn rain = _TranslationsAssetsAmbientSoundsRainZhCn._(_root);
	@override late final _TranslationsAssetsAmbientSoundsBirdChirpZhCn birdChirp = _TranslationsAssetsAmbientSoundsBirdChirpZhCn._(_root);
	@override late final _TranslationsAssetsAmbientSoundsCricketZhCn cricket = _TranslationsAssetsAmbientSoundsCricketZhCn._(_root);
	@override late final _TranslationsAssetsAmbientSoundsOwlHootZhCn owlHoot = _TranslationsAssetsAmbientSoundsOwlHootZhCn._(_root);
	@override late final _TranslationsAssetsAmbientSoundsPencilWriteZhCn pencilWrite = _TranslationsAssetsAmbientSoundsPencilWriteZhCn._(_root);
	@override late final _TranslationsAssetsAmbientSoundsThunderZhCn thunder = _TranslationsAssetsAmbientSoundsThunderZhCn._(_root);
}

// Path: assets.ambientSounds.rain
class _TranslationsAssetsAmbientSoundsRainZhCn extends TranslationsAssetsAmbientSoundsRainEnUs {
	_TranslationsAssetsAmbientSoundsRainZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '雨声';
}

// Path: assets.ambientSounds.birdChirp
class _TranslationsAssetsAmbientSoundsBirdChirpZhCn extends TranslationsAssetsAmbientSoundsBirdChirpEnUs {
	_TranslationsAssetsAmbientSoundsBirdChirpZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '鸟鸣';
}

// Path: assets.ambientSounds.cricket
class _TranslationsAssetsAmbientSoundsCricketZhCn extends TranslationsAssetsAmbientSoundsCricketEnUs {
	_TranslationsAssetsAmbientSoundsCricketZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '蟋蟀';
}

// Path: assets.ambientSounds.owlHoot
class _TranslationsAssetsAmbientSoundsOwlHootZhCn extends TranslationsAssetsAmbientSoundsOwlHootEnUs {
	_TranslationsAssetsAmbientSoundsOwlHootZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '猫头鹰';
}

// Path: assets.ambientSounds.pencilWrite
class _TranslationsAssetsAmbientSoundsPencilWriteZhCn extends TranslationsAssetsAmbientSoundsPencilWriteEnUs {
	_TranslationsAssetsAmbientSoundsPencilWriteZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '铅笔书写';
}

// Path: assets.ambientSounds.thunder
class _TranslationsAssetsAmbientSoundsThunderZhCn extends TranslationsAssetsAmbientSoundsThunderEnUs {
	_TranslationsAssetsAmbientSoundsThunderZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '雷声';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsZhCn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'meta.languageName': return '中文';
			case 'meta.regionName': return '中国大陆';
			case 'meta.created': return '2025-07-15';
			case 'meta.updated': return '2025-08-30';
			case 'app.title': return 'Minova';
			case 'app.slogan': return 'Live min, think max.';
			case 'common.save': return '保存';
			case 'common.cancel': return '取消';
			case 'common.close': return '关闭';
			case 'common.success': return '成功';
			case 'common.failed': return '失败';
			case 'settings.title': return '设置';
			case 'settings.language.title': return '语言';
			case 'settings.themeMode.title': return '主题模式';
			case 'settings.themeMode.light': return '浅色模式';
			case 'settings.themeMode.dark': return '深色模式';
			case 'settings.themeMode.system': return '跟随系统';
			case 'settings.theme.title': return '主题';
			case 'settings.pomodoroAppearance.title': return '番茄钟外观';
			case 'settings.pomodoroAppearance.currentTime': return '当前时间';
			case 'settings.pomodoroAppearance.countdownTimer': return '倒计时';
			case 'settings.pomodoroAppearance.progressBar': return '进度环';
			case 'settings.pomodoroAppearance.breathingBall': return '呼吸球';
			case 'settings.about.title': return '关于';
			case 'settings.about.page': return '项目页面';
			case 'settings.about.gitHub': return 'GitHub 仓库';
			case 'settings.about.email': return '联系邮箱';
			case 'pomodoro.title': return '番茄钟';
			case 'pomodoro.controls.start': return '开始';
			case 'pomodoro.controls.pause': return '暂停';
			case 'pomodoro.controls.resume': return '继续';
			case 'pomodoro.controls.stop': return '终止';
			case 'pomodoro.controls.skipPhase': return '跳过本阶段';
			case 'pomodoro.controls.resetPhase': return '重置本阶段';
			case 'pomodoro.phases.focus': return '专注';
			case 'pomodoro.phases.kBreak': return '休息';
			case 'pomodoro.phases.shortBreak': return '短休息';
			case 'pomodoro.phases.longBreak': return '长休息';
			case 'musicPlayer.title': return '音乐播放器';
			case 'musicPlayer.controls.play': return '播放';
			case 'musicPlayer.controls.pause': return '暂停';
			case 'musicPlayer.controls.previous': return '上一首';
			case 'musicPlayer.controls.next': return '下一首';
			case 'soundMixer.title': return '音效混合器';
			case 'assets.ambientSounds.rain.title': return '雨声';
			case 'assets.ambientSounds.birdChirp.title': return '鸟鸣';
			case 'assets.ambientSounds.cricket.title': return '蟋蟀';
			case 'assets.ambientSounds.owlHoot.title': return '猫头鹰';
			case 'assets.ambientSounds.pencilWrite.title': return '铅笔书写';
			case 'assets.ambientSounds.thunder.title': return '雷声';
			default: return null;
		}
	}
}

