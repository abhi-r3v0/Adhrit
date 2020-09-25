.class final Lo/computeScrollRange$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeScrollRange;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "insets",
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
.field private synthetic onMessageChannelReady:Lo/computeScrollRange;


# direct methods
.method constructor <init>(Lo/computeScrollRange;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollRange$onTransact;->onMessageChannelReady:Lo/computeScrollRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 65
    check-cast p1, Landroid/view/WindowInsets;

    .line 1394
    iget-object v0, p0, Lo/computeScrollRange$onTransact;->onMessageChannelReady:Lo/computeScrollRange;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->machineParent:I

    invoke-virtual {v0, v1}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const-string v1, "machineParent"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lo/computeScrollRange$onTransact;->onMessageChannelReady:Lo/computeScrollRange;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->machineParent:I

    invoke-virtual {v2, v3}, Lo/computeScrollRange;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    invoke-static {v2, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_0

    .line 1395
    invoke-virtual {p1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1394
    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
