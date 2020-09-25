.class public final Lo/computeScrollExtent$onTransact;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/computeScrollExtent;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/Integer;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
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
.field public final synthetic onPostMessage:Lo/computeScrollExtent;


# direct methods
.method constructor <init>(Lo/computeScrollExtent;)V
    .locals 0

    iput-object p1, p0, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    .line 65
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto/16 :goto_4

    .line 1218
    :cond_0
    iget-object v1, v0, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    invoke-static {v1}, Lo/computeScrollExtent;->onPostMessage(Lo/computeScrollExtent;)Lo/updateLayoutState;

    move-result-object v1

    const-string v2, "card_settling"

    .line 5088
    iput-object v2, v1, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    .line 5089
    iget-object v1, v1, Lo/updateLayoutState;->onTransact:Lo/setActive;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto/16 :goto_4

    .line 1222
    :cond_1
    iget-object v1, v0, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    invoke-static {v1}, Lo/computeScrollExtent;->onPostMessage(Lo/computeScrollExtent;)Lo/updateLayoutState;

    move-result-object v1

    const-string v2, "redeeming"

    .line 6088
    iput-object v2, v1, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    .line 6089
    iget-object v1, v1, Lo/updateLayoutState;->onTransact:Lo/setActive;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1223
    iget-object v1, v0, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    .line 7068
    iget-object v1, v1, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v1, :cond_2

    .line 1223
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 8039
    :cond_2
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;->warmup:Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;

    if-eqz v1, :cond_3

    .line 8082
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;

    if-eqz v1, :cond_3

    .line 8091
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/EntityData;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 1224
    :goto_0
    iget-object v2, v0, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    invoke-static {v2}, Lo/computeScrollExtent;->extraCallback(Lo/computeScrollExtent;)Lo/stopScrollersInternal;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 8378
    sget-object v3, Lo/startInterceptRequestLayout;->onNavigationEvent:Lo/startInterceptRequestLayout;

    invoke-static {}, Lo/startInterceptRequestLayout;->extraCallback()Lo/setActive;

    move-result-object v3

    iget-object v4, v2, Lo/stopScrollersInternal;->onPostMessage:Lo/setPlaybackToRemote;

    invoke-virtual {v3, v4}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 8379
    sget-object v3, Lo/startInterceptRequestLayout;->onNavigationEvent:Lo/startInterceptRequestLayout;

    invoke-static {}, Lo/startInterceptRequestLayout;->onMessageChannelReady()Lo/setActive;

    move-result-object v3

    iget-object v2, v2, Lo/stopScrollersInternal;->extraCallback:Lo/setPlaybackToRemote;

    invoke-virtual {v3, v2}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 1225
    :cond_4
    iget-object v2, v0, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    .line 1226
    move-object v4, v2

    check-cast v4, Landroidx/fragment/app/Fragment;

    .line 9068
    iget-object v5, v2, Lo/computeScrollExtent;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v5, :cond_5

    .line 1227
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 1229
    :cond_5
    new-instance v3, Lo/computeScrollExtent$onTransact$1;

    invoke-direct {v3, v0}, Lo/computeScrollExtent$onTransact$1;-><init>(Lo/computeScrollExtent$onTransact;)V

    move-object v9, v3

    check-cast v9, Lo/getServerTime;

    if-nez v1, :cond_6

    const-string v3, ""

    move-object v12, v3

    goto :goto_1

    :cond_6
    move-object v12, v1

    .line 1237
    :goto_1
    new-instance v3, Lo/computeScrollExtent$onTransact$2;

    invoke-direct {v3, v0, v1}, Lo/computeScrollExtent$onTransact$2;-><init>(Lo/computeScrollExtent$onTransact;Ljava/lang/String;)V

    move-object v6, v3

    check-cast v6, Lo/getServerTime;

    .line 1248
    new-instance v1, Lo/computeScrollExtent$onTransact$5;

    invoke-direct {v1, v0}, Lo/computeScrollExtent$onTransact$5;-><init>(Lo/computeScrollExtent$onTransact;)V

    move-object v7, v1

    check-cast v7, Lo/getServerTime;

    .line 1254
    new-instance v1, Lo/computeScrollExtent$onTransact$3;

    invoke-direct {v1, v0}, Lo/computeScrollExtent$onTransact$3;-><init>(Lo/computeScrollExtent$onTransact;)V

    move-object v8, v1

    check-cast v8, Lo/rerunTransactionQueue;

    .line 1259
    iget-object v1, v0, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    invoke-static {v1}, Lo/computeScrollExtent;->onPostMessage(Lo/computeScrollExtent;)Lo/updateLayoutState;

    move-result-object v1

    .line 10053
    iget-object v3, v1, Lo/updateLayoutState;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v3, :cond_7

    const-string v1, "navigation"

    goto :goto_2

    .line 10056
    :cond_7
    iget-object v1, v1, Lo/updateLayoutState;->onRelationshipValidationResult:Ljava/lang/String;

    :goto_2
    move-object v13, v1

    .line 1260
    iget-object v1, v0, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    .line 10076
    iget-object v1, v1, Lo/computeScrollExtent;->extraCallback:Lo/computeScrollExtent$onNavigationEvent;

    if-eqz v1, :cond_8

    .line 10510
    iget v1, v1, Lo/computeScrollExtent$onNavigationEvent;->onPostMessage:I

    move v14, v1

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    const/4 v14, 0x0

    .line 1225
    :goto_3
    new-instance v1, Lo/stopScrollersInternal;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x40

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lo/stopScrollersInternal;-><init>(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;Lo/getServerTime;Lo/getServerTime;Lo/rerunTransactionQueue;Lo/getServerTime;Lo/nextTransactionOrder;ZLjava/lang/String;Ljava/lang/String;IZI)V

    invoke-static {v2, v1}, Lo/computeScrollExtent;->onPostMessage(Lo/computeScrollExtent;Lo/stopScrollersInternal;)V

    .line 1263
    iget-object v1, v0, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    invoke-static {v1}, Lo/computeScrollExtent;->extraCallback(Lo/computeScrollExtent;)Lo/stopScrollersInternal;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lo/stopScrollersInternal;->onPostMessage()Lo/setActive;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v2, v0, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    check-cast v2, Lo/toLegacyStreamType;

    new-instance v3, Lo/computeScrollExtent$onTransact$4;

    invoke-direct {v3, v0}, Lo/computeScrollExtent$onTransact$4;-><init>(Lo/computeScrollExtent$onTransact;)V

    check-cast v3, Lo/setPlaybackToRemote;

    invoke-virtual {v1, v2, v3}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    goto :goto_4

    .line 1212
    :cond_9
    iget-object v1, v0, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    invoke-static {v1}, Lo/computeScrollExtent;->onPostMessage(Lo/computeScrollExtent;)Lo/updateLayoutState;

    move-result-object v1

    .line 3086
    iget-object v1, v1, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    const-string v3, "redeemed"

    .line 1212
    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_b

    iget-object v1, v0, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    invoke-static {v1}, Lo/computeScrollExtent;->onPostMessage(Lo/computeScrollExtent;)Lo/updateLayoutState;

    move-result-object v1

    .line 4086
    iget-object v1, v1, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    const-string v3, "failed"

    .line 1212
    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_b

    .line 1213
    iget-object v1, v0, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    invoke-static {v1}, Lo/computeScrollExtent;->onPostMessage(Lo/computeScrollExtent;)Lo/updateLayoutState;

    move-result-object v1

    const-string v2, "ideal"

    .line 4088
    iput-object v2, v1, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    .line 4089
    iget-object v1, v1, Lo/updateLayoutState;->onTransact:Lo/setActive;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_4

    .line 1208
    :cond_a
    iget-object v1, v0, Lo/computeScrollExtent$onTransact;->onPostMessage:Lo/computeScrollExtent;

    invoke-static {v1}, Lo/computeScrollExtent;->onPostMessage(Lo/computeScrollExtent;)Lo/updateLayoutState;

    move-result-object v1

    const-string v2, "redeem_intent"

    .line 2088
    iput-object v2, v1, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    .line 2089
    iget-object v1, v1, Lo/updateLayoutState;->onTransact:Lo/setActive;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 65
    :cond_b
    :goto_4
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1
.end method
