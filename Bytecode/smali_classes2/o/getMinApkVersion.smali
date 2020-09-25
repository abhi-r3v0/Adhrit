.class abstract Lo/getMinApkVersion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract ICustomTabsCallback()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method abstract ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation
.end method

.method abstract extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method abstract extraCallback(Ljava/lang/Object;)V
.end method

.method abstract extraCallback(Ljava/lang/Object;Lo/checkNotNull;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/checkNotNull;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final extraCallback(Ljava/lang/Object;Lo/getApiFeatures;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lo/getApiFeatures;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-interface {p2}, Lo/getApiFeatures;->onNavigationEvent()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x5

    if-ne v0, v3, :cond_0

    .line 11
    invoke-interface {p2}, Lo/getApiFeatures;->onTransact()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lo/getMinApkVersion;->onNavigationEvent(Ljava/lang/Object;II)V

    return v2

    .line 29
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->asBinder()Lcom/google/android/gms/internal/vision/zzim;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    .line 17
    :cond_2
    invoke-virtual {p0}, Lo/getMinApkVersion;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    shl-int/lit8 v4, v1, 0x3

    or-int/2addr v3, v4

    .line 22
    :cond_3
    invoke-interface {p2}, Lo/getApiFeatures;->onMessageChannelReady()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    .line 23
    invoke-virtual {p0, v0, p2}, Lo/getMinApkVersion;->extraCallback(Ljava/lang/Object;Lo/getApiFeatures;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 24
    :cond_4
    invoke-interface {p2}, Lo/getApiFeatures;->onNavigationEvent()I

    move-result p2

    if-ne v3, p2, :cond_5

    .line 26
    invoke-virtual {p0, v0}, Lo/getMinApkVersion;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lo/getMinApkVersion;->onMessageChannelReady(Ljava/lang/Object;ILjava/lang/Object;)V

    return v2

    .line 25
    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/vision/zzin;->extraCallback()Lcom/google/android/gms/internal/vision/zzin;

    move-result-object p1

    throw p1

    .line 15
    :cond_6
    invoke-interface {p2}, Lo/getApiFeatures;->newSession()Lo/getMobileAdsSettingsManager;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lo/getMinApkVersion;->onMessageChannelReady(Ljava/lang/Object;ILo/getMobileAdsSettingsManager;)V

    return v2

    .line 13
    :cond_7
    invoke-interface {p2}, Lo/getApiFeatures;->asInterface()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lo/getMinApkVersion;->onMessageChannelReady(Ljava/lang/Object;IJ)V

    return v2

    .line 9
    :cond_8
    invoke-interface {p2}, Lo/getApiFeatures;->onRelationshipValidationResult()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lo/getMinApkVersion;->onPostMessage(Ljava/lang/Object;IJ)V

    return v2
.end method

.method abstract onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Ljava/lang/Object;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;ITT;)V"
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Ljava/lang/Object;ILo/getMobileAdsSettingsManager;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lo/getMobileAdsSettingsManager;",
            ")V"
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Ljava/lang/Object;Lo/checkNotNull;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/checkNotNull;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;)TT;"
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;II)V"
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Lo/getApiFeatures;)Z
.end method

.method abstract onPostMessage(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract onPostMessage(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method abstract onRelationshipValidationResult(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method
