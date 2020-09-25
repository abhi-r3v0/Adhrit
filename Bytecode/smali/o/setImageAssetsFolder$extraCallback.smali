.class final Lo/setImageAssetsFolder$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setImageAssetsFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/addAnimatorListener;

.field private final extraCallback:Lo/reverseAnimationSpeed;

.field private synthetic onMessageChannelReady:Lo/setImageAssetsFolder;

.field private final onNavigationEvent:I

.field private final onPostMessage:I


# direct methods
.method public constructor <init>(Lo/setImageAssetsFolder;Lo/reverseAnimationSpeed;Lo/addAnimatorListener;II)V
    .locals 0

    .line 93
    iput-object p1, p0, Lo/setImageAssetsFolder$extraCallback;->onMessageChannelReady:Lo/setImageAssetsFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p2, p0, Lo/setImageAssetsFolder$extraCallback;->extraCallback:Lo/reverseAnimationSpeed;

    .line 95
    iput-object p3, p0, Lo/setImageAssetsFolder$extraCallback;->ICustomTabsCallback:Lo/addAnimatorListener;

    .line 96
    iput p4, p0, Lo/setImageAssetsFolder$extraCallback;->onPostMessage:I

    .line 97
    iput p5, p0, Lo/setImageAssetsFolder$extraCallback;->onNavigationEvent:I

    return-void
.end method

