.class public final Lo/context;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/context$extraCallback;,
        Lo/context$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static getDefaultImpl:Lo/context$ICustomTabsCallback;


# instance fields
.field final ICustomTabsCallback:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Lo/getLayoutInflater$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field final ICustomTabsCallback$Stub:Lo/AFEvent;

.field final ICustomTabsCallback$Stub$Proxy:Lo/isEncrypt;

.field final ICustomTabsService:Lo/handleDeepLinkCallback;

.field final ICustomTabsService$Stub:Lo/getByPosition;

.field final ICustomTabsService$Stub$Proxy:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/AFLogger;",
            ">;"
        }
    .end annotation
.end field

.field final INotificationSideChannel:Lo/MediaSessionCompat$1$onMessageChannelReady;

.field final INotificationSideChannel$Default:Lo/getReferrerClickTimestampSeconds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lcom/facebook/common/memory/PooledByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private final INotificationSideChannel$Stub:I

.field final INotificationSideChannel$Stub$Proxy:Lo/getReferrerClickTimestampSeconds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrerClickTimestampSeconds<",
            "Lo/invalidateSpanInfo;",
            "Lo/convertToJsonObject;",
            ">;"
        }
    .end annotation
.end field

.field final IPostMessageService:Z

.field final IPostMessageService$Stub:Lo/AFExecutor$1$1;

.field public final IPostMessageService$Stub$Proxy:Lo/intent;

.field final asBinder:Lo/urlString;

.field final asInterface:Z

.field final cancel:Lo/invoke;

.field final cancelAll:Lo/onPostMessage$extraCallback;

.field final extraCallback:Lo/endConnection;

.field final extraCommand:I

.field final getInterfaceDescriptor:Lo/MediaSessionCompat$1$onMessageChannelReady;

.field final mayLaunchUrl:Lo/getByPosition;

.field final newSession:Ljava/lang/Integer;

.field final notify:Z

.field final onMessageChannelReady:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback<",
            "Lo/invalidateSpanInfo;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Landroid/graphics/Bitmap$Config;

.field final onPostMessage:Lo/getReferrerClickTimestampSeconds$onNavigationEvent;

.field final onRelationshipValidationResult:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Lo/getLayoutInflater$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field final onTransact:Landroid/content/Context;

.field final postMessage:Lo/onInstallConversionFailureNative;

.field final requestPostMessageChannel:Lo/getPathName;

.field final updateVisuals:Lo/enableFacebookDeferredApplinks;

.field final validateRelationship:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/registerConversionListener;",
            ">;"
        }
    .end annotation
.end field

.field final warmup:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 113
    new-instance v0, Lo/context$ICustomTabsCallback;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/context$ICustomTabsCallback;-><init>(B)V

    sput-object v0, Lo/context;->getDefaultImpl:Lo/context$ICustomTabsCallback;

    return-void
.end method

