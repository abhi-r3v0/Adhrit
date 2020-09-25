.class public final Lo/PopupMenu$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/PopupMenu;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "androidx/core/view/ViewKt$postDelayed$runnable$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/PopupMenu;


# direct methods
.method public constructor <init>(Lo/PopupMenu;)V
    .locals 0

    iput-object p1, p0, Lo/PopupMenu$extraCallback;->extraCallback:Lo/PopupMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 337
    iget-object v0, p0, Lo/PopupMenu$extraCallback;->extraCallback:Lo/PopupMenu;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->container:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lo/PopupMenu$extraCallback;->extraCallback:Lo/PopupMenu;

    invoke-static {v0}, Lo/PopupMenu;->ICustomTabsCallback(Lo/PopupMenu;)V

    :cond_0
    return-void
.end method
