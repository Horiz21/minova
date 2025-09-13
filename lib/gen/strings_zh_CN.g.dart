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
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver);

	/// Metadata for the translations of <zh-CN>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

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
	@override String get updated => '2025-09-05';
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
	@override String get resetToDefault => '恢复默认值';
	@override String get minutes => '分钟';
	@override String get cycles => '轮次';
}

// Path: settings
class _TranslationsSettingsZhCn extends TranslationsSettingsEnUs {
	_TranslationsSettingsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '设置';
	@override late final _TranslationsSettingsGroupsZhCn groups = _TranslationsSettingsGroupsZhCn._(_root);
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
	@override Map<String, dynamic> get ambientSounds => {
		'rain': _TranslationsAssetsAmbientSoundsRainZhCn._(_root),
		'birdChirp': _TranslationsAssetsAmbientSoundsBirdChirpZhCn._(_root),
		'cricket': _TranslationsAssetsAmbientSoundsCricketZhCn._(_root),
		'owlHoot': _TranslationsAssetsAmbientSoundsOwlHootZhCn._(_root),
		'pencilWrite': _TranslationsAssetsAmbientSoundsPencilWriteZhCn._(_root),
		'thunder': _TranslationsAssetsAmbientSoundsThunderZhCn._(_root),
	};
}

