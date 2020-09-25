.class public final Lo/NativeFileUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/NativeFileUtils$extraCallback;
    }
.end annotation


# static fields
.field public static final FCM_FALLBACK_NOTIFICATION_CHANNEL:Ljava/lang/String; = "fcm_fallback_notification_channel"

.field public static final FCM_FALLBACK_NOTIFICATION_CHANNEL_LABEL:Ljava/lang/String; = "fcm_fallback_notification_channel_label"

.field public static final METADATA_DEFAULT_CHANNEL_ID:Ljava/lang/String; = "com.google.firebase.messaging.default_notification_channel_id"

.field public static final METADATA_DEFAULT_COLOR:Ljava/lang/String; = "com.google.firebase.messaging.default_notification_color"

.field public static final METADATA_DEFAULT_ICON:Ljava/lang/String; = "com.google.firebase.messaging.default_notification_icon"

.field private static final requestCodeProvider:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final synthetic zzdd:Lo/deleteAllReports;

.field private final synthetic zzdr:Lo/ArticleDetailActivity$2$1$1;

.field private final synthetic zzds:Lo/onCreateLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 201
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    long-to-int v2, v1

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lo/NativeFileUtils;->requestCodeProvider:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/deleteAllReports;Lo/ArticleDetailActivity$2$1$1;Lo/onCreateLoader;)V
    .locals 0

    .line 1001
    iput-object p1, p0, Lo/NativeFileUtils;->zzdd:Lo/deleteAllReports;

    iput-object p2, p0, Lo/NativeFileUtils;->zzdr:Lo/ArticleDetailActivity$2$1$1;

    iput-object p3, p0, Lo/NativeFileUtils;->zzds:Lo/onCreateLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createContentIntent(Landroid/content/Context;Lo/ProcMapEntryParser;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/app/PendingIntent;
    .locals 1

    .line 118
    invoke-static {p2, p1, p3}, Lo/NativeFileUtils;->createTargetIntent(Ljava/lang/String;Lo/ProcMapEntryParser;Landroid/content/pm/PackageManager;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/high16 p3, 0x4000000

    .line 121
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p1}, Lo/ProcMapEntryParser;->paramsWithReservedKeysRemoved()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 124
    invoke-static {}, Lo/NativeFileUtils;->generatePendingIntentRequestCode()I

    move-result p3

    const/high16 v0, 0x40000000    # 2.0f

    .line 125
    invoke-static {p0, p3, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 126
    invoke-static {p1}, Lo/NativeFileUtils;->shouldUploadMetrics(Lo/ProcMapEntryParser;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 127
    invoke-static {p0, p1, p2}, Lo/NativeFileUtils;->wrapContentIntent(Landroid/content/Context;Lo/ProcMapEntryParser;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method private static createDeleteIntent(Landroid/content/Context;Lo/ProcMapEntryParser;)Landroid/app/PendingIntent;
    .locals 2

    .line 186
    invoke-static {p1}, Lo/NativeFileUtils;->shouldUploadMetrics(Lo/ProcMapEntryParser;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 188
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.messaging.NOTIFICATION_DISMISS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lo/ProcMapEntryParser;->paramsForAnalyticsIntent()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    .line 190
    invoke-static {p0, p1}, Lo/NativeFileUtils;->createMessagingPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private static createMessagingPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;
    .locals 4

    .line 192
    invoke-static {}, Lo/NativeFileUtils;->generatePendingIntentRequestCode()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.firebase.MESSAGING_EVENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.firebase.iid.FirebaseInstanceIdReceiver"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "wrapped_intent"

    .line 194
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x40000000    # 2.0f

    .line 195
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static createNotificationInfo(Landroid/content/Context;Ljava/lang/String;Lo/ProcMapEntryParser;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/os/Bundle;)Lo/NativeFileUtils$extraCallback;
    .locals 2

    .line 10
    new-instance v0, Lo/setSubtitle$ICustomTabsCallback;

    invoke-direct {v0, p0, p3}, Lo/setSubtitle$ICustomTabsCallback;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p3, "gcm.n.title"

    .line 12
    invoke-virtual {p2, p4, p1, p3}, Lo/ProcMapEntryParser;->getPossiblyLocalizedString(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 13
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14
    invoke-virtual {v0, p3}, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsCallback(Ljava/lang/CharSequence;)Lo/setSubtitle$ICustomTabsCallback;

    :cond_0
    const-string p3, "gcm.n.body"

    .line 16
    invoke-virtual {p2, p4, p1, p3}, Lo/ProcMapEntryParser;->getPossiblyLocalizedString(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 17
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 18
    invoke-virtual {v0, p3}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage(Ljava/lang/CharSequence;)Lo/setSubtitle$ICustomTabsCallback;

    .line 19
    new-instance v1, Lo/setSubtitle$onNavigationEvent;

    invoke-direct {v1}, Lo/setSubtitle$onNavigationEvent;-><init>()V

    invoke-virtual {v1, p3}, Lo/setSubtitle$onNavigationEvent;->onMessageChannelReady(Ljava/lang/CharSequence;)Lo/setSubtitle$onNavigationEvent;

    move-result-object p3

    invoke-virtual {v0, p3}, Lo/setSubtitle$ICustomTabsCallback;->onMessageChannelReady(Lo/setSubtitle$onTransact;)Lo/setSubtitle$ICustomTabsCallback;

    :cond_1
    const-string p3, "gcm.n.icon"

    .line 21
    invoke-virtual {p2, p3}, Lo/ProcMapEntryParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 22
    invoke-static {p5, p4, p1, p3, p6}, Lo/NativeFileUtils;->getSmallIcon(Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p3

    .line 23
    invoke-virtual {v0, p3}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback(I)Lo/setSubtitle$ICustomTabsCallback;

    .line 24
    invoke-static {p1, p2, p4}, Lo/NativeFileUtils;->getSound(Ljava/lang/String;Lo/ProcMapEntryParser;Landroid/content/res/Resources;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 26
    invoke-virtual {v0, p3}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage(Landroid/net/Uri;)Lo/setSubtitle$ICustomTabsCallback;

    .line 27
    :cond_2
    invoke-static {p0, p2, p1, p5}, Lo/NativeFileUtils;->createContentIntent(Landroid/content/Context;Lo/ProcMapEntryParser;Ljava/lang/String;Landroid/content/pm/PackageManager;)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/setSubtitle$ICustomTabsCallback;->extraCallback(Landroid/app/PendingIntent;)Lo/setSubtitle$ICustomTabsCallback;

    .line 28
    invoke-static {p0, p2}, Lo/NativeFileUtils;->createDeleteIntent(Landroid/content/Context;Lo/ProcMapEntryParser;)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 30
    invoke-virtual {v0, p1}, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsCallback(Landroid/app/PendingIntent;)Lo/setSubtitle$ICustomTabsCallback;

    :cond_3
    const-string p1, "gcm.n.color"

    .line 32
    invoke-virtual {p2, p1}, Lo/ProcMapEntryParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p6}, Lo/NativeFileUtils;->getColor(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 34
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage(I)Lo/setSubtitle$ICustomTabsCallback;

    :cond_4
    const-string p0, "gcm.n.sticky"

    .line 35
    invoke-virtual {p2, p0}, Lo/ProcMapEntryParser;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    const/4 p1, 0x1

    xor-int/2addr p0, p1

    .line 36
    invoke-virtual {v0, p0}, Lo/setSubtitle$ICustomTabsCallback;->onNavigationEvent(Z)Lo/setSubtitle$ICustomTabsCallback;

    const-string p0, "gcm.n.local_only"

    .line 37
    invoke-virtual {p2, p0}, Lo/ProcMapEntryParser;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 38
    invoke-virtual {v0, p0}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage(Z)Lo/setSubtitle$ICustomTabsCallback;

    const-string p0, "gcm.n.ticker"

    .line 39
    invoke-virtual {p2, p0}, Lo/ProcMapEntryParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 41
    invoke-virtual {v0, p0}, Lo/setSubtitle$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/CharSequence;)Lo/setSubtitle$ICustomTabsCallback;

    .line 42
    :cond_5
    invoke-virtual {p2}, Lo/ProcMapEntryParser;->getNotificationPriority()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 44
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsCallback(I)Lo/setSubtitle$ICustomTabsCallback;

    .line 45
    :cond_6
    invoke-virtual {p2}, Lo/ProcMapEntryParser;->getVisibility()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 47
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lo/setSubtitle$ICustomTabsCallback;->ICustomTabsCallback$Stub(I)Lo/setSubtitle$ICustomTabsCallback;

    .line 48
    :cond_7
    invoke-virtual {p2}, Lo/ProcMapEntryParser;->getNotificationCount()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 50
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lo/setSubtitle$ICustomTabsCallback;->onNavigationEvent(I)Lo/setSubtitle$ICustomTabsCallback;

    :cond_8
    const-string p0, "gcm.n.event_time"

    .line 51
    invoke-virtual {p2, p0}, Lo/ProcMapEntryParser;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 53
    invoke-virtual {v0, p1}, Lo/setSubtitle$ICustomTabsCallback;->onMessageChannelReady(Z)Lo/setSubtitle$ICustomTabsCallback;

    .line 54
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p3

    invoke-virtual {v0, p3, p4}, Lo/setSubtitle$ICustomTabsCallback;->onPostMessage(J)Lo/setSubtitle$ICustomTabsCallback;

    .line 55
    :cond_9
    invoke-virtual {p2}, Lo/ProcMapEntryParser;->getVibrateTimings()[J

    move-result-object p0

    if-eqz p0, :cond_a

    .line 57
    invoke-virtual {v0, p0}, Lo/setSubtitle$ICustomTabsCallback;->onNavigationEvent([J)Lo/setSubtitle$ICustomTabsCallback;

    .line 58
    :cond_a
    invoke-virtual {p2}, Lo/ProcMapEntryParser;->getLightSettings()[I

    move-result-object p0

    const/4 p3, 0x0

    if-eqz p0, :cond_b

    .line 60
    aget p4, p0, p3

    aget p1, p0, p1

    const/4 p5, 0x2

    aget p0, p0, p5

    invoke-virtual {v0, p4, p1, p0}, Lo/setSubtitle$ICustomTabsCallback;->onMessageChannelReady(III)Lo/setSubtitle$ICustomTabsCallback;

    .line 61
    :cond_b
    invoke-static {p2}, Lo/NativeFileUtils;->getConsolidatedDefaults(Lo/ProcMapEntryParser;)I

    move-result p0

    invoke-virtual {v0, p0}, Lo/setSubtitle$ICustomTabsCallback;->onMessageChannelReady(I)Lo/setSubtitle$ICustomTabsCallback;

    .line 62
    new-instance p0, Lo/NativeFileUtils$extraCallback;

    invoke-static {p2}, Lo/NativeFileUtils;->getTag(Lo/ProcMapEntryParser;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, p3}, Lo/NativeFileUtils$extraCallback;-><init>(Lo/setSubtitle$ICustomTabsCallback;Ljava/lang/String;I)V

    return-object p0
.end method

.method static createNotificationInfo(Landroid/content/Context;Lo/ProcMapEntryParser;)Lo/NativeFileUtils$extraCallback;
    .locals 9

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lo/NativeFileUtils;->getManifestMetadata(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lo/ProcMapEntryParser;->getNotificationChannelId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8}, Lo/NativeFileUtils;->getOrCreateChannel(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    move-object v2, p0

    move-object v4, p1

    .line 9
    invoke-static/range {v2 .. v8}, Lo/NativeFileUtils;->createNotificationInfo(Landroid/content/Context;Ljava/lang/String;Lo/ProcMapEntryParser;Ljava/lang/String;Landroid/content/res/Resources;Landroid/content/pm/PackageManager;Landroid/os/Bundle;)Lo/NativeFileUtils$extraCallback;

    move-result-object p0

    return-object p0
.end method

.method private static createTargetIntent(Ljava/lang/String;Lo/ProcMapEntryParser;Landroid/content/pm/PackageManager;)Landroid/content/Intent;
    .locals 2

    const-string v0, "gcm.n.click_action"

    .line 129
    invoke-virtual {p1, v0}, Lo/ProcMapEntryParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p0, 0x10000000

    .line 133
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object p1

    .line 135
    :cond_0
    invoke-virtual {p1}, Lo/ProcMapEntryParser;->getLink()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 137
    new-instance p2, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object p2

    .line 141
    :cond_1
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p1, "FirebaseMessaging"

    const-string p2, "No activity found to launch app"

    .line 143
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p0
.end method

.method private static generatePendingIntentRequestCode()I
    .locals 1

    .line 181
    sget-object v0, Lo/NativeFileUtils;->requestCodeProvider:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    return v0
.end method

.method private static getColor(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Integer;
    .locals 4

    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return-object v1

    .line 100
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, "FirebaseMessaging"

    if-nez v0, :cond_1

    .line 101
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 103
    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x38

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Color is invalid: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Notification will use default color."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    const-string v0, "com.google.firebase.messaging.default_notification_color"

    .line 104
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    .line 106
    :try_start_1
    invoke-static {p0, p1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    const-string p0, "Cannot find the color resource referenced in AndroidManifest."

    .line 108
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method private static getConsolidatedDefaults(Lo/ProcMapEntryParser;)I
    .locals 2

    const-string v0, "gcm.n.default_sound"

    .line 64
    invoke-virtual {p0, v0}, Lo/ProcMapEntryParser;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "gcm.n.default_vibrate_timings"

    .line 66
    invoke-virtual {p0, v1}, Lo/ProcMapEntryParser;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    const-string v1, "gcm.n.default_light_settings"

    .line 68
    invoke-virtual {p0, v1}, Lo/ProcMapEntryParser;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    return v0
.end method

.method private static getManifestMetadata(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 1

    const/16 v0, 0x80

    .line 145
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 146
    iget-object p1, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_0

    .line 147
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 150
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Couldn\'t get own application info: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FirebaseMessaging"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    return-object p0
.end method

.method private static getOrCreateChannel(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 5

    .line 152
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return-object v2

    .line 155
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 156
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v0, v1, :cond_1

    return-object v2

    .line 161
    :cond_1
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "FirebaseMessaging"

    if-nez v1, :cond_3

    .line 163
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object p1

    .line 165
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Notification Channel requested ("

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") has not been created by the app. Manifest configuration, or default, value will be used."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string p1, "com.google.firebase.messaging.default_notification_channel_id"

    .line 166
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 168
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p2

    if-eqz p2, :cond_4

    return-object p1

    :cond_4
    const-string p1, "Notification Channel set in AndroidManifest.xml has not been created by the app. Default value will be used."

    .line 170
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string p1, "Missing Default Notification Channel metadata in AndroidManifest. Default value will be used."

    .line 171
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p1, "fcm_fallback_notification_channel"

    .line 172
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p2

    if-nez p2, :cond_6

    .line 177
    new-instance p2, Landroid/app/NotificationChannel;

    const v1, 0x7f1301e2

    .line 178
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x3

    invoke-direct {p2, p1, p0, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 179
    invoke-virtual {v0, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_6
    return-object p1

    :catch_0
    return-object v2
.end method

.method private static getSmallIcon(Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 3

    .line 81
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "FirebaseMessaging"

    if-nez v0, :cond_2

    const-string v0, "drawable"

    .line 82
    invoke-virtual {p1, p3, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p1, v0}, Lo/NativeFileUtils;->isValidIcon(Landroid/content/res/Resources;I)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    :cond_0
    const-string v0, "mipmap"

    .line 85
    invoke-virtual {p1, p3, v0, p2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    invoke-static {p1, v0}, Lo/NativeFileUtils;->isValidIcon(Landroid/content/res/Resources;I)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    .line 88
    :cond_1
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Icon resource "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " not found. Notification will use default icon."

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p3, 0x0

    const-string v0, "com.google.firebase.messaging.default_notification_icon"

    .line 89
    invoke-virtual {p4, v0, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p4

    if-eqz p4, :cond_3

    .line 90
    invoke-static {p1, p4}, Lo/NativeFileUtils;->isValidIcon(Landroid/content/res/Resources;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 91
    :cond_3
    :try_start_0
    invoke-virtual {p0, p2, p3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p4, p0, Landroid/content/pm/PackageItemInfo;->icon:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 94
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x23

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Couldn\'t get own application info: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    if-eqz p4, :cond_5

    .line 95
    invoke-static {p1, p4}, Lo/NativeFileUtils;->isValidIcon(Landroid/content/res/Resources;I)Z

    move-result p0

    if-nez p0, :cond_6

    :cond_5
    const p4, 0x1080093

    :cond_6
    return p4
.end method

.method private static getSound(Ljava/lang/String;Lo/ProcMapEntryParser;Landroid/content/res/Resources;)Landroid/net/Uri;
    .locals 1

    .line 110
    invoke-virtual {p1}, Lo/ProcMapEntryParser;->getSoundResourceName()Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "default"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "raw"

    .line 114
    invoke-virtual {p2, p1, v0, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-eqz p2, :cond_1

    .line 116
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x18

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "android.resource://"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/raw/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x2

    .line 117
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method private static getTag(Lo/ProcMapEntryParser;)Ljava/lang/String;
    .locals 3

    const-string v0, "gcm.n.tag"

    .line 197
    invoke-virtual {p0, v0}, Lo/ProcMapEntryParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    .line 200
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 p0, 0x25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "FCM-Notification:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static isValidIcon(Landroid/content/res/Resources;I)Z
    .locals 4

    const-string v0, "FirebaseMessaging"

    .line 71
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 73
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 74
    instance-of p0, p0, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz p0, :cond_1

    const/16 p0, 0x4d

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Adaptive icons cannot be used in notifications. Ignoring icon id: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :cond_1
    return v2

    :catch_0
    const/16 p0, 0x42

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Couldn\'t find resource "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", treating it as an invalid icon"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method static shouldUploadMetrics(Lo/ProcMapEntryParser;)Z
    .locals 1

    const-string v0, "google.c.a.e"

    .line 196
    invoke-virtual {p0, v0}, Lo/ProcMapEntryParser;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static wrapContentIntent(Landroid/content/Context;Lo/ProcMapEntryParser;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 2

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.firebase.messaging.NOTIFICATION_OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Lo/ProcMapEntryParser;->paramsForAnalyticsIntent()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "pending_intent"

    .line 184
    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 185
    invoke-static {p0, p1}, Lo/NativeFileUtils;->createMessagingPendingIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1002
    iget-object v0, p0, Lo/NativeFileUtils;->zzdd:Lo/deleteAllReports;

    iget-object v1, p0, Lo/NativeFileUtils;->zzdr:Lo/ArticleDetailActivity$2$1$1;

    iget-object v2, p0, Lo/NativeFileUtils;->zzds:Lo/onCreateLoader;

    invoke-static {v0, v1, v2}, Lo/deleteAllReports;->zza(Lo/deleteAllReports;Lo/ArticleDetailActivity$2$1$1;Lo/onCreateLoader;)V

    return-void
.end method