.method private constructor <init>(Lo/context$extraCallback;)V
    .locals 5

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 1470
    iget-object v0, p1, Lo/context$extraCallback;->onPostMessage:Lo/intent$onNavigationEvent;

    .line 2430
    new-instance v1, Lo/intent;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lo/intent;-><init>(Lo/intent$onNavigationEvent;B)V

    .line 121
    iput-object v1, p0, Lo/context;->IPostMessageService$Stub$Proxy:Lo/intent;

    .line 123
    new-instance v0, Lo/startConnection;

    .line 3470
    iget-object v1, p1, Lo/context$extraCallback;->onNavigationEvent:Landroid/content/Context;

    const-string v3, "activity"

    .line 125
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    invoke-direct {v0, v1}, Lo/startConnection;-><init>(Landroid/app/ActivityManager;)V

    .line 126
    iput-object v0, p0, Lo/context;->ICustomTabsCallback:Lo/setPivotX;

    .line 128
    new-instance v0, Lo/setSelectionAnimationDuration;

    invoke-direct {v0}, Lo/setSelectionAnimationDuration;-><init>()V

    .line 130
    iput-object v0, p0, Lo/context;->onPostMessage:Lo/getReferrerClickTimestampSeconds$onNavigationEvent;

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lo/context;->onMessageChannelReady:Lo/InstallReferrerClient$InstallReferrerResponse$ICustomTabsCallback;

    .line 132
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, p0, Lo/context;->onNavigationEvent:Landroid/graphics/Bitmap$Config;

    .line 135
    invoke-static {}, Lo/ReferrerDetails;->extraCallback()Lo/ReferrerDetails;

    move-result-object v1

    .line 136
    iput-object v1, p0, Lo/context;->extraCallback:Lo/endConnection;

    .line 12470
    iget-object v1, p1, Lo/context$extraCallback;->onNavigationEvent:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 137
    check-cast v1, Landroid/content/Context;

    iput-object v1, p0, Lo/context;->onTransact:Landroid/content/Context;

    .line 139
    new-instance v1, Lo/collectIntentsFromActivities;

    new-instance v3, Lo/cachePreLayoutSpanMapping$onNavigationEvent;

    invoke-direct {v3}, Lo/cachePreLayoutSpanMapping$onNavigationEvent;-><init>()V

    invoke-direct {v1, v3}, Lo/collectIntentsFromActivities;-><init>(Lo/AFDeepLinkManager$5;)V

    .line 141
    iput-object v1, p0, Lo/context;->ICustomTabsCallback$Stub:Lo/AFEvent;

    .line 142
    iput-boolean v2, p0, Lo/context;->asInterface:Z

    .line 144
    new-instance v1, Lo/onInstallReferrerSetupFinished;

    invoke-direct {v1}, Lo/onInstallReferrerSetupFinished;-><init>()V

    .line 146
    iput-object v1, p0, Lo/context;->onRelationshipValidationResult:Lo/setPivotX;

    .line 149
    invoke-static {}, Lo/getInstallBeginTimestampSeconds;->ICustomTabsCallback()Lo/getInstallBeginTimestampSeconds;

    move-result-object v1

    .line 150
    iput-object v1, p0, Lo/context;->getInterfaceDescriptor:Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 151
    iput-object v0, p0, Lo/context;->ICustomTabsCallback$Stub$Proxy:Lo/isEncrypt;

    .line 152
    iput-object v0, p0, Lo/context;->ICustomTabsService:Lo/handleDeepLinkCallback;

    .line 153
    iput-object v0, p0, Lo/context;->newSession:Ljava/lang/Integer;

    .line 155
    new-instance v1, Lo/context$4;

    invoke-direct {v1}, Lo/context$4;-><init>()V

    .line 162
    iput-object v1, p0, Lo/context;->warmup:Lo/setPivotX;

    .line 29470
    iget-object v1, p1, Lo/context$extraCallback;->onNavigationEvent:Landroid/content/Context;

    .line 165
    invoke-static {v1}, Lo/context;->onMessageChannelReady(Landroid/content/Context;)Lo/getByPosition;

    move-result-object v1

    .line 166
    iput-object v1, p0, Lo/context;->mayLaunchUrl:Lo/getByPosition;

    .line 169
    invoke-static {}, Lo/setPathData;->extraCallback()Lo/setPathData;

    move-result-object v1

    .line 170
    iput-object v1, p0, Lo/context;->requestPostMessageChannel:Lo/getPathName;

    .line 171
    iput v2, p0, Lo/context;->extraCommand:I

    .line 37470
    iget v1, p1, Lo/context$extraCallback;->ICustomTabsCallback:I

    if-gez v1, :cond_0

    const/16 v1, 0x7530

    goto :goto_0

    .line 38470
    :cond_0
    iget v1, p1, Lo/context$extraCallback;->ICustomTabsCallback:I

    .line 175
    :goto_0
    iput v1, p0, Lo/context;->INotificationSideChannel$Stub:I

    .line 176
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 180
    new-instance v1, Lo/sendPushNotificationData;

    iget v3, p0, Lo/context;->INotificationSideChannel$Stub:I

    invoke-direct {v1, v3}, Lo/sendPushNotificationData;-><init>(I)V

    .line 182
    iput-object v1, p0, Lo/context;->updateVisuals:Lo/enableFacebookDeferredApplinks;

    .line 183
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 188
    new-instance v1, Lo/onInstallConversionFailureNative;

    .line 43144
    new-instance v3, Lo/onInstallConversionDataLoadedNative$ICustomTabsCallback;

    invoke-direct {v3, v2}, Lo/onInstallConversionDataLoadedNative$ICustomTabsCallback;-><init>(B)V

    .line 43208
    new-instance v4, Lo/onInstallConversionDataLoadedNative;

    invoke-direct {v4, v3, v2}, Lo/onInstallConversionDataLoadedNative;-><init>(Lo/onInstallConversionDataLoadedNative$ICustomTabsCallback;B)V

    .line 189
    invoke-direct {v1, v4}, Lo/onInstallConversionFailureNative;-><init>(Lo/onInstallConversionDataLoadedNative;)V

    .line 190
    iput-object v1, p0, Lo/context;->postMessage:Lo/onInstallConversionFailureNative;

    .line 192
    new-instance v1, Lo/newThread;

    invoke-direct {v1}, Lo/newThread;-><init>()V

    .line 194
    iput-object v1, p0, Lo/context;->IPostMessageService$Stub:Lo/AFExecutor$1$1;

    .line 196
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 198
    iput-object v1, p0, Lo/context;->validateRelationship:Ljava/util/Set;

    .line 200
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 202
    iput-object v1, p0, Lo/context;->ICustomTabsService$Stub$Proxy:Ljava/util/Set;

    .line 50470
    iget-boolean v1, p1, Lo/context$extraCallback;->onMessageChannelReady:Z

    .line 203
    iput-boolean v1, p0, Lo/context;->IPostMessageService:Z

    .line 205
    iget-object v1, p0, Lo/context;->mayLaunchUrl:Lo/getByPosition;

    .line 207
    iput-object v1, p0, Lo/context;->ICustomTabsService$Stub:Lo/getByPosition;

    .line 208
    iput-object v0, p0, Lo/context;->cancel:Lo/invoke;

    .line 210
    iget-object v1, p0, Lo/context;->postMessage:Lo/onInstallConversionFailureNative;

    .line 50474
    iget-object v1, v1, Lo/onInstallConversionFailureNative;->extraCallback:Lo/onInstallConversionDataLoadedNative;

    .line 50475
    iget-object v1, v1, Lo/onInstallConversionDataLoadedNative;->extraCallback:Lo/onAppOpenAttributionNative;

    .line 50474
    iget v1, v1, Lo/onAppOpenAttributionNative;->onMessageChannelReady:I

    .line 212
    new-instance v2, Lo/getInstance;

    invoke-direct {v2, v1}, Lo/getInstance;-><init>(I)V

    .line 214
    iput-object v2, p0, Lo/context;->asBinder:Lo/urlString;

    .line 50478
    iget-boolean v1, p1, Lo/context$extraCallback;->extraCallback:Z

    .line 215
    iput-boolean v1, p0, Lo/context;->notify:Z

    .line 216
    iput-object v0, p0, Lo/context;->cancelAll:Lo/onPostMessage$extraCallback;

    .line 50480
    iget-object p1, p1, Lo/context$extraCallback;->onRelationshipValidationResult:Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 217
    iput-object p1, p0, Lo/context;->INotificationSideChannel:Lo/MediaSessionCompat$1$onMessageChannelReady;

    .line 218
    iput-object v0, p0, Lo/context;->INotificationSideChannel$Stub$Proxy:Lo/getReferrerClickTimestampSeconds;

    .line 219
    iput-object v0, p0, Lo/context;->INotificationSideChannel$Default:Lo/getReferrerClickTimestampSeconds;

    .line 236
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-void

    .line 13215
    :cond_1
    throw v0
.end method

.method synthetic constructor <init>(Lo/context$extraCallback;B)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lo/context;-><init>(Lo/context$extraCallback;)V

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;)Lo/context$extraCallback;
    .locals 2

    .line 411
    new-instance v0, Lo/context$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/context$extraCallback;-><init>(Landroid/content/Context;B)V

    return-object v0
.end method

.method private static onMessageChannelReady(Landroid/content/Context;)Lo/getByPosition;
    .locals 2

    .line 258
    :try_start_0
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 50509
    new-instance v0, Lo/getByPosition$extraCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/getByPosition$extraCallback;-><init>(Landroid/content/Context;B)V

    .line 261
    invoke-virtual {v0}, Lo/getByPosition$extraCallback;->onNavigationEvent()Lo/getByPosition;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Lo/setHostName;->onPostMessage()Z

    .line 264
    throw p0
.end method

.method public static onNavigationEvent()Lo/context$ICustomTabsCallback;
    .locals 1

    .line 299
    sget-object v0, Lo/context;->getDefaultImpl:Lo/context$ICustomTabsCallback;

    return-object v0
.end method
