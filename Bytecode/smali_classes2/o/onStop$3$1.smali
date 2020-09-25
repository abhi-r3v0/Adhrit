.class final Lo/onStop$3$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onStop$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/onStop$3;


# direct methods
.method constructor <init>(Lo/onStop$3;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lo/onStop$3$1;->onNavigationEvent:Lo/onStop$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 62
    iget-object v0, p0, Lo/onStop$3$1;->onNavigationEvent:Lo/onStop$3;

    iget-object v0, v0, Lo/onStop$3;->extraCallback:Lo/onStop$onNavigationEvent;

    invoke-virtual {v0}, Lo/onStop$onNavigationEvent;->onPostMessage()Lo/onStop$extraCallback;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 64
    iget v1, v0, Lo/onStop$extraCallback;->ICustomTabsCallback:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported message, what="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lo/onStop$extraCallback;->ICustomTabsCallback:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThreadUtil"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 74
    :cond_0
    iget-object v1, p0, Lo/onStop$3$1;->onNavigationEvent:Lo/onStop$3;

    iget-object v1, v1, Lo/onStop$3;->onMessageChannelReady:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v2, v0, Lo/onStop$extraCallback;->onPostMessage:I

    iget v0, v0, Lo/onStop$extraCallback;->extraCallback:I

    invoke-interface {v1, v2, v0}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->removeTile(II)V

    goto :goto_1

    .line 70
    :cond_1
    iget-object v1, v0, Lo/onStop$extraCallback;->asInterface:Ljava/lang/Object;

    check-cast v1, Landroidx/recyclerview/widget/TileList$Tile;

    .line 71
    iget-object v2, p0, Lo/onStop$3$1;->onNavigationEvent:Lo/onStop$3;

    iget-object v2, v2, Lo/onStop$3;->onMessageChannelReady:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v0, v0, Lo/onStop$extraCallback;->onPostMessage:I

    invoke-interface {v2, v0, v1}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V

    goto :goto_1

    .line 66
    :cond_2
    iget-object v1, p0, Lo/onStop$3$1;->onNavigationEvent:Lo/onStop$3;

    iget-object v1, v1, Lo/onStop$3;->onMessageChannelReady:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    iget v2, v0, Lo/onStop$extraCallback;->onPostMessage:I

    iget v0, v0, Lo/onStop$extraCallback;->extraCallback:I

    invoke-interface {v1, v2, v0}, Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;->updateItemCount(II)V

    .line 79
    :goto_1
    iget-object v0, p0, Lo/onStop$3$1;->onNavigationEvent:Lo/onStop$3;

    iget-object v0, v0, Lo/onStop$3;->extraCallback:Lo/onStop$onNavigationEvent;

    invoke-virtual {v0}, Lo/onStop$onNavigationEvent;->onPostMessage()Lo/onStop$extraCallback;

    move-result-object v0

    goto :goto_0

    :cond_3
    return-void
.end method
