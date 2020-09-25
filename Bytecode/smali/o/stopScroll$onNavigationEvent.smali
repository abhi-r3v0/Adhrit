.class final Lo/stopScroll$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/stopScroll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic extraCallback:Landroid/view/View;

.field private synthetic onPostMessage:Lo/toLegacyStreamType;


# direct methods
.method constructor <init>(Landroid/view/View;Lo/toLegacyStreamType;)V
    .locals 0

    iput-object p1, p0, Lo/stopScroll$onNavigationEvent;->extraCallback:Landroid/view/View;

    iput-object p2, p0, Lo/stopScroll$onNavigationEvent;->onPostMessage:Lo/toLegacyStreamType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 696
    sget-object v0, Lo/sortAndDedup;->onPostMessage:Lo/sortAndDedup;

    invoke-static {}, Lo/sortAndDedup;->onNavigationEvent()Lo/setActive;

    move-result-object v0

    iget-object v1, p0, Lo/stopScroll$onNavigationEvent;->onPostMessage:Lo/toLegacyStreamType;

    new-instance v2, Lo/stopScroll$onNavigationEvent$5;

    invoke-direct {v2, p0}, Lo/stopScroll$onNavigationEvent$5;-><init>(Lo/stopScroll$onNavigationEvent;)V

    check-cast v2, Lo/setPlaybackToRemote;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    return-void
.end method
