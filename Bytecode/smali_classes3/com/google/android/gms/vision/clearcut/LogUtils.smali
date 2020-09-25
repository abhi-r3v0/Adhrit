.class public Lcom/google/android/gms/vision/clearcut/LogUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zza(Landroid/content/Context;)Lo/setAdSize$onPostMessage;
    .locals 2

    .line 2
    invoke-static {}, Lo/setAdSize$onPostMessage;->onMessageChannelReady()Lo/setAdSize$onPostMessage$extraCallback;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v1}, Lo/setAdSize$onPostMessage$extraCallback;->onPostMessage(Ljava/lang/String;)Lo/setAdSize$onPostMessage$extraCallback;

    move-result-object v0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/vision/clearcut/LogUtils;->zzb(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {v0, p0}, Lo/setAdSize$onPostMessage$extraCallback;->extraCallback(Ljava/lang/String;)Lo/setAdSize$onPostMessage$extraCallback;

    .line 8
    :cond_0
    invoke-virtual {v0}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onRelationshipValidationResult()Lo/getStartServicePackage;

    move-result-object p0

    check-cast p0, Lo/isPlayServicesPossiblyUpdating;

    check-cast p0, Lo/setAdSize$onPostMessage;

    return-object p0
.end method

.method private static zzb(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 1007
    :try_start_0
    sget-object v1, Lo/preferLastSpan$onMessageChannelReady;->extraCallback:Lo/preferLastSpan$onMessageChannelReady;

    invoke-virtual {v1, p0}, Lo/preferLastSpan$onMessageChannelReady;->onNavigationEvent(Landroid/content/Context;)Lo/component28;

    move-result-object v1

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2005
    iget-object v1, v1, Lo/component28;->onMessageChannelReady:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 10
    iget-object p0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v2, v0

    const-string p0, "Unable to find calling package info for %s"

    invoke-static {v1, p0, v2}, Lo/preferLastSpan$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    return-object p0
.end method
