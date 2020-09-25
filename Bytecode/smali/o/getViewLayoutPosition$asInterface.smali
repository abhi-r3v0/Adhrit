.class final Lo/getViewLayoutPosition$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getViewLayoutPosition;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Landroid/view/WindowInsets;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/WindowInsets;",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getViewLayoutPosition;


# direct methods
.method constructor <init>(Lo/getViewLayoutPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getViewLayoutPosition$asInterface;->onMessageChannelReady:Lo/getViewLayoutPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 63
    check-cast p1, Landroid/view/WindowInsets;

    .line 1319
    iget-object v0, p0, Lo/getViewLayoutPosition$asInterface;->onMessageChannelReady:Lo/getViewLayoutPosition;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->navigationView:I

    invoke-virtual {v0, v1}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/StaggeredGridLayoutManager$SavedState;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lo/StaggeredGridLayoutManager$SavedState;->setTopInset(I)V

    .line 1320
    iget-object v0, p0, Lo/getViewLayoutPosition$asInterface;->onMessageChannelReady:Lo/getViewLayoutPosition;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    :cond_1
    invoke-static {v0, v1}, Lo/getViewLayoutPosition;->onMessageChannelReady(Lo/getViewLayoutPosition;I)V

    .line 1321
    iget-object p1, p0, Lo/getViewLayoutPosition$asInterface;->onMessageChannelReady:Lo/getViewLayoutPosition;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->tabCoachLayout:I

    invoke-virtual {p1, v0}, Lo/getViewLayoutPosition;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onChildrenLoaded;

    if-eqz p1, :cond_2

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lo/getViewLayoutPosition$asInterface;->onMessageChannelReady:Lo/getViewLayoutPosition;

    invoke-static {v0}, Lo/getViewLayoutPosition;->onNavigationEvent(Lo/getViewLayoutPosition;)I

    move-result v0

    .line 1489
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1490
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    .line 1491
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    .line 1494
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    return-void
.end method
