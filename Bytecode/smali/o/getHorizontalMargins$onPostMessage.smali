.class public final Lo/getHorizontalMargins$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getHorizontalMargins;->onPostMessage(Ljava/util/Map;Lo/RecyclerView$Recycler;)V
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
        "com/dreamplug/androidapp/profile/UserStateUpdater$updateInternal$1",
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
.field private synthetic extraCallback:Ljava/util/Map;

.field private synthetic onNavigationEvent:Lo/RecyclerView$Recycler;

.field private synthetic onPostMessage:Lo/getHorizontalMargins;


# direct methods
.method constructor <init>(Lo/getHorizontalMargins;Ljava/util/Map;Lo/RecyclerView$Recycler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Lo/RecyclerView$Recycler;",
            ")V"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lo/getHorizontalMargins$onPostMessage;->onPostMessage:Lo/getHorizontalMargins;

    iput-object p2, p0, Lo/getHorizontalMargins$onPostMessage;->extraCallback:Ljava/util/Map;

    iput-object p3, p0, Lo/getHorizontalMargins$onPostMessage;->onNavigationEvent:Lo/RecyclerView$Recycler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 1

    .line 1022
    iget-object p1, p0, Lo/getHorizontalMargins$onPostMessage;->onPostMessage:Lo/getHorizontalMargins;

    .line 2008
    iget p2, p1, Lo/getHorizontalMargins;->onPostMessage:I

    add-int/lit8 p2, p2, 0x1

    .line 3008
    iput p2, p1, Lo/getHorizontalMargins;->onPostMessage:I

    .line 4008
    iget p1, p1, Lo/getHorizontalMargins;->onPostMessage:I

    const/4 p2, 0x3

    if-ge p1, p2, :cond_0

    .line 1023
    iget-object p1, p0, Lo/getHorizontalMargins$onPostMessage;->onPostMessage:Lo/getHorizontalMargins;

    iget-object p2, p0, Lo/getHorizontalMargins$onPostMessage;->extraCallback:Ljava/util/Map;

    const/4 v0, 0x0

    .line 4019
    invoke-virtual {p1, p2, v0}, Lo/getHorizontalMargins;->onPostMessage(Ljava/util/Map;Lo/RecyclerView$Recycler;)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 1

    .line 20
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    .line 4028
    iget-object v0, p0, Lo/getHorizontalMargins$onPostMessage;->onNavigationEvent:Lo/RecyclerView$Recycler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lo/RecyclerView$Recycler;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