.method private onNavigationEvent(II)Z
    .locals 6

    const/4 v0, 0x2

    :goto_0
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq p2, v1, :cond_0

    .line 142
    :try_start_0
    iget-object p2, p0, Lo/setImageAssetsFolder$extraCallback;->onMessageChannelReady:Lo/setImageAssetsFolder;

    .line 143
    invoke-static {p2}, Lo/setImageAssetsFolder;->extraCallback(Lo/setImageAssetsFolder;)Lo/setPosition;

    move-result-object p2

    iget-object v1, p0, Lo/setImageAssetsFolder$extraCallback;->extraCallback:Lo/reverseAnimationSpeed;

    .line 144
    invoke-interface {v1}, Lo/reverseAnimationSpeed;->ICustomTabsCallback()I

    move-result v1

    iget-object v4, p0, Lo/setImageAssetsFolder$extraCallback;->extraCallback:Lo/reverseAnimationSpeed;

    .line 145
    invoke-interface {v4}, Lo/reverseAnimationSpeed;->onPostMessage()I

    move-result v4

    iget-object v5, p0, Lo/setImageAssetsFolder$extraCallback;->onMessageChannelReady:Lo/setImageAssetsFolder;

    .line 146
    invoke-static {v5}, Lo/setImageAssetsFolder;->onMessageChannelReady(Lo/setImageAssetsFolder;)Landroid/graphics/Bitmap$Config;

    move-result-object v5

    .line 1067
    invoke-virtual {p2, v1, v4, v5}, Lo/setPosition;->onPostMessage(IILandroid/graphics/Bitmap$Config;)Lo/getRootAlpha;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, p2

    const/4 p2, -0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 150
    :try_start_1
    invoke-static {}, Lo/setImageAssetsFolder;->onPostMessage()Ljava/lang/Class;

    move-result-object p2

    const-string v0, "Failed to create frame bitmap"

    invoke-static {p2, v0, p1}, Lo/setTranslateX;->onNavigationEvent(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-static {v3}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    const/4 p1, 0x0

    return p1

    .line 132
    :cond_0
    :try_start_2
    iget-object p2, p0, Lo/setImageAssetsFolder$extraCallback;->ICustomTabsCallback:Lo/addAnimatorListener;

    iget-object v1, p0, Lo/setImageAssetsFolder$extraCallback;->extraCallback:Lo/reverseAnimationSpeed;

    .line 135
    invoke-interface {v1}, Lo/reverseAnimationSpeed;->ICustomTabsCallback()I

    iget-object v1, p0, Lo/setImageAssetsFolder$extraCallback;->extraCallback:Lo/reverseAnimationSpeed;

    .line 136
    invoke-interface {v1}, Lo/reverseAnimationSpeed;->onPostMessage()I

    .line 133
    invoke-interface {p2}, Lo/addAnimatorListener;->ICustomTabsCallback()Lo/getRootAlpha;

    move-result-object p2

    move-object v3, p2

    const/4 p2, 0x2

    .line 159
    :goto_1
    invoke-direct {p0, p1, v3}, Lo/setImageAssetsFolder$extraCallback;->onPostMessage(ILo/getRootAlpha;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    invoke-static {v3}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    if-nez v1, :cond_2

    if-ne p2, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 p2, 0x2

    goto :goto_0

    :cond_2
    :goto_2
    return v1

    :catchall_0
    move-exception p1

    invoke-static {v3}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw p1
.end method

.method private onPostMessage(ILo/getRootAlpha;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    .line 176
    invoke-static {p2}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 180
    :cond_0
    iget-object v0, p0, Lo/setImageAssetsFolder$extraCallback;->onMessageChannelReady:Lo/setImageAssetsFolder;

    invoke-static {v0}, Lo/setImageAssetsFolder;->onNavigationEvent(Lo/setImageAssetsFolder;)Lo/removeUpdateListener;

    move-result-object v0

    invoke-virtual {p2}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-interface {v0, p1, v2}, Lo/removeUpdateListener;->onPostMessage(ILandroid/graphics/Bitmap;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 183
    :cond_1
    invoke-static {}, Lo/setImageAssetsFolder;->onPostMessage()Ljava/lang/Class;

    move-result-object p1

    iget v0, p0, Lo/setImageAssetsFolder$extraCallback;->onPostMessage:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "Frame %d ready."

    invoke-static {p1, v1, v0}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 185
    iget-object p1, p0, Lo/setImageAssetsFolder$extraCallback;->onMessageChannelReady:Lo/setImageAssetsFolder;

    invoke-static {p1}, Lo/setImageAssetsFolder;->ICustomTabsCallback(Lo/setImageAssetsFolder;)Landroid/util/SparseArray;

    move-result-object p1

    monitor-enter p1

    .line 186
    :try_start_0
    iget-object v0, p0, Lo/setImageAssetsFolder$extraCallback;->ICustomTabsCallback:Lo/addAnimatorListener;

    iget v1, p0, Lo/setImageAssetsFolder$extraCallback;->onPostMessage:I

    invoke-interface {v0, v1, p2}, Lo/addAnimatorListener;->extraCallback(ILo/getRootAlpha;)V

    .line 187
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 104
    :try_start_0
    iget-object v0, p0, Lo/setImageAssetsFolder$extraCallback;->ICustomTabsCallback:Lo/addAnimatorListener;

    iget v1, p0, Lo/setImageAssetsFolder$extraCallback;->onPostMessage:I

    invoke-interface {v0, v1}, Lo/addAnimatorListener;->ICustomTabsCallback(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lo/setImageAssetsFolder;->onPostMessage()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Frame %d is cached already."

    iget v2, p0, Lo/setImageAssetsFolder$extraCallback;->onPostMessage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 116
    iget-object v0, p0, Lo/setImageAssetsFolder$extraCallback;->onMessageChannelReady:Lo/setImageAssetsFolder;

    invoke-static {v0}, Lo/setImageAssetsFolder;->ICustomTabsCallback(Lo/setImageAssetsFolder;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 117
    :try_start_1
    iget-object v1, p0, Lo/setImageAssetsFolder$extraCallback;->onMessageChannelReady:Lo/setImageAssetsFolder;

    invoke-static {v1}, Lo/setImageAssetsFolder;->ICustomTabsCallback(Lo/setImageAssetsFolder;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lo/setImageAssetsFolder$extraCallback;->onNavigationEvent:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 118
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 110
    :cond_0
    :try_start_2
    iget v0, p0, Lo/setImageAssetsFolder$extraCallback;->onPostMessage:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lo/setImageAssetsFolder$extraCallback;->onNavigationEvent(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    invoke-static {}, Lo/setImageAssetsFolder;->onPostMessage()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Prepared frame frame %d."

    iget v2, p0, Lo/setImageAssetsFolder$extraCallback;->onPostMessage:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {}, Lo/setImageAssetsFolder;->onPostMessage()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Could not prepare frame %d."

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lo/setImageAssetsFolder$extraCallback;->onPostMessage:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v2, v1}, Lo/setTranslateX;->extraCallback(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 116
    :goto_0
    iget-object v0, p0, Lo/setImageAssetsFolder$extraCallback;->onMessageChannelReady:Lo/setImageAssetsFolder;

    invoke-static {v0}, Lo/setImageAssetsFolder;->ICustomTabsCallback(Lo/setImageAssetsFolder;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 117
    :try_start_3
    iget-object v1, p0, Lo/setImageAssetsFolder$extraCallback;->onMessageChannelReady:Lo/setImageAssetsFolder;

    invoke-static {v1}, Lo/setImageAssetsFolder;->ICustomTabsCallback(Lo/setImageAssetsFolder;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lo/setImageAssetsFolder$extraCallback;->onNavigationEvent:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 118
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_2
    move-exception v0

    .line 116
    iget-object v1, p0, Lo/setImageAssetsFolder$extraCallback;->onMessageChannelReady:Lo/setImageAssetsFolder;

    invoke-static {v1}, Lo/setImageAssetsFolder;->ICustomTabsCallback(Lo/setImageAssetsFolder;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 117
    :try_start_4
    iget-object v2, p0, Lo/setImageAssetsFolder$extraCallback;->onMessageChannelReady:Lo/setImageAssetsFolder;

    invoke-static {v2}, Lo/setImageAssetsFolder;->ICustomTabsCallback(Lo/setImageAssetsFolder;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lo/setImageAssetsFolder$extraCallback;->onNavigationEvent:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 118
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0
.end method
