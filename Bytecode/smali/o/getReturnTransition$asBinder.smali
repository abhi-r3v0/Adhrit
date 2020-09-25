.class final Lo/getReturnTransition$asBinder;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getReturnTransition;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field private synthetic onMessageChannelReady:Lo/getReturnTransition;


# direct methods
.method constructor <init>(Lo/getReturnTransition;)V
    .locals 0

    iput-object p1, p0, Lo/getReturnTransition$asBinder;->onMessageChannelReady:Lo/getReturnTransition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 47
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1108
    iget-object p1, p0, Lo/getReturnTransition$asBinder;->onMessageChannelReady:Lo/getReturnTransition;

    .line 2000
    iget-object p1, p1, Lo/getReturnTransition;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getMoveDuration;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 1108
    invoke-static {p1, v0, v1, v2, v3}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 1109
    iget-object p1, p0, Lo/getReturnTransition$asBinder;->onMessageChannelReady:Lo/getReturnTransition;

    .line 3000
    iget-object p1, p1, Lo/getReturnTransition;->extraCallback:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lo/getMoveDuration;

    .line 1109
    iget-object p1, p0, Lo/getReturnTransition$asBinder;->onMessageChannelReady:Lo/getReturnTransition;

    invoke-static {p1}, Lo/getReturnTransition;->ICustomTabsCallback(Lo/getReturnTransition;)Lo/onDetach$onPostMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3106
    iget-object v0, p1, Lo/onDetach$onPostMessage;->ICustomTabsCallback:Ljava/util/List;

    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0xd

    const/4 v2, 0x0

    const-string v6, "ad_upi_pitch"

    .line 1109
    invoke-static/range {v1 .. v7}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Lo/onDetach$asInterface;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    .line 47
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
