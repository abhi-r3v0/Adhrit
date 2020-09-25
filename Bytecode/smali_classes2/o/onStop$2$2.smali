.class final Lo/onStop$2$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onStop$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/onStop$2;


# direct methods
.method constructor <init>(Lo/onStop$2;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lo/onStop$2$2;->onNavigationEvent:Lo/onStop$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 140
    :goto_0
    iget-object v0, p0, Lo/onStop$2$2;->onNavigationEvent:Lo/onStop$2;

    iget-object v0, v0, Lo/onStop$2;->onPostMessage:Lo/onStop$onNavigationEvent;

    invoke-virtual {v0}, Lo/onStop$onNavigationEvent;->onPostMessage()Lo/onStop$extraCallback;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 144
    iget v1, v0, Lo/onStop$extraCallback;->ICustomTabsCallback:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported message, what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lo/onStop$extraCallback;->ICustomTabsCallback:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThreadUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 160
    :cond_0
    iget-object v0, v0, Lo/onStop$extraCallback;->asInterface:Ljava/lang/Object;

    check-cast v0, Landroidx/recyclerview/widget/TileList$Tile;

    .line 161
    iget-object v1, p0, Lo/onStop$2$2;->onNavigationEvent:Lo/onStop$2;

    iget-object v1, v1, Lo/onStop$2;->onMessageChannelReady:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    invoke-interface {v1, v0}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->recycleTile(Landroidx/recyclerview/widget/TileList$Tile;)V

    goto :goto_0

    .line 156
    :cond_1
    iget-object v1, p0, Lo/onStop$2$2;->onNavigationEvent:Lo/onStop$2;

    iget-object v1, v1, Lo/onStop$2;->onMessageChannelReady:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iget v2, v0, Lo/onStop$extraCallback;->onPostMessage:I

    iget v0, v0, Lo/onStop$extraCallback;->extraCallback:I

    invoke-interface {v1, v2, v0}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->loadTile(II)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v1, p0, Lo/onStop$2$2;->onNavigationEvent:Lo/onStop$2;

    iget-object v1, v1, Lo/onStop$2;->onPostMessage:Lo/onStop$onNavigationEvent;

    invoke-virtual {v1, v3}, Lo/onStop$onNavigationEvent;->onMessageChannelReady(I)V

    .line 151
    iget-object v1, p0, Lo/onStop$2$2;->onNavigationEvent:Lo/onStop$2;

    iget-object v1, v1, Lo/onStop$2;->onPostMessage:Lo/onStop$onNavigationEvent;

    invoke-virtual {v1, v2}, Lo/onStop$onNavigationEvent;->onMessageChannelReady(I)V

    .line 152
    iget-object v1, p0, Lo/onStop$2$2;->onNavigationEvent:Lo/onStop$2;

    iget-object v2, v1, Lo/onStop$2;->onMessageChannelReady:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iget v3, v0, Lo/onStop$extraCallback;->onPostMessage:I

    iget v4, v0, Lo/onStop$extraCallback;->extraCallback:I

    iget v5, v0, Lo/onStop$extraCallback;->onMessageChannelReady:I

    iget v6, v0, Lo/onStop$extraCallback;->asBinder:I

    iget v7, v0, Lo/onStop$extraCallback;->onTransact:I

    invoke-interface/range {v2 .. v7}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->updateRange(IIIII)V

    goto :goto_0

    .line 146
    :cond_3
    iget-object v1, p0, Lo/onStop$2$2;->onNavigationEvent:Lo/onStop$2;

    iget-object v1, v1, Lo/onStop$2;->onPostMessage:Lo/onStop$onNavigationEvent;

    invoke-virtual {v1, v2}, Lo/onStop$onNavigationEvent;->onMessageChannelReady(I)V

    .line 147
    iget-object v1, p0, Lo/onStop$2$2;->onNavigationEvent:Lo/onStop$2;

    iget-object v1, v1, Lo/onStop$2;->onMessageChannelReady:Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;

    iget v0, v0, Lo/onStop$extraCallback;->onPostMessage:I

    invoke-interface {v1, v0}, Landroidx/recyclerview/widget/ThreadUtil$BackgroundCallback;->refresh(I)V

    goto :goto_0

    .line 167
    :cond_4
    iget-object v0, p0, Lo/onStop$2$2;->onNavigationEvent:Lo/onStop$2;

    iget-object v0, v0, Lo/onStop$2;->extraCallback:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
