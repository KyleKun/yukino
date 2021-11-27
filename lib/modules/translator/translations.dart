import 'package:flutter/material.dart';
import 'package:utilx/utilities/locale.dart';

abstract class TranslationSentences {
  Locale get locale;
  TextDirection get textDirection => TextDirection.ltr;

  String home();
  String search();
  String settings();
  String episodes();
  String episode();
  String noValidSources();
  String prohibitedPage();
  String selectPlugin();
  String searchInPlugin(final String plugin);
  String enterToSearch();
  String noResultsFound();
  String failedToGetResults();
  String preferences();
  String landscapeVideoPlayer();
  String landscapeVideoPlayerDetail();
  String theme();
  String systemPreferredTheme();
  String defaultTheme();
  String darkMode();
  String close();
  String back();
  String of();
  String chooseTheme();
  String language();
  String chooseLanguage();
  String anime();
  String manga();
  String chapters();
  String volumes();
  String chapter();
  String volume();
  String page();
  String noPagesFound();
  String vol();
  String ch();
  String mangaReaderDirection();
  String horizontal();
  String vertical();
  String mangaReaderSwipeDirection();
  String leftToRight();
  String rightToLeft();
  String mangaReaderMode();
  String list();
  String previous();
  String next();
  String skipIntro();
  String skipIntroDuration();
  String seekDuration();
  String seconds();
  String autoPlay();
  String autoPlayDetail();
  String autoNext();
  String autoNextDetail();
  String speed();
  String doubleTapToSwitchChapter();
  String doubleTapToSwitchChapterDetail();
  String tapAgainToSwitchPreviousChapter();
  String tapAgainToSwitchNextChapter();
  String selectSource();
  String sources();
  String refetch();
  String anilist();
  String authenticating();
  String successfullyAuthenticated();
  String autoAnimeFullscreen();
  String autoAnimeFullscreenDetail();
  String autoMangaFullscreen();
  String autoMangaFullscreenDetail();
  String authenticationFailed();
  String connections();
  String logIn();
  String view();
  String logOut();
  String nothingWasFoundHere();
  String progress();
  String finishedOf(final int progress, final int? total);
  String startedOn();
  String completedOn();
  String edit();
  String vols();
  String editing();
  String save();
  String status();
  String noOfEpisodes();
  String noOfChapters();
  String noOfVolumes();
  String score();
  String repeat();
  String characters();
  String play();
  String computedAs();
  String notThis();
  String selectAnAnime();
  String read();
  String animeSyncPercent();
  String extensions();
  String install();
  String uninstall();
  String installing();
  String uninstalling();
  String installed();
  String by();
  String cancel();
  String version();
  String topAnimes();
  String recentlyUpdated();
  String recommendedBy(final String by);
  String seasonalAnimes();
  String selectAPluginToGetResults();
  String initializing();
  String downloadingVersion(
    final String version,
    final String downloaded,
    final String total,
    final String percent,
  );
  String unpackingVersion(final String version);
  String restartingApp();
  String checkingForUpdates();
  String updatingToVersion(final String version);
  String failedToUpdate(final String err);
  String startingApp();
  String myAnimeList();
  String episodesWatched();
  String chaptersRead();
  String volumesCompleted();
  String nsfw();
  String restartAppForChangesToTakeEffect();
  String copyError();
  String somethingWentWrong();
  String unknownExtension(final String name);
  String about();
  String copyLogsToClipboard();
  String copiedLogsToClipboard();
  String github();
  String patreon();
  String website();
  String wiki();
  String discord();
  String developers();
  String reportABug();
  String disableAnimations();
  String keyboardShortcuts();
  String waitingForKeyStrokes();
  String playPause();
  String fullscreen();
  String seekBackward();
  String seekForward();
  String goBack();
  String previousEpisode();
  String nextEpisode();
  String ignoreBadHttpSslCertificates();
  String copiedErrorToClipboard();
  String noMoreChaptersLeft();
}
