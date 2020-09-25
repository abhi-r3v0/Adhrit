.class final Lo/requestChildOnScreen$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/requestChildOnScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lo/getViewForPosition<",
        "+",
        "Lcom/dreamplug/androidapp/payments/model/DPBillResponse;",
        "+",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012&\u0010\u0002\u001a\"\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005 \u0006*\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/network/helper/Response;",
        "Lcom/dreamplug/androidapp/payments/model/DPBillResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/requestChildOnScreen;


# direct methods
.method constructor <init>(Lo/requestChildOnScreen;)V
    .locals 0

    iput-object p1, p0, Lo/requestChildOnScreen$onMessageChannelReady;->onPostMessage:Lo/requestChildOnScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    .line 35
    move-object/from16 v1, p1

    check-cast v1, Lo/getViewForPosition;

    .line 2010
    iget-object v2, v1, Lo/getViewForPosition;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v5, "pairs"

    const/4 v6, 0x2

    const-string/jumbo v7, "status"

    const-string v8, "checkout_create_order_api"

    if-eqz v2, :cond_2

    .line 3003
    iget-object v1, v1, Lo/getViewForPosition;->ICustomTabsCallback:Ljava/lang/Object;

    .line 1095
    check-cast v1, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;

    if-eqz v1, :cond_1

    .line 1097
    iget-object v2, v0, Lo/requestChildOnScreen$onMessageChannelReady;->onPostMessage:Lo/requestChildOnScreen;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/payments/model/DPBillResponse;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lo/requestChildOnScreen;->onNavigationEvent(Lo/requestChildOnScreen;Ljava/lang/String;)V

    .line 1098
    iget-object v2, v0, Lo/requestChildOnScreen$onMessageChannelReady;->onPostMessage:Lo/requestChildOnScreen;

    invoke-static {v2, v1}, Lo/requestChildOnScreen;->onPostMessage(Lo/requestChildOnScreen;Lcom/dreamplug/androidapp/payments/model/DPBillResponse;)V

    :cond_1
    new-array v1, v6, [Lo/addWrite;

    .line 3043
    new-instance v2, Lo/addWrite;

    const-string/jumbo v9, "success"

    invoke-direct {v2, v7, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, v4

    .line 1100
    iget-object v2, v0, Lo/requestChildOnScreen$onMessageChannelReady;->onPostMessage:Lo/requestChildOnScreen;

    invoke-static {v2}, Lo/requestChildOnScreen;->ICustomTabsCallback(Lo/requestChildOnScreen;)Ljava/lang/String;

    move-result-object v2

    .line 4043
    new-instance v4, Lo/addWrite;

    const-string v7, "order_id"

    invoke-direct {v4, v7, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v1, v3

    .line 1100
    invoke-static {v1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1100
    invoke-static {v8, v2}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    .line 1102
    :cond_2
    sget-object v2, Lo/getEpicenterBounds;->onMessageChannelReady:Lo/getEpicenterBounds;

    invoke-static {}, Lo/getEpicenterBounds;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    .line 5003
    iget-object v9, v1, Lo/getViewForPosition;->extraCallback:Ljava/lang/Throwable;

    .line 6003
    iget-object v10, v1, Lo/getViewForPosition;->onNavigationEvent:Ljava/lang/Object;

    .line 1103
    check-cast v10, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v9, v10}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    new-array v11, v10, [Lo/addWrite;

    .line 6043
    new-instance v12, Lo/addWrite;

    const-string v13, "failure"

    invoke-direct {v12, v7, v13}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v11, v4

    .line 7043
    new-instance v4, Lo/addWrite;

    const-string v7, "log_id"

    invoke-direct {v4, v7, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v11, v3

    .line 8043
    new-instance v3, Lo/addWrite;

    const-string v4, "error_message"

    invoke-direct {v3, v4, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v11, v6

    const/4 v3, 0x3

    .line 9003
    iget-object v4, v1, Lo/getViewForPosition;->extraCallback:Ljava/lang/Throwable;

    .line 10003
    iget-object v1, v1, Lo/getViewForPosition;->onNavigationEvent:Ljava/lang/Object;

    .line 1108
    check-cast v1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v4, v1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v1

    .line 10043
    new-instance v4, Lo/addWrite;

    const-string v6, "error_code"

    invoke-direct {v4, v6, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v4, v11, v3

    .line 1105
    invoke-static {v11, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v10}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v11}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1104
    invoke-static {v8, v1}, Lo/replaceAll;->onMessageChannelReady(Ljava/lang/String;Ljava/util/Map;)V

    .line 1109
    new-instance v12, Lo/setReenterTransition$onPostMessage;

    invoke-direct {v12}, Lo/setReenterTransition$onPostMessage;-><init>()V

    iget-object v1, v0, Lo/requestChildOnScreen$onMessageChannelReady;->onPostMessage:Lo/requestChildOnScreen;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v13

    if-nez v13, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    const-string v1, "context!!"

    invoke-static {v13, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n logId - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x18

    invoke-static/range {v12 .. v18}, Lo/setReenterTransition$onPostMessage;->onMessageChannelReady(Lo/setReenterTransition$onPostMessage;Landroid/content/Context;Ljava/lang/String;ZILjava/lang/Integer;I)V

    .line 1110
    iget-object v1, v0, Lo/requestChildOnScreen$onMessageChannelReady;->onPostMessage:Lo/requestChildOnScreen;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method
