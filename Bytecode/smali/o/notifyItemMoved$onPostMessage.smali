.class public final Lo/notifyItemMoved$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/RecyclerView$Recycler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/notifyItemMoved;->onPostMessage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/RecyclerView$Recycler<",
        "Lcom/dreamplug/fabrik/ui/main/ProfilePicResponse;",
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
        "com/dreamplug/fabrik/ui/main/ProfilePicViewModel$uploadProfilePic$1",
        "Lcom/dreamplug/network/helper/BaseCallback;",
        "Lcom/dreamplug/fabrik/ui/main/ProfilePicResponse;",
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
.field private synthetic onMessageChannelReady:Lo/notifyItemMoved;


# direct methods
.method constructor <init>(Lo/notifyItemMoved;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    iput-object p1, p0, Lo/notifyItemMoved$onPostMessage;->onMessageChannelReady:Lo/notifyItemMoved;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 7

    .line 74
    check-cast p2, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz p1, :cond_0

    .line 3085
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 3086
    :cond_0
    iget-object v0, p0, Lo/notifyItemMoved$onPostMessage;->onMessageChannelReady:Lo/notifyItemMoved;

    .line 4026
    iget-object v0, v0, Lo/notifyItemMoved;->onMessageChannelReady:Lo/setActive;

    .line 3086
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    const/4 v0, 0x2

    new-array v1, v0, [Lo/addWrite;

    .line 4043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v3, "source"

    const-string v4, "network"

    invoke-direct {v2, v3, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 3089
    invoke-virtual {p2}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 5043
    :goto_0
    new-instance v5, Lo/addWrite;

    const-string v6, "reason"

    invoke-direct {v5, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, v1, v2

    const-string v2, "pairs"

    .line 3087
    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "profile_pic_failure"

    .line 3087
    invoke-static {v0, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 3091
    iget-object v0, p0, Lo/notifyItemMoved$onPostMessage;->onMessageChannelReady:Lo/notifyItemMoved;

    .line 6027
    iget-object v0, v0, Lo/notifyItemMoved;->onNavigationEvent:Lo/setActive;

    .line 3091
    new-instance v1, Lo/notifyItemMoved$onMessageChannelReady;

    invoke-static {p1, p2}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lo/notifyItemMoved$onMessageChannelReady;-><init>(ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 2

    .line 74
    check-cast p1, Lcom/dreamplug/fabrik/ui/main/ProfilePicResponse;

    .line 1076
    iget-object v0, p0, Lo/notifyItemMoved$onPostMessage;->onMessageChannelReady:Lo/notifyItemMoved;

    .line 2026
    iget-object v0, v0, Lo/notifyItemMoved;->onMessageChannelReady:Lo/setActive;

    .line 1076
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 1078
    sget-object v0, Lo/shouldCollapse;->ICustomTabsCallback:Lo/shouldCollapse;

    invoke-static {}, Lo/shouldCollapse;->onPostMessage()Lo/setActive;

    move-result-object v0

    .line 3013
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/main/ProfilePicResponse;->onNavigationEvent:Ljava/lang/String;

    .line 1078
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1081
    :cond_0
    iget-object p1, p0, Lo/notifyItemMoved$onPostMessage;->onMessageChannelReady:Lo/notifyItemMoved;

    .line 3027
    iget-object p1, p1, Lo/notifyItemMoved;->onNavigationEvent:Lo/setActive;

    .line 1081
    new-instance v0, Lo/notifyItemMoved$onMessageChannelReady;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/notifyItemMoved$onMessageChannelReady;-><init>(Z)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method
