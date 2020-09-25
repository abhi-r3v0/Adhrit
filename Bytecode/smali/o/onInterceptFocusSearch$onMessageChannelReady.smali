.class public final Lo/onInterceptFocusSearch$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onInterceptFocusSearch;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
.field public final synthetic ICustomTabsCallback:Lo/onInterceptFocusSearch;


# direct methods
.method constructor <init>(Lo/onInterceptFocusSearch;)V
    .locals 0

    iput-object p1, p0, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18

    move-object/from16 v0, p0

    .line 41
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto/16 :goto_3

    .line 1160
    :cond_0
    iget-object v1, v0, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    invoke-static {v1}, Lo/onInterceptFocusSearch;->ICustomTabsCallback(Lo/onInterceptFocusSearch;)Lo/updateLayoutState;

    move-result-object v1

    const-string v2, "card_settling"

    .line 5088
    iput-object v2, v1, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    .line 5089
    iget-object v1, v1, Lo/updateLayoutState;->onTransact:Lo/setActive;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 1164
    :cond_1
    iget-object v1, v0, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    invoke-static {v1}, Lo/onInterceptFocusSearch;->ICustomTabsCallback(Lo/onInterceptFocusSearch;)Lo/updateLayoutState;

    move-result-object v1

    const-string v3, "redeeming"

    .line 6088
    iput-object v3, v1, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    .line 6089
    iget-object v1, v1, Lo/updateLayoutState;->onTransact:Lo/setActive;

    invoke-virtual {v1, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 1165
    iget-object v1, v0, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    .line 7044
    iget-object v1, v1, Lo/onInterceptFocusSearch;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v1, :cond_2

    .line 1165
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

    .line 1167
    :goto_0
    iget-object v3, v0, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    invoke-static {v3}, Lo/onInterceptFocusSearch;->onNavigationEvent(Lo/onInterceptFocusSearch;)Lo/stopScrollersInternal;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 8378
    sget-object v4, Lo/startInterceptRequestLayout;->onNavigationEvent:Lo/startInterceptRequestLayout;

    invoke-static {}, Lo/startInterceptRequestLayout;->extraCallback()Lo/setActive;

    move-result-object v4

    iget-object v5, v3, Lo/stopScrollersInternal;->onPostMessage:Lo/setPlaybackToRemote;

    invoke-virtual {v4, v5}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 8379
    sget-object v4, Lo/startInterceptRequestLayout;->onNavigationEvent:Lo/startInterceptRequestLayout;

    invoke-static {}, Lo/startInterceptRequestLayout;->onMessageChannelReady()Lo/setActive;

    move-result-object v4

    iget-object v3, v3, Lo/stopScrollersInternal;->extraCallback:Lo/setPlaybackToRemote;

    invoke-virtual {v4, v3}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    .line 1168
    :cond_4
    iget-object v3, v0, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    .line 1169
    move-object v5, v3

    check-cast v5, Landroidx/fragment/app/Fragment;

    .line 9044
    iget-object v6, v3, Lo/onInterceptFocusSearch;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;

    if-nez v6, :cond_5

    .line 1170
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 1172
    :cond_5
    new-instance v4, Lo/onInterceptFocusSearch$onMessageChannelReady$4;

    invoke-direct {v4, v0}, Lo/onInterceptFocusSearch$onMessageChannelReady$4;-><init>(Lo/onInterceptFocusSearch$onMessageChannelReady;)V

    move-object v10, v4

    check-cast v10, Lo/getServerTime;

    if-nez v1, :cond_6

    const-string v4, ""

    move-object v13, v4

    goto :goto_1

    :cond_6
    move-object v13, v1

    .line 1181
    :goto_1
    new-instance v4, Lo/onInterceptFocusSearch$onMessageChannelReady$1;

    invoke-direct {v4, v0, v1}, Lo/onInterceptFocusSearch$onMessageChannelReady$1;-><init>(Lo/onInterceptFocusSearch$onMessageChannelReady;Ljava/lang/String;)V

    move-object v7, v4

    check-cast v7, Lo/getServerTime;

    .line 1192
    new-instance v1, Lo/onInterceptFocusSearch$onMessageChannelReady$5;

    invoke-direct {v1, v0}, Lo/onInterceptFocusSearch$onMessageChannelReady$5;-><init>(Lo/onInterceptFocusSearch$onMessageChannelReady;)V

    move-object v8, v1

    check-cast v8, Lo/getServerTime;

    .line 1198
    new-instance v1, Lo/onInterceptFocusSearch$onMessageChannelReady$3;

    invoke-direct {v1, v0}, Lo/onInterceptFocusSearch$onMessageChannelReady$3;-><init>(Lo/onInterceptFocusSearch$onMessageChannelReady;)V

    move-object v11, v1

    check-cast v11, Lo/nextTransactionOrder;

    .line 1212
    iget-object v1, v0, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    invoke-static {v1}, Lo/onInterceptFocusSearch;->ICustomTabsCallback(Lo/onInterceptFocusSearch;)Lo/updateLayoutState;

    move-result-object v1

    .line 9053
    iget-object v4, v1, Lo/updateLayoutState;->onRelationshipValidationResult:Ljava/lang/String;

    if-nez v4, :cond_7

    const-string v1, "navigation"

    goto :goto_2

    .line 9056
    :cond_7
    iget-object v1, v1, Lo/updateLayoutState;->onRelationshipValidationResult:Ljava/lang/String;

    :goto_2
    move-object v14, v1

    .line 1168
    new-instance v1, Lo/stopScrollersInternal;

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0xc10

    move-object v4, v1

    invoke-direct/range {v4 .. v17}, Lo/stopScrollersInternal;-><init>(Landroidx/fragment/app/Fragment;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleResponseCard;Lo/getServerTime;Lo/getServerTime;Lo/rerunTransactionQueue;Lo/getServerTime;Lo/nextTransactionOrder;ZLjava/lang/String;Ljava/lang/String;IZI)V

    invoke-static {v3, v1}, Lo/onInterceptFocusSearch;->onMessageChannelReady(Lo/onInterceptFocusSearch;Lo/stopScrollersInternal;)V

    .line 1214
    iget-object v1, v0, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    invoke-static {v1}, Lo/onInterceptFocusSearch;->onNavigationEvent(Lo/onInterceptFocusSearch;)Lo/stopScrollersInternal;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lo/stopScrollersInternal;->onPostMessage()Lo/setActive;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v3, v0, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    check-cast v3, Lo/toLegacyStreamType;

    new-instance v4, Lo/onInterceptFocusSearch$onMessageChannelReady$2;

    invoke-direct {v4, v0}, Lo/onInterceptFocusSearch$onMessageChannelReady$2;-><init>(Lo/onInterceptFocusSearch$onMessageChannelReady;)V

    check-cast v4, Lo/setPlaybackToRemote;

    invoke-virtual {v1, v3, v4}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 1229
    :cond_8
    sget-object v1, Lo/onDestroyOptionsMenu;->onRelationshipValidationResult:Lo/onDestroyOptionsMenu;

    invoke-static {v2}, Lo/onDestroyOptionsMenu;->onMessageChannelReady(Z)V

    goto :goto_3

    .line 1154
    :cond_9
    iget-object v1, v0, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    invoke-static {v1}, Lo/onInterceptFocusSearch;->ICustomTabsCallback(Lo/onInterceptFocusSearch;)Lo/updateLayoutState;

    move-result-object v1

    .line 3086
    iget-object v1, v1, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    const-string v3, "redeemed"

    .line 1154
    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_b

    iget-object v1, v0, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    invoke-static {v1}, Lo/onInterceptFocusSearch;->ICustomTabsCallback(Lo/onInterceptFocusSearch;)Lo/updateLayoutState;

    move-result-object v1

    .line 4086
    iget-object v1, v1, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    const-string v3, "failed"

    .line 1154
    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_b

    .line 1155
    iget-object v1, v0, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    invoke-static {v1}, Lo/onInterceptFocusSearch;->ICustomTabsCallback(Lo/onInterceptFocusSearch;)Lo/updateLayoutState;

    move-result-object v1

    const-string v2, "ideal"

    .line 4088
    iput-object v2, v1, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    .line 4089
    iget-object v1, v1, Lo/updateLayoutState;->onTransact:Lo/setActive;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto :goto_3

    .line 1150
    :cond_a
    iget-object v1, v0, Lo/onInterceptFocusSearch$onMessageChannelReady;->ICustomTabsCallback:Lo/onInterceptFocusSearch;

    invoke-static {v1}, Lo/onInterceptFocusSearch;->ICustomTabsCallback(Lo/onInterceptFocusSearch;)Lo/updateLayoutState;

    move-result-object v1

    const-string v2, "redeem_intent"

    .line 2088
    iput-object v2, v1, Lo/updateLayoutState;->requestPostMessageChannel:Ljava/lang/String;

    .line 2089
    iget-object v1, v1, Lo/updateLayoutState;->onTransact:Lo/setActive;

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 41
    :cond_b
    :goto_3
    sget-object v1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v1
.end method
