.class final Lo/ItemTouchHelper$SimpleCallback$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/ItemTouchHelper$SimpleCallback;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field final synthetic onNavigationEvent:Lo/ItemTouchHelper$SimpleCallback;


# direct methods
.method constructor <init>(Lo/ItemTouchHelper$SimpleCallback;)V
    .locals 0

    iput-object p1, p0, Lo/ItemTouchHelper$SimpleCallback$asBinder;->onNavigationEvent:Lo/ItemTouchHelper$SimpleCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 5

    .line 1178
    iget-object v0, p0, Lo/ItemTouchHelper$SimpleCallback$asBinder;->onNavigationEvent:Lo/ItemTouchHelper$SimpleCallback;

    .line 2052
    iget-object v0, v0, Lo/ItemTouchHelper$SimpleCallback;->onPostMessage:Landroid/widget/EditText;

    const-string v1, "captcha"

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1178
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1179
    iget-object v0, p0, Lo/ItemTouchHelper$SimpleCallback$asBinder;->onNavigationEvent:Lo/ItemTouchHelper$SimpleCallback;

    .line 3052
    iget-object v0, v0, Lo/ItemTouchHelper$SimpleCallback;->onPostMessage:Landroid/widget/EditText;

    if-nez v0, :cond_1

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1179
    :cond_1
    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lo/isCurrent$onMessageChannelReady;->onPostMessage(Landroid/view/View;)V

    .line 1180
    iget-object v0, p0, Lo/ItemTouchHelper$SimpleCallback$asBinder;->onNavigationEvent:Lo/ItemTouchHelper$SimpleCallback;

    .line 3053
    iget-object v0, v0, Lo/ItemTouchHelper$SimpleCallback;->onNavigationEvent:Lo/prepareFromUri;

    if-nez v0, :cond_2

    const-string v1, "nestedScrollView"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1180
    :cond_2
    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lo/ItemTouchHelper$SimpleCallback$asBinder;->onNavigationEvent:Lo/ItemTouchHelper$SimpleCallback;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    new-instance v4, Lo/ItemTouchHelper$SimpleCallback$asBinder$2;

    invoke-direct {v4, p0}, Lo/ItemTouchHelper$SimpleCallback$asBinder$2;-><init>(Lo/ItemTouchHelper$SimpleCallback$asBinder;)V

    check-cast v4, Lo/getServerTime;

    invoke-static {v0, v1, v2, v3, v4}, Lo/getTextOn;->ICustomTabsCallback(Landroid/view/View;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    .line 46
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
