.class final Lo/getSwipeDirs$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSwipeDirs;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/getSwipeDirs;


# direct methods
.method constructor <init>(Lo/getSwipeDirs;)V
    .locals 0

    iput-object p1, p0, Lo/getSwipeDirs$asInterface;->onNavigationEvent:Lo/getSwipeDirs;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 6

    .line 1155
    iget-object v0, p0, Lo/getSwipeDirs$asInterface;->onNavigationEvent:Lo/getSwipeDirs;

    .line 2051
    iget-object v0, v0, Lo/getSwipeDirs;->extraCallback:Lo/recycleFromStart;

    const-string v1, "aadharVid"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1155
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1156
    iget-object v0, p0, Lo/getSwipeDirs$asInterface;->onNavigationEvent:Lo/getSwipeDirs;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->nestedScrollView:I

    invoke-virtual {v0, v2}, Lo/getSwipeDirs;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/prepareFromUri;

    const-string v2, "nestedScrollView"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lo/getSwipeDirs$asInterface;->onNavigationEvent:Lo/getSwipeDirs;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v2

    const-string v3, "lifecycle"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v3, 0x12c

    new-instance v5, Lo/getSwipeDirs$asInterface$2;

    invoke-direct {v5, p0}, Lo/getSwipeDirs$asInterface$2;-><init>(Lo/getSwipeDirs$asInterface;)V

    check-cast v5, Lo/getServerTime;

    invoke-static {v0, v2, v3, v4, v5}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 1159
    iget-object v0, p0, Lo/getSwipeDirs$asInterface;->onNavigationEvent:Lo/getSwipeDirs;

    .line 3051
    iget-object v0, v0, Lo/getSwipeDirs;->extraCallback:Lo/recycleFromStart;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1159
    :cond_1
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lo/isCurrent$onMessageChannelReady;->onPostMessage(Landroid/view/View;)V

    .line 45
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
