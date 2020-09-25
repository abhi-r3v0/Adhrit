.class final Lo/getLayoutDimension$onNavigationEvent$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getLayoutDimension$onNavigationEvent;->onAnimationEnd(Landroid/view/animation/Animation;)V
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
.field private synthetic onMessageChannelReady:Lo/getLayoutDimension$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/getLayoutDimension$onNavigationEvent;)V
    .locals 0

    iput-object p1, p0, Lo/getLayoutDimension$onNavigationEvent$onPostMessage;->onMessageChannelReady:Lo/getLayoutDimension$onNavigationEvent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 10

    .line 1127
    iget-object v0, p0, Lo/getLayoutDimension$onNavigationEvent$onPostMessage;->onMessageChannelReady:Lo/getLayoutDimension$onNavigationEvent;

    iget-object v0, v0, Lo/getLayoutDimension$onNavigationEvent;->ICustomTabsCallback:Lo/getLayoutDimension;

    invoke-static {v0}, Lo/getLayoutDimension;->onNavigationEvent(Lo/getLayoutDimension;)Lo/setTitleMarginStart;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 1128
    new-instance v1, Lo/getThumbTintList;

    new-instance v9, Lo/setTitleMarginStart$extraCallback;

    .line 1130
    new-instance v7, Lo/requestPermissions;

    .line 1131
    new-instance v2, Lo/addWrite;

    iget-object v3, p0, Lo/getLayoutDimension$onNavigationEvent$onPostMessage;->onMessageChannelReady:Lo/getLayoutDimension$onNavigationEvent;

    iget-object v3, v3, Lo/getLayoutDimension$onNavigationEvent;->ICustomTabsCallback:Lo/getLayoutDimension;

    invoke-static {v3}, Lo/getLayoutDimension;->extraCallback(Lo/getLayoutDimension;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v3

    const-string v4, "onboarding_shared_lottie"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2019
    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "java.util.Collections.singletonList(element)"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x7e

    .line 1130
    invoke-direct {v7, v2, v3}, Lo/requestPermissions;-><init>(Ljava/util/List;I)V

    const-string v3, "CP_INTRO_FRAGMENT"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xe

    move-object v2, v9

    .line 1128
    invoke-direct/range {v2 .. v8}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v1, v9}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    .line 1127
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 119
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
