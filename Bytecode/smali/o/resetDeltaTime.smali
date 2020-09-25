.class public final Lo/resetDeltaTime;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final ICustomTabsCallback:I

.field private extraCallback:I

.field public final onMessageChannelReady:Lo/setPageMargin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPageMargin<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private onNavigationEvent:J

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 32
    iput p1, p0, Lo/resetDeltaTime;->ICustomTabsCallback:I

    .line 33
    iput p2, p0, Lo/resetDeltaTime;->onPostMessage:I

    .line 34
    new-instance p1, Lo/resetDeltaTime$4;

    invoke-direct {p1, p0}, Lo/resetDeltaTime$4;-><init>(Lo/resetDeltaTime;)V

    iput-object p1, p0, Lo/resetDeltaTime;->onMessageChannelReady:Lo/setPageMargin;

    return-void

    .line 2111
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 1111
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method


# virtual methods
.method public final declared-synchronized extraCallback()I
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    iget v0, p0, Lo/resetDeltaTime;->onPostMessage:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onMessageChannelReady()I
    .locals 1

    monitor-enter p0

    .line 83
    :try_start_0
    iget v0, p0, Lo/resetDeltaTime;->extraCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onNavigationEvent()J
    .locals 2

    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lo/resetDeltaTime;->onNavigationEvent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onNavigationEvent(Landroid/graphics/Bitmap;)V
    .locals 9

    monitor-enter p0

    .line 70
    :try_start_0
    invoke-static {p1}, Lo/setDeepLinkData;->ICustomTabsCallback(Landroid/graphics/Bitmap;)I

    move-result p1

    .line 71
    iget v0, p0, Lo/resetDeltaTime;->extraCallback:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "No bitmaps registered."

    if-eqz v0, :cond_3

    int-to-long v3, p1

    .line 72
    iget-wide v5, p0, Lo/resetDeltaTime;->onNavigationEvent:J

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v5, "Bitmap size bigger than the total registered size: %d, %d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 75
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v1

    iget-wide v7, p0, Lo/resetDeltaTime;->onNavigationEvent:J

    .line 76
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v6, v2

    if-eqz v0, :cond_2

    .line 77
    iget-wide v0, p0, Lo/resetDeltaTime;->onNavigationEvent:J

    sub-long/2addr v0, v3

    iput-wide v0, p0, Lo/resetDeltaTime;->onNavigationEvent:J

    .line 78
    iget p1, p0, Lo/resetDeltaTime;->extraCallback:I

    sub-int/2addr p1, v2

    iput p1, p0, Lo/resetDeltaTime;->extraCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 2149
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v5, v6}, Lo/extraCallback$extraCallback;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2125
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPostMessage()I
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    iget v0, p0, Lo/resetDeltaTime;->ICustomTabsCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onPostMessage(Landroid/graphics/Bitmap;)Z
    .locals 6

    monitor-enter p0

    .line 55
    :try_start_0
    invoke-static {p1}, Lo/setDeepLinkData;->ICustomTabsCallback(Landroid/graphics/Bitmap;)I

    move-result p1

    .line 56
    iget v0, p0, Lo/resetDeltaTime;->extraCallback:I

    iget v1, p0, Lo/resetDeltaTime;->ICustomTabsCallback:I

    if-ge v0, v1, :cond_1

    iget-wide v0, p0, Lo/resetDeltaTime;->onNavigationEvent:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iget p1, p0, Lo/resetDeltaTime;->onPostMessage:I

    int-to-long v4, p1

    cmp-long p1, v0, v4

    if-lez p1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget p1, p0, Lo/resetDeltaTime;->extraCallback:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lo/resetDeltaTime;->extraCallback:I

    .line 60
    iget-wide v4, p0, Lo/resetDeltaTime;->onNavigationEvent:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lo/resetDeltaTime;->onNavigationEvent:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 57
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
