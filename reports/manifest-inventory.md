# Manifest inventory

- package: `com.deepseek.chat`
- versionName: `2.6.0`
- versionCode: `277`
- minSdk: `23` (verified with `aapt dump badging`)
- targetSdk: `36` (verified with `aapt dump badging`)

## Permissions

- `android.permission.INTERNET`
- `android.permission.FOREGROUND_SERVICE_MEDIA_PLAYBACK`
- `android.permission.POST_NOTIFICATIONS`
- `android.permission.ACCESS_NETWORK_STATE`
- `android.permission.ACCESS_WIFI_STATE`
- `android.permission.CHANGE_NETWORK_STATE`
- `android.permission.CHANGE_WIFI_STATE`
- `android.permission.CAMERA`
- `android.permission.READ_MEDIA_IMAGES`
- `android.permission.READ_MEDIA_VISUAL_USER_SELECTED`
- `android.permission.READ_EXTERNAL_STORAGE`
- `android.permission.WRITE_EXTERNAL_STORAGE`
- `android.permission.RECORD_AUDIO`
- `android.permission.MODIFY_AUDIO_SETTINGS`
- `android.permission.BLUETOOTH`
- `android.permission.BLUETOOTH_CONNECT`
- `android.permission.FOREGROUND_SERVICE_MICROPHONE`
- `android.permission.POST_PROMOTED_NOTIFICATIONS`
- `android.permission.FOREGROUND_SERVICE`
- `com.deepseek.chat.DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION`
- `com.oplus.ocs.permission.third`
- `com.asus.msa.SupplementaryDID.ACCESS`
- `android.permission.FOREGROUND_SERVICE_MEDIA_PROJECTION`

## Activities

- `com.deepseek.chat.wxapi.WXEntryActivity` exported=true launchMode=singleTask theme=@style/TranslucentStyle
- `com.deepseek.chat.MainActivity` exported=true launchMode=singleTask theme=@style/Theme.DeepSeek
- `com.deepseek.chat.ShareProxyActivity` exported=true launchMode=None theme=@android:style/Theme.NoDisplay
- `com.deepseek.chat.ui.pages.table.TablePreviewActivity` exported=None launchMode=None theme=@style/Theme.DeepSeek
- `cn.fly.id.NFlyIDSYActivity` exported=false launchMode=None theme=@android:style/Theme.Translucent.NoTitleBar.Fullscreen
- `androidx.credentials.playservices.HiddenActivity` exported=false launchMode=None theme=@style/Theme.Hidden
- `com.google.android.gms.auth.api.signin.internal.SignInHubActivity` exported=false launchMode=None theme=@android:style/Theme.Translucent.NoTitleBar
- `com.google.android.gms.common.api.GoogleApiActivity` exported=false launchMode=None theme=@android:style/Theme.Translucent.NoTitleBar
- `com.bytedance.applog.migrate.MigrateDetectorActivity` exported=false launchMode=None theme=None
- `com.tencent.liteav.audio2.permission.PermissionActivity` exported=None launchMode=None theme=@android:style/Theme.Translucent
- `com.tencent.rtmp.video.TXScreenCapture$TXScreenCaptureAssistantActivity` exported=None launchMode=None theme=@android:style/Theme.Translucent

## Services

- `com.deepseek.chat.services.tile.OpenChatTileService` exported=true enabled=None fgType=None
- `com.deepseek.chat.services.tile.CameraAskTileService` exported=true enabled=None fgType=None
- `com.deepseek.chat.services.tile.PictureAskTileService` exported=true enabled=None fgType=None
- `androidx.appcompat.app.AppLocalesMetadataHolderService` exported=false enabled=false fgType=None
- `com.deepseek.chat.services.foreground.media.MediaPlaybackForegroundService` exported=false enabled=None fgType=mediaPlayback
- `com.deepseek.feature.call.foreground.CallForegroundService` exported=false enabled=None fgType=mediaPlayback|microphone
- `androidx.camera.core.impl.MetadataHolderService` exported=false enabled=false fgType=None
- `androidx.credentials.playservices.CredentialProviderMetadataHolder` exported=false enabled=true fgType=None
- `com.google.android.gms.auth.api.signin.RevocationBoundService` exported=true enabled=None fgType=None
- `com.bytedance.apm6.traffic.TrafficTransportService` exported=false enabled=true fgType=None
- `com.tencent.rtmp.video.ScreenCaptureService` exported=false enabled=None fgType=mediaProjection

## Providers

- `com.deepseek.chat.system.AppFileProvider` authority=com.deepseek.chat.provider exported=false
- `cn.fly.FlyProvider` authority=com.deepseek.chat.cn.fly.FlyProvider exported=false
- `ru.noties.jlatexmath.JLatexMathInitProvider` authority=com.deepseek.chat.jlatexmathinitprovider exported=false
- `androidx.startup.InitializationProvider` authority=com.deepseek.chat.androidx-startup exported=false
- `com.bytedance.frameworks.core.apm.contentprovider.MonitorContentProvider` authority=com.deepseek.chat.apm exported=false

## Receivers

- `com.deepseek.chat.system.ShareResultReceiver` exported=true enabled=true
- `androidx.tracing.perfetto.TracingReceiver` exported=true enabled=true
- `androidx.tracing.perfetto.StartupTracingConfigStoreIsEnabledGate` exported=false enabled=false
- `androidx.profileinstaller.ProfileInstallReceiver` exported=true enabled=true
- `com.bytedance.applog.collector.Collector` exported=false enabled=true
