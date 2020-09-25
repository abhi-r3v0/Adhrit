.class abstract Lo/StashDataResponseJsonAdapter;
.super Ljava/lang/Object;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract ICustomTabsCallback(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract ICustomTabsCallback(Ljava/lang/Object;Lo/UpcomingEmiData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/UpcomingEmiData;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method abstract asInterface(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method abstract extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation
.end method

.method abstract extraCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TB;)V"
        }
    .end annotation
.end method

.method final extraCallback(Ljava/lang/Object;Lo/Pitch;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;",
            "Lo/Pitch;",
            ")Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p2}, Lo/Pitch;->onMessageChannelReady()I

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

    invoke-interface {p2}, Lo/Pitch;->onTransact()I

    move-result p2

    invoke-virtual {p0, p1, v1, p2}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;II)V

    return v2

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->ICustomTabsCallback$Stub()Lcom/google/android/gms/internal/ads/zzbbv;

    move-result-object p1

    throw p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-virtual {p0}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    shl-int/lit8 v4, v1, 0x3

    or-int/2addr v3, v4

    :cond_3
    invoke-interface {p2}, Lo/Pitch;->ICustomTabsCallback()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_4

    invoke-virtual {p0, v0, p2}, Lo/StashDataResponseJsonAdapter;->extraCallback(Ljava/lang/Object;Lo/Pitch;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_4
    invoke-interface {p2}, Lo/Pitch;->onMessageChannelReady()I

    move-result p2

    if-ne v3, p2, :cond_5

    invoke-virtual {p0, v0}, Lo/StashDataResponseJsonAdapter;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lo/StashDataResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Object;ILjava/lang/Object;)V

    return v2

    :cond_5
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbu;->extraCallback()Lcom/google/android/gms/internal/ads/zzbbu;

    move-result-object p1

    throw p1

    :cond_6
    invoke-interface {p2}, Lo/Pitch;->ICustomTabsService()Lo/LoanStatusResponse$Input;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lo/StashDataResponseJsonAdapter;->onNavigationEvent(Ljava/lang/Object;ILo/LoanStatusResponse$Input;)V

    return v2

    :cond_7
    invoke-interface {p2}, Lo/Pitch;->ICustomTabsCallback$Stub()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lo/StashDataResponseJsonAdapter;->onPostMessage(Ljava/lang/Object;IJ)V

    return v2

    :cond_8
    invoke-interface {p2}, Lo/Pitch;->asBinder()J

    move-result-wide v3

    invoke-virtual {p0, p1, v1, v3, v4}, Lo/StashDataResponseJsonAdapter;->onNavigationEvent(Ljava/lang/Object;IJ)V

    return v2
.end method

.method abstract onMessageChannelReady()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
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

.method abstract onMessageChannelReady(Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;II)V"
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

.method abstract onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)V"
        }
    .end annotation
.end method

.method abstract onMessageChannelReady(Ljava/lang/Object;Lo/UpcomingEmiData;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/UpcomingEmiData;",
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

.method abstract onNavigationEvent(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract onNavigationEvent(Ljava/lang/Object;ILo/LoanStatusResponse$Input;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;I",
            "Lo/LoanStatusResponse$Input;",
            ")V"
        }
    .end annotation
.end method

.method abstract onPostMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)TT;"
        }
    .end annotation
.end method

.method abstract onPostMessage(Ljava/lang/Object;)V
.end method

.method abstract onPostMessage(Ljava/lang/Object;IJ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;IJ)V"
        }
    .end annotation
.end method

.method abstract onPostMessage(Lo/Pitch;)Z
.end method
