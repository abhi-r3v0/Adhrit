.class final Lo/onActivityStarted$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityStarted;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field private synthetic onMessageChannelReady:Lo/onActivityStarted;


# direct methods
.method constructor <init>(Lo/onActivityStarted;)V
    .locals 0

    iput-object p1, p0, Lo/onActivityStarted$asBinder;->onMessageChannelReady:Lo/onActivityStarted;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 38
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1108
    iget-object p1, p0, Lo/onActivityStarted$asBinder;->onMessageChannelReady:Lo/onActivityStarted;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    instance-of v0, p1, Lo/getViewPosition;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lo/getViewPosition;

    const-string v0, "contact_invite"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-string/jumbo v2, "tag"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1669
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1108
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    .line 1110
    iget-object p1, p0, Lo/onActivityStarted$asBinder;->onMessageChannelReady:Lo/onActivityStarted;

    .line 2000
    iget-object p1, p1, Lo/onActivityStarted;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const/4 v2, 0x6

    .line 1110
    invoke-static {p1, v0, v1, v1, v2}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    goto :goto_2

    .line 1112
    :cond_3
    iget-object p1, p0, Lo/onActivityStarted$asBinder;->onMessageChannelReady:Lo/onActivityStarted;

    .line 3000
    iget-object p1, p1, Lo/onActivityStarted;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    .line 1112
    iget-object v0, p0, Lo/onActivityStarted$asBinder;->onMessageChannelReady:Lo/onActivityStarted;

    invoke-static {v0}, Lo/onActivityStarted;->ICustomTabsCallback(Lo/onActivityStarted;)Lo/onActivityStarted$extraCallback;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 3194
    :cond_4
    iget-object v0, v0, Lo/onActivityStarted$extraCallback;->onPostMessage:Ljava/lang/String;

    .line 3230
    new-instance v2, Lo/onGetChildDrawingOrder$ICustomTabsService$Stub;

    new-instance v3, Lo/onActivityResumed$onNavigationEvent;

    const-string v4, "invite_management"

    const-string v5, "gift"

    invoke-direct {v3, v4, v1, v5, v0}, Lo/onActivityResumed$onNavigationEvent;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lo/onGetChildDrawingOrder$ICustomTabsService$Stub;-><init>(Lo/onActivityResumed$onNavigationEvent;)V

    check-cast v2, Lo/getRemoveDuration;

    invoke-virtual {p1, v2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 38
    :goto_2
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