// Path: settings.groups
class _TranslationsSettingsGroupsZhCn extends TranslationsSettingsGroupsEnUs {
	_TranslationsSettingsGroupsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSettingsGroupsGeneralZhCn general = _TranslationsSettingsGroupsGeneralZhCn._(_root);
	@override late final _TranslationsSettingsGroupsPomodoroZhCn pomodoro = _TranslationsSettingsGroupsPomodoroZhCn._(_root);
	@override late final _TranslationsSettingsGroupsAboutZhCn about = _TranslationsSettingsGroupsAboutZhCn._(_root);
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

// Path: settings.groups.general
class _TranslationsSettingsGroupsGeneralZhCn extends TranslationsSettingsGroupsGeneralEnUs {
	_TranslationsSettingsGroupsGeneralZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '通用';
	@override late final _TranslationsSettingsGroupsGeneralItemsZhCn items = _TranslationsSettingsGroupsGeneralItemsZhCn._(_root);
}

// Path: settings.groups.pomodoro
class _TranslationsSettingsGroupsPomodoroZhCn extends TranslationsSettingsGroupsPomodoroEnUs {
	_TranslationsSettingsGroupsPomodoroZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '番茄钟';
	@override late final _TranslationsSettingsGroupsPomodoroItemsZhCn items = _TranslationsSettingsGroupsPomodoroItemsZhCn._(_root);
}

// Path: settings.groups.about
class _TranslationsSettingsGroupsAboutZhCn extends TranslationsSettingsGroupsAboutEnUs {
	_TranslationsSettingsGroupsAboutZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '关于';
	@override late final _TranslationsSettingsGroupsAboutLinksZhCn links = _TranslationsSettingsGroupsAboutLinksZhCn._(_root);
}

// Path: settings.groups.general.items
class _TranslationsSettingsGroupsGeneralItemsZhCn extends TranslationsSettingsGroupsGeneralItemsEnUs {
	_TranslationsSettingsGroupsGeneralItemsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSettingsGroupsGeneralItemsLanguageZhCn language = _TranslationsSettingsGroupsGeneralItemsLanguageZhCn._(_root);
	@override late final _TranslationsSettingsGroupsGeneralItemsThemeColorZhCn themeColor = _TranslationsSettingsGroupsGeneralItemsThemeColorZhCn._(_root);
	@override late final _TranslationsSettingsGroupsGeneralItemsThemeModeZhCn themeMode = _TranslationsSettingsGroupsGeneralItemsThemeModeZhCn._(_root);
}

// Path: settings.groups.pomodoro.items
class _TranslationsSettingsGroupsPomodoroItemsZhCn extends TranslationsSettingsGroupsPomodoroItemsEnUs {
	_TranslationsSettingsGroupsPomodoroItemsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSettingsGroupsPomodoroItemsDurationsZhCn durations = _TranslationsSettingsGroupsPomodoroItemsDurationsZhCn._(_root);
	@override late final _TranslationsSettingsGroupsPomodoroItemsLongBreakIntervalZhCn longBreakInterval = _TranslationsSettingsGroupsPomodoroItemsLongBreakIntervalZhCn._(_root);
	@override late final _TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesZhCn autoStartPhases = _TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesZhCn._(_root);
	@override late final _TranslationsSettingsGroupsPomodoroItemsStyleZhCn style = _TranslationsSettingsGroupsPomodoroItemsStyleZhCn._(_root);
}

// Path: settings.groups.about.links
class _TranslationsSettingsGroupsAboutLinksZhCn extends TranslationsSettingsGroupsAboutLinksEnUs {
	_TranslationsSettingsGroupsAboutLinksZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get page => '项目主页';
	@override String get gitHub => 'GitHub 仓库';
	@override String get email => '联系邮箱';
}

// Path: settings.groups.general.items.language
class _TranslationsSettingsGroupsGeneralItemsLanguageZhCn extends TranslationsSettingsGroupsGeneralItemsLanguageEnUs {
	_TranslationsSettingsGroupsGeneralItemsLanguageZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '语言';
}

// Path: settings.groups.general.items.themeColor
class _TranslationsSettingsGroupsGeneralItemsThemeColorZhCn extends TranslationsSettingsGroupsGeneralItemsThemeColorEnUs {
	_TranslationsSettingsGroupsGeneralItemsThemeColorZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '主题颜色';
	@override Map<String, String> get options => {
		'graphite': '石墨',
		'everflame': '永昼',
		'abyssal': '鲸落',
		'verdant': '苍苔',
		'earthen': '沉香',
		'twilight': '暮色',
	};
}

// Path: settings.groups.general.items.themeMode
class _TranslationsSettingsGroupsGeneralItemsThemeModeZhCn extends TranslationsSettingsGroupsGeneralItemsThemeModeEnUs {
	_TranslationsSettingsGroupsGeneralItemsThemeModeZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '主题模式';
	@override Map<String, String> get options => {
		'light': '浅色模式',
		'dark': '深色模式',
		'system': '同步系统',
	};
}

// Path: settings.groups.pomodoro.items.durations
class _TranslationsSettingsGroupsPomodoroItemsDurationsZhCn extends TranslationsSettingsGroupsPomodoroItemsDurationsEnUs {
	_TranslationsSettingsGroupsPomodoroItemsDurationsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '时长设置';
	@override late final _TranslationsSettingsGroupsPomodoroItemsDurationsFieldsZhCn fields = _TranslationsSettingsGroupsPomodoroItemsDurationsFieldsZhCn._(_root);
}

// Path: settings.groups.pomodoro.items.longBreakInterval
class _TranslationsSettingsGroupsPomodoroItemsLongBreakIntervalZhCn extends TranslationsSettingsGroupsPomodoroItemsLongBreakIntervalEnUs {
	_TranslationsSettingsGroupsPomodoroItemsLongBreakIntervalZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '长休息间隔';
	@override String description({required Object n}) => '每 ${n} 轮专注后进入长休息';
}

// Path: settings.groups.pomodoro.items.autoStartPhases
class _TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesZhCn extends TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesEnUs {
	_TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '自动开始下一阶段';
	@override Map<String, dynamic> get options => {
		'always': _TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsAlwaysZhCn._(_root),
		'onNaturalCompletion': _TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsOnNaturalCompletionZhCn._(_root),
		'never': _TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsNeverZhCn._(_root),
	};
}

// Path: settings.groups.pomodoro.items.style
class _TranslationsSettingsGroupsPomodoroItemsStyleZhCn extends TranslationsSettingsGroupsPomodoroItemsStyleEnUs {
	_TranslationsSettingsGroupsPomodoroItemsStyleZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '番茄钟样式';
	@override Map<String, String> get options => {
		'currentTime': '当前时间',
		'countdownTimer': '倒计时',
		'progressBar': '进度环',
		'breathingBall': '呼吸球',
		'blank': '空白',
	};
}

// Path: settings.groups.pomodoro.items.durations.fields
class _TranslationsSettingsGroupsPomodoroItemsDurationsFieldsZhCn extends TranslationsSettingsGroupsPomodoroItemsDurationsFieldsEnUs {
	_TranslationsSettingsGroupsPomodoroItemsDurationsFieldsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get focus => '专注时长';
	@override String get shortBreak => '短休息时长';
	@override String get longBreak => '长休息时长';
}

// Path: settings.groups.pomodoro.items.autoStartPhases.options.always
class _TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsAlwaysZhCn extends TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsAlwaysEnUs {
	_TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsAlwaysZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '始终';
	@override String get description => '无论计时是自然结束还是手动操作，都将自动开始下一阶段。';
}

// Path: settings.groups.pomodoro.items.autoStartPhases.options.onNaturalCompletion
class _TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsOnNaturalCompletionZhCn extends TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsOnNaturalCompletionEnUs {
	_TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsOnNaturalCompletionZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '仅自然结束时';
	@override String get description => '仅当计时器自然走完时才自动开始下一阶段。手动操作（如跳过或重置阶段）后需手动开始。';
}

// Path: settings.groups.pomodoro.items.autoStartPhases.options.never
class _TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsNeverZhCn extends TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsNeverEnUs {
	_TranslationsSettingsGroupsPomodoroItemsAutoStartPhasesOptionsNeverZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get label => '从不';
	@override String get description => '在任何情况下都需要手动开始下一阶段。不推荐。';
}
