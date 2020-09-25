.class final Lo/PopupMenu$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/PopupMenu;
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
.field private synthetic ICustomTabsCallback:Lo/PopupMenu;

.field private synthetic onMessageChannelReady:Landroid/view/View;


# direct methods
.method constructor <init>(Lo/PopupMenu;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lo/PopupMenu$ICustomTabsCallback;->ICustomTabsCallback:Lo/PopupMenu;

    iput-object p2, p0, Lo/PopupMenu$ICustomTabsCallback;->onMessageChannelReady:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 155
    iget-object v0, p0, Lo/PopupMenu$ICustomTabsCallback;->ICustomTabsCallback:Lo/PopupMenu;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->mainContainer:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/prepareFromUri;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lo/PopupMenu$ICustomTabsCallback;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method
