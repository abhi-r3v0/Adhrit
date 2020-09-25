.class public Lo/invoke;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/addAnimatorListener;


# instance fields
.field private onMessageChannelReady:I

.field private onNavigationEvent:Lo/getRootAlpha;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1020
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1024
    iput v0, p0, Lo/invoke;->onMessageChannelReady:I

    return-void
.end method

.method private declared-synchronized onPostMessage()V
    .locals 1

    monitor-enter p0

    .line 1114
    :try_start_0
    iget-object v0, p0, Lo/invoke;->onNavigationEvent:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    const/4 v0, 0x0

    .line 1115
    iput-object v0, p0, Lo/invoke;->onNavigationEvent:Lo/getRootAlpha;

    const/4 v0, -0x1

    .line 1116
    iput v0, p0, Lo/invoke;->onMessageChannelReady:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1117
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized ICustomTabsCallback()Lo/getRootAlpha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1054
    :try_start_0
    iget-object v0, p0, Lo/invoke;->onNavigationEvent:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1056
    :try_start_1
    invoke-direct {p0}, Lo/invoke;->onPostMessage()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1054
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    .line 1056
    :try_start_2
    invoke-direct {p0}, Lo/invoke;->onPostMessage()V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ICustomTabsCallback(I)Z
    .locals 1

    monitor-enter p0

    .line 1062
    :try_start_0
    iget v0, p0, Lo/invoke;->onMessageChannelReady:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lo/invoke;->onNavigationEvent:Lo/getRootAlpha;

    invoke-static {p1}, Lo/getRootAlpha;->ICustomTabsCallback(Lo/getRootAlpha;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public extraCallback(ILo/getRootAlpha;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized onMessageChannelReady(I)Lo/getRootAlpha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1036
    :try_start_0
    iget v0, p0, Lo/invoke;->onMessageChannelReady:I

    if-ne v0, p1, :cond_0

    .line 1037
    iget-object p1, p0, Lo/invoke;->onNavigationEvent:Lo/getRootAlpha;

    invoke-static {p1}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 1039
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onMessageChannelReady()V
    .locals 1

    monitor-enter p0

    .line 1074
    :try_start_0
    invoke-direct {p0}, Lo/invoke;->onPostMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1075
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNavigationEvent()Lo/getRootAlpha;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1045
    :try_start_0
    iget-object v0, p0, Lo/invoke;->onNavigationEvent:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNavigationEvent(ILo/getRootAlpha;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 1082
    :try_start_0
    iget-object v0, p0, Lo/invoke;->onNavigationEvent:Lo/getRootAlpha;

    if-eqz v0, :cond_0

    .line 1084
    invoke-virtual {p2}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v1, p0, Lo/invoke;->onNavigationEvent:Lo/getRootAlpha;

    invoke-virtual {v1}, Lo/getRootAlpha;->onMessageChannelReady()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 1085
    monitor-exit p0

    return-void

    .line 1087
    :cond_0
    :try_start_1
    iget-object v0, p0, Lo/invoke;->onNavigationEvent:Lo/getRootAlpha;

    invoke-static {v0}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    .line 1091
    invoke-static {p2}, Lo/getRootAlpha;->onNavigationEvent(Lo/getRootAlpha;)Lo/getRootAlpha;

    move-result-object p2

    iput-object p2, p0, Lo/invoke;->onNavigationEvent:Lo/getRootAlpha;

    .line 1095
    iput p1, p0, Lo/invoke;->onMessageChannelReady:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1096
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
