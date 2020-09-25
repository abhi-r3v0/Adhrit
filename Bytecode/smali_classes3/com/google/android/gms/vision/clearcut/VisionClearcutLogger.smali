.class public Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private final zzcd:Lo/getReferenceId;

.field private zzce:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzce:Z

    .line 3
    new-instance v0, Lo/getReferenceId;

    const-string v1, "VISION"

    invoke-direct {v0, p1, v1}, Lo/getReferenceId;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzcd:Lo/getReferenceId;

    return-void
.end method


# virtual methods
.method public final zzb(ILo/setAdSize$ICustomTabsCallback$Stub$Proxy;)V
    .locals 5

    .line 5
    invoke-virtual {p2}, Lo/setShouldSkipGmsCoreVersionCheck;->onRelationshipValidationResult()[B

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "Vision"

    const/4 v2, 0x0

    if-ltz p1, :cond_3

    const/4 v3, 0x3

    if-le p1, v3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    :try_start_0
    iget-boolean v3, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzce:Z

    if-eqz v3, :cond_1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/vision/clearcut/VisionClearcutLogger;->zzcd:Lo/getReferenceId;

    .line 2000
    new-instance v1, Lo/getReferenceId$onPostMessage;

    invoke-direct {v1, v0, p2, v2}, Lo/getReferenceId$onPostMessage;-><init>(Lo/getReferenceId;[BC)V

    .line 3000
    iget-object p2, v1, Lo/getReferenceId$onPostMessage;->ICustomTabsCallback:Lo/setDomain;

    iput p1, p2, Lo/setDomain;->onNavigationEvent:I

    .line 10
    invoke-virtual {v1}, Lo/getReferenceId$onPostMessage;->onNavigationEvent()V

    return-void

    .line 11
    :cond_1
    invoke-static {}, Lo/setAdSize$ICustomTabsCallback$Stub$Proxy;->onMessageChannelReady()Lo/setAdSize$ICustomTabsCallback$Stub$Proxy$onNavigationEvent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 12
    :try_start_1
    invoke-static {}, Lo/isGooglePlayServicesAvailable;->onPostMessage()Lo/isGooglePlayServicesAvailable;

    move-result-object v3

    .line 13
    array-length v4, p2

    invoke-virtual {p1, p2, v2, v4, v3}, Lo/isLimitAdTrackingEnabled;->onPostMessage([BIILo/isGooglePlayServicesAvailable;)Lo/isLimitAdTrackingEnabled;

    const-string p2, "Would have logged:\n%s"

    new-array v0, v0, [Ljava/lang/Object;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const/4 p1, 0x6

    .line 3014
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3015
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Parsing error"

    new-array v0, v2, [Ljava/lang/Object;

    .line 16
    invoke-static {p1, p2, v0}, Lo/preferLastSpan$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    move-exception p1

    .line 19
    invoke-static {p1}, Lo/Loader$UnexpectedLoaderException;->onPostMessage(Ljava/lang/Throwable;)V

    new-array p2, v2, [Ljava/lang/Object;

    const-string v0, "Failed to log"

    .line 20
    invoke-static {p1, v0, p2}, Lo/preferLastSpan$ICustomTabsCallback;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    return-void

    :cond_3
    :goto_0
    new-array p2, v0, [Ljava/lang/Object;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p2, v2

    const/4 p1, 0x4

    .line 1011
    invoke-static {v1, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "Illegal event code: %d"

    .line 1012
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method
