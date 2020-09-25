.class final Lo/onInterceptFocusSearch$onMessageChannelReady$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onInterceptFocusSearch$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/nextTransactionOrder<",
        "Ljava/lang/Throwable;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "throwable",
        "",
        "errorResponse",
        "Lcom/dreamplug/utils/model/BaseResponse;",
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
.field private synthetic onPostMessage:Lo/onInterceptFocusSearch$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/onInterceptFocusSearch$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lo/onInterceptFocusSearch$onMessageChannelReady$3;->onPostMessage:Lo/onInterceptFocusSearch$onMessageChannelReady;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 41
    check-cast p1, Ljava/lang/Throwable;

    check-cast p2, Lcom/dreamplug/utils/model/BaseResponse;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1199
    invoke-virtual {p2}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string/jumbo v2, "reward_usage_exceeded"

    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1200
    sget-object v1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    .line 2000
    sget-object v1, Lo/onDestroyOptionsMenu;->onTransact:Lo/setTitleTextColor;

    sget-object v2, Lo/onDestroyOptionsMenu;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1201
    sget-object v4, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    invoke-static {p1, p2}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1e

    invoke-static/range {v4 .. v10}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 1202
    iget-object p1, p0, Lo/onInterceptFocusSearch$onMessageChannelReady$3;->onPostMessage:Lo/onInterceptFocusSearch$onMessageChannelReady;

    iget-object p1, p1, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 1203
    :cond_1
    instance-of p1, v0, Lo/getDecoratedBottom$extraCallback;

    if-eqz p1, :cond_3

    .line 1204
    sget-object p1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    new-instance p2, Lo/onInterceptFocusSearch$onMessageChannelReady$3$2;

    invoke-direct {p2, v0}, Lo/onInterceptFocusSearch$onMessageChannelReady$3$2;-><init>(Landroidx/fragment/app/Fragment;)V

    check-cast p2, Lo/getServerTime;

    invoke-static {p1, p2}, Lo/updateItemAt;->ICustomTabsCallback(Lo/updateItemAt;Lo/getServerTime;)Ljava/io/Closeable;

    goto :goto_1

    .line 1209
    :cond_2
    sget-object v0, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    invoke-static {p1, p2}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    invoke-static/range {v0 .. v6}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    .line 41
    :cond_3
    :goto_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
