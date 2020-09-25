.class public Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;
.super Lo/isLimitAdTrackingEnabled;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isPlayServicesPossiblyUpdating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/isPlayServicesPossiblyUpdating<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback<",
        "TMessageType;TBuilderType;>;>",
        "Lo/isLimitAdTrackingEnabled<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/isPlayServicesPossiblyUpdating;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected onNavigationEvent:Lo/isPlayServicesPossiblyUpdating;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected onPostMessage:Z


# direct methods
.method protected constructor <init>(Lo/isPlayServicesPossiblyUpdating;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/isLimitAdTrackingEnabled;-><init>()V

    .line 2
    iput-object p1, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onMessageChannelReady:Lo/isPlayServicesPossiblyUpdating;

    .line 3
    sget v0, Lo/isPlayServicesPossiblyUpdating$onPostMessage;->ICustomTabsCallback:I

    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1, v1}, Lo/isPlayServicesPossiblyUpdating;->onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    check-cast p1, Lo/isPlayServicesPossiblyUpdating;

    iput-object p1, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onNavigationEvent:Lo/isPlayServicesPossiblyUpdating;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onPostMessage:Z

    return-void
.end method

.method private final ICustomTabsCallback([BIILo/isGooglePlayServicesAvailable;)Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lo/isGooglePlayServicesAvailable;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzin;
        }
    .end annotation

    .line 36
    iget-boolean p2, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onPostMessage:Z

    if-eqz p2, :cond_0

    .line 37
    invoke-virtual {p0}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->extraCallback()V

    const/4 p2, 0x0

    .line 38
    iput-boolean p2, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onPostMessage:Z

    .line 39
    :cond_0
    :try_start_0
    invoke-static {}, Lo/getGetServiceRequestExtraArgs;->ICustomTabsCallback()Lo/getGetServiceRequestExtraArgs;

    move-result-object p2

    iget-object v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onNavigationEvent:Lo/isPlayServicesPossiblyUpdating;

    invoke-virtual {p2, v0}, Lo/getGetServiceRequestExtraArgs;->onMessageChannelReady(Ljava/lang/Object;)Lo/getService;

    move-result-object v1

    iget-object v2, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onNavigationEvent:Lo/isPlayServicesPossiblyUpdating;

    const/4 v4, 0x0

    new-instance v6, Lo/ClientApi;

    invoke-direct {v6, p4}, Lo/ClientApi;-><init>(Lo/isGooglePlayServicesAvailable;)V

    move-object v3, p1

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lo/getService;->onNavigationEvent(Ljava/lang/Object;[BIILo/ClientApi;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/vision/zzin; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 45
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "Reading from byte array should not throw IOException."

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 43
    :catch_1
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->onPostMessage()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object p1

    throw p1

    :catch_2
    move-exception p1

    .line 41
    throw p1
.end method

.method private static ICustomTabsCallback(Lo/isPlayServicesPossiblyUpdating;Lo/isPlayServicesPossiblyUpdating;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 33
    invoke-static {}, Lo/getGetServiceRequestExtraArgs;->ICustomTabsCallback()Lo/getGetServiceRequestExtraArgs;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/getGetServiceRequestExtraArgs;->onMessageChannelReady(Ljava/lang/Object;)Lo/getService;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lo/getService;->onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private final extraCallback(Lo/GoogleSignInOptions;Lo/isGooglePlayServicesAvailable;)Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/GoogleSignInOptions;",
            "Lo/isGooglePlayServicesAvailable;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 48
    iget-boolean v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->extraCallback()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onPostMessage:Z

    .line 51
    :cond_0
    :try_start_0
    invoke-static {}, Lo/getGetServiceRequestExtraArgs;->ICustomTabsCallback()Lo/getGetServiceRequestExtraArgs;

    move-result-object v0

    iget-object v1, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onNavigationEvent:Lo/isPlayServicesPossiblyUpdating;

    invoke-virtual {v0, v1}, Lo/getGetServiceRequestExtraArgs;->onMessageChannelReady(Ljava/lang/Object;)Lo/getService;

    move-result-object v0

    iget-object v1, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onNavigationEvent:Lo/isPlayServicesPossiblyUpdating;

    .line 52
    invoke-static {p1}, Lo/SignInAccount;->extraCallback(Lo/GoogleSignInOptions;)Lo/SignInAccount;

    move-result-object p1

    .line 53
    invoke-interface {v0, v1, p1, p2}, Lo/getService;->onMessageChannelReady(Ljava/lang/Object;Lo/getApiFeatures;Lo/isGooglePlayServicesAvailable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Ljava/io/IOException;

    if-eqz p2, :cond_1

    .line 57
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 58
    :cond_1
    throw p1
.end method


# virtual methods
.method public final synthetic ICustomTabsCallback()Lo/isLimitAdTrackingEnabled;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lo/isLimitAdTrackingEnabled;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;

    return-object v0
.end method

.method public final synthetic ICustomTabsCallback(Lo/GoogleSignInOptions;Lo/isGooglePlayServicesAvailable;)Lo/isLimitAdTrackingEnabled;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->extraCallback(Lo/GoogleSignInOptions;Lo/isGooglePlayServicesAvailable;)Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;

    move-result-object p1

    return-object p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onMessageChannelReady:Lo/isPlayServicesPossiblyUpdating;

    .line 74
    check-cast v0, Lo/isPlayServicesPossiblyUpdating;

    .line 75
    sget v1, Lo/isPlayServicesPossiblyUpdating$onPostMessage;->onMessageChannelReady:I

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v0, v1, v2, v2}, Lo/isPlayServicesPossiblyUpdating;->onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    check-cast v0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;

    .line 79
    invoke-virtual {p0}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onNavigationEvent()Lo/getStartServicePackage;

    move-result-object v1

    check-cast v1, Lo/isPlayServicesPossiblyUpdating;

    invoke-virtual {v0, v1}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->extraCallback(Lo/isPlayServicesPossiblyUpdating;)Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;

    return-object v0
.end method

.method public final extraCallback(Lo/isPlayServicesPossiblyUpdating;)Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 28
    iget-boolean v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p0}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->extraCallback()V

    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onPostMessage:Z

    .line 31
    :cond_0
    iget-object v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onNavigationEvent:Lo/isPlayServicesPossiblyUpdating;

    invoke-static {v0, p1}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->ICustomTabsCallback(Lo/isPlayServicesPossiblyUpdating;Lo/isPlayServicesPossiblyUpdating;)V

    return-object p0
.end method

.method protected extraCallback()V
    .locals 3

    .line 8
    iget-object v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onNavigationEvent:Lo/isPlayServicesPossiblyUpdating;

    sget v1, Lo/isPlayServicesPossiblyUpdating$onPostMessage;->ICustomTabsCallback:I

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, v1, v2, v2}, Lo/isPlayServicesPossiblyUpdating;->onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    check-cast v0, Lo/isPlayServicesPossiblyUpdating;

    .line 11
    iget-object v1, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onNavigationEvent:Lo/isPlayServicesPossiblyUpdating;

    invoke-static {v0, v1}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->ICustomTabsCallback(Lo/isPlayServicesPossiblyUpdating;Lo/isPlayServicesPossiblyUpdating;)V

    .line 12
    iput-object v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onNavigationEvent:Lo/isPlayServicesPossiblyUpdating;

    return-void
.end method

.method public final synthetic mayLaunchUrl()Lo/getStartServicePackage;
    .locals 1

    .line 69
    iget-object v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onMessageChannelReady:Lo/isPlayServicesPossiblyUpdating;

    return-object v0
.end method

.method protected final synthetic onMessageChannelReady(Lo/setShouldSkipGmsCoreVersionCheck;)Lo/isLimitAdTrackingEnabled;
    .locals 0

    .line 60
    check-cast p1, Lo/isPlayServicesPossiblyUpdating;

    .line 61
    invoke-virtual {p0, p1}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->extraCallback(Lo/isPlayServicesPossiblyUpdating;)Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;

    move-result-object p1

    return-object p1
.end method

.method public onMessageChannelReady()Lo/isPlayServicesPossiblyUpdating;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 15
    iget-boolean v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onNavigationEvent:Lo/isPlayServicesPossiblyUpdating;

    return-object v0

    .line 17
    :cond_0
    iget-object v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onNavigationEvent:Lo/isPlayServicesPossiblyUpdating;

    .line 18
    invoke-static {}, Lo/getGetServiceRequestExtraArgs;->ICustomTabsCallback()Lo/getGetServiceRequestExtraArgs;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/getGetServiceRequestExtraArgs;->onMessageChannelReady(Ljava/lang/Object;)Lo/getService;

    move-result-object v1

    invoke-interface {v1, v0}, Lo/getService;->onNavigationEvent(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onPostMessage:Z

    .line 20
    iget-object v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onNavigationEvent:Lo/isPlayServicesPossiblyUpdating;

    return-object v0
.end method

.method public synthetic onNavigationEvent()Lo/getStartServicePackage;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onMessageChannelReady()Lo/isPlayServicesPossiblyUpdating;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic onPostMessage([BIILo/isGooglePlayServicesAvailable;)Lo/isLimitAdTrackingEnabled;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/vision/zzin;
        }
    .end annotation

    const/4 p2, 0x0

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->ICustomTabsCallback([BIILo/isGooglePlayServicesAvailable;)Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage()Lo/isPlayServicesPossiblyUpdating;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 21
    invoke-virtual {p0}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onNavigationEvent()Lo/getStartServicePackage;

    move-result-object v0

    check-cast v0, Lo/isPlayServicesPossiblyUpdating;

    .line 22
    invoke-virtual {v0}, Lo/isPlayServicesPossiblyUpdating;->onTransact()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 24
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/vision/zzku;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/vision/zzku;-><init>(Lo/getStartServicePackage;)V

    .line 25
    throw v1
.end method

.method public synthetic onRelationshipValidationResult()Lo/getStartServicePackage;
    .locals 1

    .line 67
    invoke-virtual {p0}, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onPostMessage()Lo/isPlayServicesPossiblyUpdating;

    move-result-object v0

    return-object v0
.end method

.method public final onTransact()Z
    .locals 2

    .line 14
    iget-object v0, p0, Lo/isPlayServicesPossiblyUpdating$ICustomTabsCallback;->onNavigationEvent:Lo/isPlayServicesPossiblyUpdating;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/isPlayServicesPossiblyUpdating;->onMessageChannelReady(Lo/isPlayServicesPossiblyUpdating;Z)Z

    move-result v0

    return v0
.end method
