.class abstract Lo/saveData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/saveData$extraCallback;,
        Lo/saveData$onNavigationEvent;
    }
.end annotation


# static fields
.field public static final AudioAttributesCompatParcelizer:I

.field public static final AudioAttributesImplApi21Parcelizer:I

.field public static final AudioAttributesImplBaseParcelizer:I

.field public static final ICustomTabsCallback:I

.field public static final ICustomTabsCallback$Stub:I

.field public static final ICustomTabsCallback$Stub$Proxy:I

.field public static final ICustomTabsService:I

.field public static final ICustomTabsService$Stub:I

.field public static final ICustomTabsService$Stub$Proxy:I

.field public static final INotificationSideChannel:I

.field public static final INotificationSideChannel$Default:I

.field public static final INotificationSideChannel$Stub:I

.field public static final INotificationSideChannel$Stub$Proxy:I

.field public static final IPostMessageService:I

.field public static final IPostMessageService$Stub:I

.field public static final IPostMessageService$Stub$Proxy:I

.field public static final IconCompatParcelizer:I

.field public static final MediaBrowserCompat:I

.field public static final MediaBrowserCompat$CallbackHandler:I

.field public static final MediaBrowserCompat$ConnectionCallback:I

.field public static final MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:I

.field public static final MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:I

.field public static final MediaBrowserCompat$CustomActionCallback:I

.field public static final MediaBrowserCompat$CustomActionResultReceiver:I

.field public static final MediaBrowserCompat$ItemCallback:I

.field public static final MediaBrowserCompat$ItemCallback$ItemCallbackApi23:I

.field public static final MediaBrowserCompat$ItemReceiver:I

.field public static final MediaBrowserCompat$MediaBrowserImpl:I

.field public static final MediaBrowserCompat$MediaBrowserImplApi21:I

.field public static final MediaBrowserCompat$MediaBrowserImplApi21$1:I

.field public static final MediaBrowserCompat$MediaBrowserImplApi21$2:I

.field public static final MediaBrowserCompat$MediaBrowserImplApi21$3:I

.field public static final MediaBrowserCompat$MediaBrowserImplApi21$4:I

.field public static final MediaBrowserCompat$MediaBrowserImplApi21$5:I

.field public static final MediaBrowserCompat$MediaBrowserImplApi21$6:I

.field public static final MediaBrowserCompat$MediaBrowserImplApi21$7:I

.field public static final MediaBrowserCompat$MediaBrowserImplApi23:I

.field public static final MediaBrowserCompat$MediaBrowserImplApi26:I

.field public static final MediaBrowserCompat$MediaBrowserImplBase:I

.field public static final MediaBrowserCompat$MediaBrowserImplBase$1:I

.field public static final MediaBrowserCompat$MediaBrowserImplBase$2:I

.field public static final MediaBrowserCompat$MediaBrowserImplBase$3:I

.field public static final MediaBrowserCompat$MediaBrowserImplBase$4:I

.field public static final MediaBrowserCompat$MediaBrowserImplBase$5:I

.field public static final MediaBrowserCompat$MediaBrowserImplBase$6:I

.field public static final MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection:I

.field public static final MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1:I

.field public static final MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2:I

.field public static final MediaBrowserCompat$MediaBrowserServiceCallbackImpl:I

.field public static final MediaBrowserCompat$MediaItem:I

.field public static final RemoteActionCompatParcelizer:I

.field public static final asBinder:I

.field public static final asInterface:I

.field public static final cancel:I

.field public static final cancelAll:I

.field public static final connect:I

.field public static final disconnect:I

.field public static final dump:I

.field public static final extraCallback:I

.field public static final extraCommand:I

.field public static final forceCloseConnection:I

.field public static final fromMediaItem:I

.field public static final fromMediaItemList:I

.field public static final getDefaultImpl:I

.field public static final getExtras:I

.field public static final getInterfaceDescriptor:I

.field public static final getItem:I

.field public static final getNotifyChildrenChangedOptions:I

.field public static final getRoot:I

.field public static final getServiceComponent:I

.field public static final getSessionToken:I

.field public static final getStateLabel:I

.field public static final handleMessage:I

.field public static final isConnected:I

.field public static final isCurrent:I

.field public static final mayLaunchUrl:I

.field public static final newSession:I

.field public static final notify:I

.field public static final onConnected:I

.field public static final onConnectionFailed:I

.field public static final onConnectionSuspended:I

.field public static final onError:I

.field public static final onItemLoaded:I

.field public static final onLoadChildren:I

.field public static final onMessageChannelReady:I

.field public static final onNavigationEvent:I

.field public static final onPostMessage:I

.field public static final onProgressUpdate:I

.field public static final onReceiveResult:I

.field public static final onRelationshipValidationResult:I

.field public static final onResult:I

.field public static final onServiceConnected:I

.field public static final onServiceDisconnected:I

.field public static final onTransact:I

.field public static final postMessage:I

.field public static final postOrRun:I

.field public static final read:I

.field public static final requestPostMessageChannel:I

.field public static final run:I

