.class final Lo/onStop$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onStop;->extraCallback(Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/os/Handler;

.field final extraCallback:Lo/onStop$onNavigationEvent;

.field final synthetic onMessageChannelReady:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

.field final synthetic onNavigationEvent:Lo/onStop;

.field private onPostMessage:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lo/onStop;Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lo/onStop$3;->onNavigationEvent:Lo/onStop;

    iput-object p2, p0, Lo/onStop$3;->onMessageChannelReady:Landroidx/recyclerview/widget/ThreadUtil$MainThreadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance p1, Lo/onStop$onNavigationEvent;

    invoke-direct {p1}, Lo/onStop$onNavigationEvent;-><init>()V

    iput-object p1, p0, Lo/onStop$3;->extraCallback:Lo/onStop$onNavigationEvent;

    .line 33
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lo/onStop$3;->ICustomTabsCallback:Landroid/os/Handler;

    .line 59
    new-instance p1, Lo/onStop$3$1;

    invoke-direct {p1, p0}, Lo/onStop$3$1;-><init>(Lo/onStop$3;)V

    iput-object p1, p0, Lo/onStop$3;->onPostMessage:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final addTile(ILandroidx/recyclerview/widget/TileList$Tile;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/recyclerview/widget/TileList$Tile<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x2

    .line 46
    invoke-static {v0, p1, p2}, Lo/onStop$extraCallback;->ICustomTabsCallback(IILjava/lang/Object;)Lo/onStop$extraCallback;

    move-result-object p1

    .line 2055
    iget-object p2, p0, Lo/onStop$3;->extraCallback:Lo/onStop$onNavigationEvent;

    invoke-virtual {p2, p1}, Lo/onStop$onNavigationEvent;->ICustomTabsCallback(Lo/onStop$extraCallback;)V

    .line 2056
    iget-object p1, p0, Lo/onStop$3;->ICustomTabsCallback:Landroid/os/Handler;

    iget-object p2, p0, Lo/onStop$3;->onPostMessage:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final removeTile(II)V
    .locals 1

    const/4 v0, 0x3

    .line 51
    invoke-static {v0, p1, p2}, Lo/onStop$extraCallback;->onMessageChannelReady(III)Lo/onStop$extraCallback;

    move-result-object p1

    .line 3055
    iget-object p2, p0, Lo/onStop$3;->extraCallback:Lo/onStop$onNavigationEvent;

    invoke-virtual {p2, p1}, Lo/onStop$onNavigationEvent;->ICustomTabsCallback(Lo/onStop$extraCallback;)V

    .line 3056
    iget-object p1, p0, Lo/onStop$3;->ICustomTabsCallback:Landroid/os/Handler;

    iget-object p2, p0, Lo/onStop$3;->onPostMessage:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final updateItemCount(II)V
    .locals 1

    const/4 v0, 0x1

    .line 41
    invoke-static {v0, p1, p2}, Lo/onStop$extraCallback;->onMessageChannelReady(III)Lo/onStop$extraCallback;

    move-result-object p1

    .line 1055
    iget-object p2, p0, Lo/onStop$3;->extraCallback:Lo/onStop$onNavigationEvent;

    invoke-virtual {p2, p1}, Lo/onStop$onNavigationEvent;->ICustomTabsCallback(Lo/onStop$extraCallback;)V

    .line 1056
    iget-object p1, p0, Lo/onStop$3;->ICustomTabsCallback:Landroid/os/Handler;

    iget-object p2, p0, Lo/onStop$3;->onPostMessage:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
