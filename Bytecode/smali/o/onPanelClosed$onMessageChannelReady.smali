.class public final Lo/onPanelClosed$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onPanelClosed;->onNavigationEvent()Lo/setActive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RecyclerView$Recycler<",
        "Lclub/cred/credcurrency/CredPointCountModel;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003H\u0016J\u0012\u0010\t\u001a\u00020\u00052\u0008\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "club/cred/credcurrency/CredPointsCount$refresh$1",
        "Lcom/dreamplug/network/helper/BaseCallback;",
        "Lclub/cred/credcurrency/CredPointCountModel;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onFailure",
        "",
        "t",
        "",
        "errorResponse",
        "onResponse",
        "response",
        "credCurrency_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 1

    .line 58
    check-cast p1, Lclub/cred/credcurrency/CredPointCountModel;

    .line 1064
    sget-object v0, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    invoke-static {}, Lo/onPanelClosed;->onMessageChannelReady()Lo/setActive;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 1065
    sget-object v0, Lo/onPanelClosed;->onPostMessage:Lo/onPanelClosed;

    .line 2000
    sget-object v0, Lo/onPanelClosed;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setActive;

    .line 1065
    invoke-virtual {v0, p1}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