.field public static final search:I

.field public static final sendCustomAction:I

.field public static final setCallbacksMessenger:I

.field public static final setDefaultImpl:I

.field public static final setInternalConnectionCallback:I

.field public static final subscribe:I

.field public static final unsubscribe:I

.field public static final updateVisuals:I

.field public static final validateRelationship:I

.field public static final warmup:I

.field public static final write:I


# instance fields
.field public final writeToParcel:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ftyp"

    .line 54
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->onNavigationEvent:I

    const-string v0, "avc1"

    .line 57
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->extraCallback:I

    const-string v0, "avc3"

    .line 60
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->onPostMessage:I

    const-string v0, "avcC"

    .line 63
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->ICustomTabsCallback:I

    const-string v0, "hvc1"

    .line 66
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->onMessageChannelReady:I

    const-string v0, "hev1"

    .line 69
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->onRelationshipValidationResult:I

    const-string v0, "hvcC"

    .line 72
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->onTransact:I

    const-string/jumbo v0, "vp08"

    .line 75
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->asBinder:I

    const-string/jumbo v0, "vp09"

    .line 78
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->asInterface:I

    const-string/jumbo v0, "vpcC"

    .line 81
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->ICustomTabsCallback$Stub:I

    const-string v0, "av01"

    .line 84
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->ICustomTabsService:I

    const-string v0, "av1C"

    .line 87
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->ICustomTabsCallback$Stub$Proxy:I

    const-string v0, "dvav"

    .line 90
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->warmup:I

    const-string v0, "dva1"

    .line 93
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->getInterfaceDescriptor:I

    const-string v0, "dvhe"

    .line 96
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->newSession:I

    const-string v0, "dvh1"

    .line 99
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->postMessage:I

    const-string v0, "dvcC"

    .line 102
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->extraCommand:I

    const-string v0, "dvvC"

    .line 105
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->mayLaunchUrl:I

    const-string/jumbo v0, "s263"

    .line 108
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->requestPostMessageChannel:I

    const-string v0, "d263"

    .line 111
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->updateVisuals:I

    const-string v0, "mdat"

    .line 114
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->validateRelationship:I

    const-string v0, "mp4a"

    .line 117
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->ICustomTabsService$Stub$Proxy:I

    const-string v0, ".mp3"

    .line 120
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->IPostMessageService:I

    const-string/jumbo v0, "wave"

    .line 123
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->IPostMessageService$Stub:I

    const-string v0, "lpcm"

    .line 126
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->ICustomTabsService$Stub:I

    const-string/jumbo v0, "sowt"

    .line 129
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->cancelAll:I

    const-string v0, "ac-3"

    .line 132
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->IPostMessageService$Stub$Proxy:I

    const-string v0, "dac3"

    .line 135
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->notify:I

    const-string v0, "ec-3"

    .line 138
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->cancel:I

    const-string v0, "dec3"

    .line 141
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->INotificationSideChannel:I

    const-string v0, "ac-4"

    .line 144
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->INotificationSideChannel$Default:I

    const-string v0, "dac4"

    .line 147
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->getDefaultImpl:I

    const-string v0, "dtsc"

    .line 150
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->INotificationSideChannel$Stub$Proxy:I

    const-string v0, "dtsh"

    .line 153
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->INotificationSideChannel$Stub:I

    const-string v0, "dtsl"

    .line 156
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->setDefaultImpl:I

    const-string v0, "dtse"

    .line 159
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->write:I

    const-string v0, "ddts"

    .line 162
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->read:I

    const-string/jumbo v0, "tfdt"

    .line 165
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->RemoteActionCompatParcelizer:I

    const-string/jumbo v0, "tfhd"

    .line 168
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->AudioAttributesCompatParcelizer:I

    const-string/jumbo v0, "trex"

    .line 171
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->IconCompatParcelizer:I

    const-string/jumbo v0, "trun"

    .line 174
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat:I

    const-string/jumbo v0, "sidx"

    .line 177
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->AudioAttributesImplApi21Parcelizer:I

    const-string v0, "moov"

    .line 180
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->connect:I

    const-string v0, "mvhd"

    .line 183
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->disconnect:I

    const-string/jumbo v0, "trak"

    .line 186
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->AudioAttributesImplBaseParcelizer:I

    const-string v0, "mdia"

    .line 189
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->getServiceComponent:I

    const-string v0, "minf"

    .line 192
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->getSessionToken:I

    const-string/jumbo v0, "stbl"

    .line 195
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->getExtras:I

    const-string v0, "esds"

    .line 198
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->isConnected:I

    const-string v0, "moof"

    .line 201
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->getRoot:I

    const-string/jumbo v0, "traf"

    .line 204
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->unsubscribe:I

    const-string v0, "mvex"

    .line 207
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->getItem:I

    const-string v0, "mehd"

    .line 210
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->sendCustomAction:I

    const-string/jumbo v0, "tkhd"

    .line 213
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->search:I

    const-string v0, "edts"

    .line 216
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->subscribe:I

    const-string v0, "elst"

    .line 219
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$CallbackHandler:I

    const-string v0, "mdhd"

    .line 222
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->setCallbacksMessenger:I

    const-string v0, "hdlr"

    .line 225
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$ConnectionCallback:I

    const-string/jumbo v0, "stsd"

    .line 228
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->handleMessage:I

    const-string v0, "pssh"

    .line 231
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->getNotifyChildrenChangedOptions:I

    const-string/jumbo v0, "sinf"

    .line 234
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->setInternalConnectionCallback:I

    const-string/jumbo v0, "schm"

    .line 237
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->onConnectionSuspended:I

    const-string/jumbo v0, "schi"

    .line 240
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:I

    const-string/jumbo v0, "tenc"

    .line 243
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->onConnectionFailed:I

    const-string v0, "encv"

    .line 246
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->onConnected:I

    const-string v0, "enca"

    .line 249
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$CustomActionCallback:I

    const-string v0, "frma"

    .line 252
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->onResult:I

    const-string/jumbo v0, "saiz"

    .line 255
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->onProgressUpdate:I

    const-string/jumbo v0, "saio"

    .line 258
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->onError:I

    const-string/jumbo v0, "sbgp"

    .line 261
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal:I

    const-string/jumbo v0, "sgpd"

    .line 264
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$ItemCallback$ItemCallbackApi23:I

    const-string/jumbo v0, "uuid"

    .line 267
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$CustomActionResultReceiver:I

    const-string/jumbo v0, "senc"

    .line 270
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->onItemLoaded:I

    const-string v0, "pasp"

    .line 273
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$ItemCallback:I

    const-string v0, "TTML"

    .line 276
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->onReceiveResult:I

    const-string/jumbo v0, "vmhd"

    .line 279
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->onServiceConnected:I

    const-string v0, "mp4v"

    .line 282
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->onLoadChildren:I

    const-string/jumbo v0, "stts"

    .line 285
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImpl:I

    const-string/jumbo v0, "stss"

    .line 288
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi21:I

    const-string v0, "ctts"

    .line 291
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$ItemReceiver:I

    const-string/jumbo v0, "stsc"

    .line 294
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi21$1:I

    const-string/jumbo v0, "stsz"

    .line 297
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi21$3:I

    const-string/jumbo v0, "stz2"

    .line 300
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->run:I

    const-string/jumbo v0, "stco"

    .line 303
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi21$4:I

    const-string v0, "co64"

    .line 306
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi21$2:I

    const-string/jumbo v0, "tx3g"

    .line 309
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi21$6:I

    const-string/jumbo v0, "wvtt"

    .line 312
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi23:I

    const-string/jumbo v0, "stpp"

    .line 315
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi21$5:I

    const-string v0, "c608"

    .line 318
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi26:I

    const-string/jumbo v0, "samr"

    .line 321
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplApi21$7:I

    const-string/jumbo v0, "sawb"

    .line 324
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase:I

    const-string/jumbo v0, "udta"

    .line 327
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->getStateLabel:I

    const-string v0, "meta"

    .line 330
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->forceCloseConnection:I

    const-string v0, "keys"

    .line 333
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->dump:I

    const-string v0, "ilst"

    .line 336
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->isCurrent:I

    const-string v0, "mean"

    .line 339
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$3:I

    const-string v0, "name"

    .line 342
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$4:I

    const-string v0, "data"

    .line 345
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$2:I

    const-string v0, "emsg"

    .line 348
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$5:I

    const-string/jumbo v0, "st3d"

    .line 351
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$1:I

    const-string/jumbo v0, "sv3d"

    .line 354
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->postOrRun:I

    const-string v0, "proj"

    .line 357
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$1:I

    const-string v0, "camm"

    .line 360
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->onServiceDisconnected:I

    const-string v0, "alac"

    .line 363
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$6:I

    const-string v0, "alaw"

    .line 366
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection:I

    const-string/jumbo v0, "ulaw"

    .line 369
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaItem:I

    const-string v0, "Opus"

    .line 372
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection$2:I

    const-string v0, "dOps"

    .line 375
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->MediaBrowserCompat$MediaBrowserServiceCallbackImpl:I

    const-string v0, "fLaC"

    .line 378
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->fromMediaItemList:I

    const-string v0, "dfLa"

    .line 381
    invoke-static {v0}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback$Stub(Ljava/lang/String;)I

    move-result v0

    sput v0, Lo/saveData;->fromMediaItem:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput p1, p0, Lo/saveData;->writeToParcel:I

    return-void
.end method

.method public static extraCallback(I)I
    .locals 1

    const v0, 0xffffff

    and-int/2addr p0, v0

    return p0
.end method

.method public static onMessageChannelReady(I)Ljava/lang/String;
    .locals 2

    .line 548
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    ushr-int/lit8 v1, p0, 0x18

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x18

    and-int/lit16 p0, p0, 0xff

    return p0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 391
    iget v0, p0, Lo/saveData;->writeToParcel:I

    invoke-static {v0}, Lo/saveData;->onMessageChannelReady(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
