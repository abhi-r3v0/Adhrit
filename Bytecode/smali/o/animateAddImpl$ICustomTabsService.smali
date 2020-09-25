.class public final Lo/animateAddImpl$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateAddImpl;->onPostMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/currency/CredCurrencyResponse;",
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
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001c\u0010\u0004\u001a\u00020\u00052\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/currency/CredCurrencyViewModel$triggerPagination$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/currency/CredCurrencyResponse;",
        "Lcom/dreamplug/utils/model/BaseResponse;",
        "onResponse",
        "",
        "result",
        "Lcom/dreamplug/network/internals/call/CallResult;",
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
.field private synthetic ICustomTabsCallback:Lo/animateAddImpl;


# direct methods
.method constructor <init>(Lo/animateAddImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lo/animateAddImpl$ICustomTabsService;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/currency/CredCurrencyResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string/jumbo v2, "result"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    iget-object v2, v0, Lo/animateAddImpl$ICustomTabsService;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v2}, Lo/animateAddImpl;->extraCallback(Lo/animateAddImpl;)V

    .line 199
    instance-of v2, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v2, :cond_4

    .line 200
    check-cast v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v1, v1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 200
    check-cast v1, Lcom/dreamplug/fabrik/ui/currency/CredCurrencyResponse;

    .line 201
    iget-object v2, v0, Lo/animateAddImpl$ICustomTabsService;->ICustomTabsCallback:Lo/animateAddImpl;

    .line 1232
    iget v2, v2, Lo/animateAddImpl;->extraCallback:I

    if-eqz v1, :cond_2

    .line 2015
    iget-object v3, v1, Lcom/dreamplug/fabrik/ui/currency/CredCurrencyResponse;->onPostMessage:Ljava/util/List;

    .line 202
    check-cast v3, Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    const/4 v15, 0x1

    xor-int/2addr v3, v15

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, v0, Lo/animateAddImpl$ICustomTabsService;->ICustomTabsCallback:Lo/animateAddImpl;

    .line 2016
    iget-boolean v4, v1, Lcom/dreamplug/fabrik/ui/currency/CredCurrencyResponse;->onNavigationEvent:Z

    .line 203
    invoke-static {v3, v4}, Lo/animateAddImpl;->onPostMessage(Lo/animateAddImpl;Z)V

    .line 3015
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/currency/CredCurrencyResponse;->onPostMessage:Ljava/util/List;

    .line 204
    check-cast v1, Ljava/lang/Iterable;

    .line 261
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/currency/Entry;

    .line 205
    iget-object v4, v0, Lo/animateAddImpl$ICustomTabsService;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v4}, Lo/animateAddImpl;->onNavigationEvent(Lo/animateAddImpl;)Ljava/util/List;

    move-result-object v14

    new-instance v13, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;

    .line 3028
    iget-object v4, v3, Lcom/dreamplug/fabrik/ui/currency/Entry;->onRelationshipValidationResult:Ljava/lang/String;

    .line 4026
    iget-wide v5, v3, Lcom/dreamplug/fabrik/ui/currency/Entry;->onNavigationEvent:D

    .line 4031
    iget-wide v7, v3, Lcom/dreamplug/fabrik/ui/currency/Entry;->asInterface:J

    .line 5023
    iget-object v9, v3, Lcom/dreamplug/fabrik/ui/currency/Entry;->extraCallback:Ljava/lang/String;

    .line 208
    check-cast v9, Ljava/lang/CharSequence;

    const-string v10, "CREDIT"

    check-cast v10, Ljava/lang/CharSequence;

    invoke-static {v9, v10, v15}, Lo/childWrites;->onNavigationEvent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    const v9, 0x7f08037e

    goto :goto_1

    :cond_0
    const v9, 0x7f08037f

    :goto_1
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 5033
    iget-object v12, v3, Lcom/dreamplug/fabrik/ui/currency/Entry;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/currency/ClickReference;

    .line 210
    iget-object v3, v0, Lo/animateAddImpl$ICustomTabsService;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v3}, Lo/animateAddImpl;->onMessageChannelReady(Lo/animateAddImpl;)Ljava/lang/String;

    move-result-object v16

    const/4 v11, 0x0

    const/16 v17, 0x20

    const/16 v18, 0x0

    move-object v3, v13

    move v9, v2

    move-object/from16 v19, v12

    move-object/from16 v12, v16

    move-object/from16 v20, v13

    move-object/from16 v13, v19

    move-object/from16 v21, v14

    move/from16 v14, v17

    const/16 v16, 0x1

    move-object/from16 v15, v18

    .line 205
    invoke-direct/range {v3 .. v15}, Lcom/dreamplug/fabrik/ui/control/ControlStatementRepo$TransactionItem;-><init>(Ljava/lang/String;DJILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/currency/ClickReference;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v15, 0x1

    goto :goto_0

    .line 213
    :cond_1
    iget-object v1, v0, Lo/animateAddImpl$ICustomTabsService;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v1}, Lo/animateAddImpl;->onPostMessage(Lo/animateAddImpl;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 214
    iget-object v1, v0, Lo/animateAddImpl$ICustomTabsService;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v1}, Lo/animateAddImpl;->onNavigationEvent(Lo/animateAddImpl;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lo/onCreateAnimation;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "bottom"

    invoke-direct {v3, v4, v2}, Lo/onCreateAnimation;-><init>(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 217
    :cond_2
    iget-object v1, v0, Lo/animateAddImpl$ICustomTabsService;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v1}, Lo/animateAddImpl;->onNavigationEvent(Lo/animateAddImpl;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/dreamplug/fabrik/ui/control/CommonStatementNoHistoryItemHolder$TransactionItem;

    invoke-direct {v3, v2}, Lcom/dreamplug/fabrik/ui/control/CommonStatementNoHistoryItemHolder$TransactionItem;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v1, v0, Lo/animateAddImpl$ICustomTabsService;->ICustomTabsCallback:Lo/animateAddImpl;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lo/animateAddImpl;->onPostMessage(Lo/animateAddImpl;Z)V

    .line 222
    :cond_3
    :goto_2
    iget-object v1, v0, Lo/animateAddImpl$ICustomTabsService;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v1}, Lo/animateAddImpl;->ICustomTabsCallback(Lo/animateAddImpl;)Lo/MediaControllerCompatApi24$TransportControls;

    move-result-object v1

    iget-object v2, v0, Lo/animateAddImpl$ICustomTabsService;->ICustomTabsCallback:Lo/animateAddImpl;

    invoke-static {v2}, Lo/animateAddImpl;->onNavigationEvent(Lo/animateAddImpl;)Ljava/util/List;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    invoke-static {v2}, Lo/getSessionPersistenceKey;->onNavigationEvent(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
