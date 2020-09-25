.class final Lo/setReturnTransition$onMessageChannelReady$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setReturnTransition$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfigResponse;

.field private synthetic onMessageChannelReady:Lo/setReturnTransition$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/setReturnTransition$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfigResponse;)V
    .locals 0

    iput-object p1, p0, Lo/setReturnTransition$onMessageChannelReady$1;->onMessageChannelReady:Lo/setReturnTransition$onMessageChannelReady;

    iput-object p2, p0, Lo/setReturnTransition$onMessageChannelReady$1;->extraCallback:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfigResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 55
    iget-object v0, p0, Lo/setReturnTransition$onMessageChannelReady$1;->onMessageChannelReady:Lo/setReturnTransition$onMessageChannelReady;

    iget-object v0, v0, Lo/setReturnTransition$onMessageChannelReady;->onNavigationEvent:Lo/setReturnTransition;

    .line 1000
    iget-object v0, v0, Lo/setReturnTransition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 55
    invoke-static {v0, v1, v2, v3, v4}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 58
    iget-object v5, p0, Lo/setReturnTransition$onMessageChannelReady$1;->extraCallback:Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfigResponse;

    if-eqz v5, :cond_4

    .line 1012
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfigResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/autodebit/Nb;

    if-eqz v5, :cond_4

    .line 1023
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/autodebit/Nb;->onNavigationEvent:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 58
    check-cast v5, Ljava/lang/Iterable;

    .line 240
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    if-ltz v6, :cond_3

    .line 1441
    check-cast v7, Lcom/dreamplug/fabrik/ui/autodebit/EligiblePaymentInstrument;

    .line 2046
    iget-object v6, v7, Lcom/dreamplug/fabrik/ui/autodebit/EligiblePaymentInstrument;->onNavigationEvent:Ljava/lang/String;

    .line 2047
    iget-object v9, v7, Lcom/dreamplug/fabrik/ui/autodebit/EligiblePaymentInstrument;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v9, :cond_1

    if-eqz v9, :cond_0

    const/4 v10, 0x4

    .line 59
    invoke-virtual {v9, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string v10, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v9, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move-object v9, v1

    :goto_1
    invoke-static {v6, v9}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7$onPostMessage;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v6, p0, Lo/setReturnTransition$onMessageChannelReady$1;->onMessageChannelReady:Lo/setReturnTransition$onMessageChannelReady;

    iget-object v6, v6, Lo/setReturnTransition$onMessageChannelReady;->onNavigationEvent:Lo/setReturnTransition;

    invoke-static {v6}, Lo/setReturnTransition;->ICustomTabsCallback(Lo/setReturnTransition;)Lo/getSharedElementEnterTransition;

    move-result-object v6

    .line 3033
    iget-object v6, v6, Lo/getSharedElementEnterTransition;->extraCallback:Ljava/util/List;

    .line 60
    check-cast v6, Ljava/lang/Iterable;

    .line 3049
    iget-object v9, v7, Lcom/dreamplug/fabrik/ui/autodebit/EligiblePaymentInstrument;->extraCallback:Ljava/lang/String;

    .line 60
    invoke-static {v6, v9}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 61
    invoke-static {v7}, Lo/setReturnTransition;->onNavigationEvent(Lcom/dreamplug/fabrik/ui/autodebit/EligiblePaymentInstrument;)Lo/onDetach$asInterface;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    move v6, v8

    goto :goto_0

    .line 1441
    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    .line 68
    :cond_4
    iget-object v5, p0, Lo/setReturnTransition$onMessageChannelReady$1;->onMessageChannelReady:Lo/setReturnTransition$onMessageChannelReady;

    iget-object v5, v5, Lo/setReturnTransition$onMessageChannelReady;->onNavigationEvent:Lo/setReturnTransition;

    invoke-static {v5}, Lo/setReturnTransition;->ICustomTabsCallback(Lo/setReturnTransition;)Lo/getSharedElementEnterTransition;

    move-result-object v5

    .line 4029
    iget-object v5, v5, Lo/getSharedElementEnterTransition;->onNavigationEvent:Ljava/util/List;

    .line 68
    check-cast v5, Ljava/lang/Iterable;

    .line 242
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Ljava/util/Collection;

    .line 243
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lo/onDetach$asInterface;

    .line 69
    move-object v9, v4

    check-cast v9, Ljava/lang/Iterable;

    .line 4119
    iget-object v8, v8, Lo/onDetach$asInterface;->asBinder:Ljava/lang/String;

    .line 69
    invoke-static {v9, v8}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v2

    if-eqz v8, :cond_5

    invoke-interface {v6, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 244
    :cond_6
    check-cast v6, Ljava/util/List;

    .line 73
    check-cast v6, Ljava/util/Collection;

    invoke-virtual {v0, v6}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 75
    move-object v4, v0

    check-cast v4, Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v2

    const-string v5, "pairs"

    const-string v6, "flow"

    const-string v7, "bank_account_Linked"

    const/4 v8, 0x2

    const-string v9, "ad_setup_screen_cta"

    if-eqz v4, :cond_8

    .line 77
    invoke-virtual {v0, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/onDetach$asInterface;

    invoke-static {v4}, Lo/onDetach$asInterface;->extraCallback(Lo/onDetach$asInterface;)Lo/onDetach$asInterface;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-array v4, v8, [Lo/addWrite;

    .line 5043
    new-instance v10, Lo/addWrite;

    const-string/jumbo v11, "true"

    invoke-direct {v10, v7, v11}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v4, v3

    .line 6043
    new-instance v3, Lo/addWrite;

    const-string v7, "account_list"

    invoke-direct {v3, v6, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v4, v2

    .line 78
    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v8}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 78
    invoke-static {v9, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 79
    iget-object v2, p0, Lo/setReturnTransition$onMessageChannelReady$1;->onMessageChannelReady:Lo/setReturnTransition$onMessageChannelReady;

    iget-object v2, v2, Lo/setReturnTransition$onMessageChannelReady;->onNavigationEvent:Lo/setReturnTransition;

    .line 7000
    iget-object v2, v2, Lo/setReturnTransition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getMoveDuration;

    .line 79
    check-cast v0, Ljava/util/List;

    iget-object v3, p0, Lo/setReturnTransition$onMessageChannelReady$1;->onMessageChannelReady:Lo/setReturnTransition$onMessageChannelReady;

    iget-object v3, v3, Lo/setReturnTransition$onMessageChannelReady;->onNavigationEvent:Lo/setReturnTransition;

    invoke-static {v3}, Lo/setReturnTransition;->ICustomTabsCallback(Lo/setReturnTransition;)Lo/getSharedElementEnterTransition;

    move-result-object v3

    .line 7090
    iget-object v3, v3, Lo/getSharedElementEnterTransition;->postMessage:Lo/setActive;

    check-cast v3, Landroidx/lifecycle/LiveData;

    .line 7320
    iget-object v3, v3, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 7321
    sget-object v4, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v3, v4, :cond_7

    move-object v1, v3

    .line 79
    :cond_7
    check-cast v1, Ljava/util/List;

    const-string v3, "extraData"

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7359
    new-instance v3, Lo/onGetChildDrawingOrder$ICustomTabsCallback;

    new-instance v4, Lo/onDetach$extraCallback;

    invoke-direct {v4, v0, v1}, Lo/onDetach$extraCallback;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-direct {v3, v4}, Lo/onGetChildDrawingOrder$ICustomTabsCallback;-><init>(Lo/onDetach$extraCallback;)V

    check-cast v3, Lo/getRemoveDuration;

    invoke-virtual {v2, v3}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    .line 80
    :cond_8
    sget-object v0, Lo/isInLayout;->isBrowsable:Lo/isInLayout;

    .line 8000
    sget-object v0, Lo/isInLayout;->IPostMessageService:Lo/isAdded;

    sget-object v4, Lo/isInLayout;->onNavigationEvent:[Lo/applyUserOverwrite;

    const/16 v10, 0x1e

    aget-object v4, v4, v10

    invoke-virtual {v0, v4}, Lo/isMenuVisible;->onPostMessage(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v4, "false"

    if-nez v0, :cond_c

    .line 80
    iget-object v0, p0, Lo/setReturnTransition$onMessageChannelReady$1;->onMessageChannelReady:Lo/setReturnTransition$onMessageChannelReady;

    iget-object v0, v0, Lo/setReturnTransition$onMessageChannelReady;->onNavigationEvent:Lo/setReturnTransition;

    invoke-static {v0}, Lo/setReturnTransition;->ICustomTabsCallback(Lo/setReturnTransition;)Lo/getSharedElementEnterTransition;

    move-result-object v0

    .line 8036
    iget-boolean v0, v0, Lo/getSharedElementEnterTransition;->asBinder:Z

    if-nez v0, :cond_c

    .line 81
    iget-object v0, p0, Lo/setReturnTransition$onMessageChannelReady$1;->onMessageChannelReady:Lo/setReturnTransition$onMessageChannelReady;

    iget-object v0, v0, Lo/setReturnTransition$onMessageChannelReady;->onNavigationEvent:Lo/setReturnTransition;

    .line 9000
    iget-object v0, v0, Lo/setReturnTransition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    .line 81
    iget-object v10, p0, Lo/setReturnTransition$onMessageChannelReady$1;->onMessageChannelReady:Lo/setReturnTransition$onMessageChannelReady;

    iget-object v10, v10, Lo/setReturnTransition$onMessageChannelReady;->onNavigationEvent:Lo/setReturnTransition;

    invoke-static {v10}, Lo/setReturnTransition;->ICustomTabsCallback(Lo/setReturnTransition;)Lo/getSharedElementEnterTransition;

    move-result-object v10

    .line 9090
    iget-object v10, v10, Lo/getSharedElementEnterTransition;->postMessage:Lo/setActive;

    check-cast v10, Landroidx/lifecycle/LiveData;

    .line 9320
    iget-object v10, v10, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 9321
    sget-object v11, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v10, v11, :cond_9

    move-object v1, v10

    .line 81
    :cond_9
    check-cast v1, Ljava/util/List;

    iget-object v10, p0, Lo/setReturnTransition$onMessageChannelReady$1;->onMessageChannelReady:Lo/setReturnTransition$onMessageChannelReady;

    iget-object v10, v10, Lo/setReturnTransition$onMessageChannelReady;->onNavigationEvent:Lo/setReturnTransition;

    invoke-static {v10}, Lo/setReturnTransition;->asInterface(Lo/setReturnTransition;)Lo/onDetach$getDefaultImpl;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 10076
    iget-object v10, v10, Lo/onDetach$getDefaultImpl;->onMessageChannelReady:Ljava/lang/String;

    if-nez v10, :cond_b

    :cond_a
    const-string v10, "NA"

    :cond_b
    const-string/jumbo v11, "source"

    .line 81
    invoke-static {v10, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10425
    new-instance v11, Lo/onGetChildDrawingOrder$onRelationshipValidationResult;

    new-instance v12, Lo/onDetach$onPostMessage;

    invoke-direct {v12, v1, v10}, Lo/onDetach$onPostMessage;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {v11, v12}, Lo/onGetChildDrawingOrder$onRelationshipValidationResult;-><init>(Lo/onDetach$onPostMessage;)V

    check-cast v11, Lo/getRemoveDuration;

    invoke-virtual {v0, v11}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    new-array v0, v8, [Lo/addWrite;

    .line 11043
    new-instance v1, Lo/addWrite;

    invoke-direct {v1, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v3

    .line 12043
    new-instance v1, Lo/addWrite;

    const-string/jumbo v3, "upi_bottom_sheet"

    invoke-direct {v1, v6, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v2

    .line 83
    invoke-static {v0, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12088
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-static {v8}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 83
    invoke-static {v9, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void

    :cond_c
    new-array v0, v8, [Lo/addWrite;

    .line 13043
    new-instance v10, Lo/addWrite;

    invoke-direct {v10, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v0, v3

    .line 14043
    new-instance v3, Lo/addWrite;

    const-string/jumbo v4, "supported_bank_list"

    invoke-direct {v3, v6, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v2

    .line 85
    invoke-static {v0, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14088
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-static {v8}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v0}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 85
    invoke-static {v9, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 86
    iget-object v0, p0, Lo/setReturnTransition$onMessageChannelReady$1;->onMessageChannelReady:Lo/setReturnTransition$onMessageChannelReady;

    iget-object v0, v0, Lo/setReturnTransition$onMessageChannelReady;->onNavigationEvent:Lo/setReturnTransition;

    .line 15000
    iget-object v0, v0, Lo/setReturnTransition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lo/getMoveDuration;

    const/4 v3, 0x0

    .line 86
    iget-object v0, p0, Lo/setReturnTransition$onMessageChannelReady$1;->onMessageChannelReady:Lo/setReturnTransition$onMessageChannelReady;

    iget-object v0, v0, Lo/setReturnTransition$onMessageChannelReady;->onNavigationEvent:Lo/setReturnTransition;

    invoke-static {v0}, Lo/setReturnTransition;->ICustomTabsCallback(Lo/setReturnTransition;)Lo/getSharedElementEnterTransition;

    move-result-object v0

    .line 15090
    iget-object v0, v0, Lo/getSharedElementEnterTransition;->postMessage:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 15320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 15321
    sget-object v4, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v4, :cond_d

    move-object v1, v0

    .line 86
    :cond_d
    move-object v4, v1

    check-cast v4, Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xd

    const-string v7, "ad_pitch"

    invoke-static/range {v2 .. v8}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Lo/onDetach$asInterface;Ljava/util/List;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V

    return-void
.end method
