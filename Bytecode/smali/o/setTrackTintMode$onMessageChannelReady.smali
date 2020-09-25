.class public final Lo/setTrackTintMode$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setTrackTintMode;->onNavigationEvent(Lo/onSessionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RecyclerView$Recycler<",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00020\u0001J\u001c\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0002H\u0016J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016\u00a8\u0006\n"
    }
    d2 = {
        "com/dreamplug/androidapp/UserInfo$matchNotFound$1",
        "Lcom/dreamplug/network/helper/BaseCallback;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onFailure",
        "",
        "t",
        "",
        "errorResponse",
        "onResponse",
        "response",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onSessionEvent;


# direct methods
.method constructor <init>(Lo/onSessionEvent;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lo/setTrackTintMode$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 0

    .line 1072
    new-instance p1, Lo/inflateMenu;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lo/inflateMenu;-><init>(B)V

    iget-object p2, p0, Lo/setTrackTintMode$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    check-cast p2, Landroid/content/Context;

    invoke-virtual {p1, p2}, Lo/inflateMenu;->onPostMessage(Landroid/content/Context;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 1

    .line 1076
    new-instance p1, Lo/inflateMenu;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lo/inflateMenu;-><init>(B)V

    iget-object v0, p0, Lo/setTrackTintMode$onMessageChannelReady;->ICustomTabsCallback:Lo/onSessionEvent;

    check-cast v0, Landroid/content/Context;

    invoke-virtual {p1, v0}, Lo/inflateMenu;->onPostMessage(Landroid/content/Context;)V

    return-void
.end method
