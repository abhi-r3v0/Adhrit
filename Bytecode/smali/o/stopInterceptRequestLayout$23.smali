.class final Lo/stopInterceptRequestLayout$23;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/stopInterceptRequestLayout;-><init>(Lo/releaseGlows;Lo/hasGapsToFix$onMessageChannelReady;Lo/pullGlows;Lo/getServerTime;)V
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
        "Lo/getThumbTintList<",
        "+",
        "Lo/getItemDecorationCount;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabSliderData;",
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
.field private synthetic extraCallback:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/stopInterceptRequestLayout;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$23;->extraCallback:Lo/stopInterceptRequestLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 13

    .line 36
    check-cast p1, Lo/getThumbTintList;

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 2016
    :cond_0
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1447
    :goto_0
    check-cast p1, Lo/getItemDecorationCount;

    if-eqz p1, :cond_1e

    .line 1448
    iget-object v0, p0, Lo/stopInterceptRequestLayout$23;->extraCallback:Lo/stopInterceptRequestLayout;

    .line 2036
    iget-object v0, v0, Lo/stopInterceptRequestLayout;->mayLaunchUrl:Lo/onRequestFocusInDescendants;

    .line 1449
    iget-object v2, p0, Lo/stopInterceptRequestLayout$23;->extraCallback:Lo/stopInterceptRequestLayout;

    .line 2037
    iget-object v2, v2, Lo/stopInterceptRequestLayout;->connect:Lo/releaseGlows;

    .line 1449
    invoke-virtual {v2}, Lo/releaseGlows;->extraCallback()Ljava/util/Map;

    move-result-object v2

    .line 2051
    iput-object v2, v0, Lo/onRequestFocusInDescendants;->getInterfaceDescriptor:Ljava/util/Map;

    .line 1451
    iget-object v2, p0, Lo/stopInterceptRequestLayout$23;->extraCallback:Lo/stopInterceptRequestLayout;

    .line 3036
    iget-object v2, v2, Lo/stopInterceptRequestLayout;->cancelAll:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 3970
    iget v2, v2, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->ICustomTabsService:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "inputList"

    .line 1451
    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4112
    iput-object p1, v0, Lo/onRequestFocusInDescendants;->IPostMessageService$Stub$Proxy:Lo/getItemDecorationCount;

    .line 5052
    iget-object v3, p1, Lo/getItemDecorationCount;->onNavigationEvent:Ljava/lang/String;

    .line 4113
    iput-object v3, v0, Lo/onRequestFocusInDescendants;->IPostMessageService:Ljava/lang/String;

    .line 5053
    iget-object v3, p1, Lo/getItemDecorationCount;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;

    .line 6015
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onNavigationEvent:Ljava/util/List;

    .line 4114
    iput-object v3, v0, Lo/onRequestFocusInDescendants;->IPostMessageService$Stub:Ljava/util/List;

    .line 6053
    iget-object v3, p1, Lo/getItemDecorationCount;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;

    .line 7017
    iget-wide v6, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onPostMessage:D

    .line 4115
    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iput-object v3, v0, Lo/onRequestFocusInDescendants;->ICustomTabsService$Stub:Ljava/lang/Double;

    .line 7053
    iget-object v3, p1, Lo/getItemDecorationCount;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;

    .line 8013
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->extraCallback:Ljava/lang/String;

    .line 4116
    iput-object v3, v0, Lo/onRequestFocusInDescendants;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    .line 4118
    iget-object v3, v0, Lo/onRequestFocusInDescendants;->IPostMessageService$Stub:Ljava/util/List;

    const-string v6, "inputListData"

    if-nez v3, :cond_2

    invoke-static {v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    iput-object v3, v0, Lo/onRequestFocusInDescendants;->extraCommand:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 4119
    iget-object v3, v0, Lo/onRequestFocusInDescendants;->IPostMessageService$Stub:Ljava/util/List;

    if-nez v3, :cond_3

    invoke-static {v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_3
    iget-object v7, v0, Lo/onRequestFocusInDescendants;->IPostMessageService$Stub:Ljava/util/List;

    if-nez v7, :cond_4

    invoke-static {v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    iput-object v3, v0, Lo/onRequestFocusInDescendants;->updateVisuals:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 4120
    iget-object v3, v0, Lo/onRequestFocusInDescendants;->extraCommand:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    const-string v7, "minSliderSlab"

    if-nez v3, :cond_5

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    iput-object v3, v0, Lo/onRequestFocusInDescendants;->cancel:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 4122
    iget-object v3, v0, Lo/onRequestFocusInDescendants;->extraCommand:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    if-nez v3, :cond_6

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 8034
    :cond_6
    iget-wide v8, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onPostMessage:J

    .line 4122
    iput-wide v8, v0, Lo/onRequestFocusInDescendants;->requestPostMessageChannel:J

    .line 4123
    iget-object v3, v0, Lo/onRequestFocusInDescendants;->updateVisuals:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    const-string v8, "maxSliderSlab"

    if-nez v3, :cond_7

    invoke-static {v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 9034
    :cond_7
    iget-wide v9, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onPostMessage:J

    .line 4123
    iput-wide v9, v0, Lo/onRequestFocusInDescendants;->postMessage:J

    .line 4124
    iget-wide v9, v0, Lo/onRequestFocusInDescendants;->postMessage:J

    iget-wide v11, v0, Lo/onRequestFocusInDescendants;->requestPostMessageChannel:J

    sub-long/2addr v9, v11

    iput-wide v9, v0, Lo/onRequestFocusInDescendants;->validateRelationship:J

    .line 4126
    iget-object v3, v0, Lo/onRequestFocusInDescendants;->onTransact:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v9, "storePayableAmountLabel"

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9053
    iget-object v9, p1, Lo/getItemDecorationCount;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;

    .line 10019
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->ICustomTabsCallback:Lo/getTargetScrollPosition;

    if-eqz v9, :cond_8

    .line 11000
    iget-object v9, v9, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v9}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    goto :goto_2

    :cond_8
    move-object v9, v1

    .line 4126
    :goto_2
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4127
    iget-object v3, v0, Lo/onRequestFocusInDescendants;->ICustomTabsService:Lo/createFullSpanItemFromEnd;

    const-string/jumbo v9, "storeSliderDesc"

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11053
    iget-object v9, p1, Lo/getItemDecorationCount;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;

    .line 12021
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v9, :cond_9

    .line 13000
    iget-object v9, v9, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v9}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    goto :goto_3

    :cond_9
    move-object v9, v1

    .line 4127
    :goto_3
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4128
    iget-object v3, v0, Lo/onRequestFocusInDescendants;->ICustomTabsCallback:Landroid/widget/TextView;

    const-string v9, "minText"

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v0, Lo/onRequestFocusInDescendants;->extraCommand:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    if-nez v9, :cond_a

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 13036
    :cond_a
    iget-object v9, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz v9, :cond_b

    .line 14000
    iget-object v9, v9, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v9}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    goto :goto_4

    :cond_b
    move-object v9, v1

    .line 4128
    :goto_4
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4129
    iget-object v3, v0, Lo/onRequestFocusInDescendants;->asBinder:Landroid/widget/TextView;

    const-string v9, "maxText"

    invoke-static {v3, v9}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, v0, Lo/onRequestFocusInDescendants;->updateVisuals:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    if-nez v9, :cond_c

    invoke-static {v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 14036
    :cond_c
    iget-object v8, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz v8, :cond_d

    .line 15000
    iget-object v8, v8, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v8}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    goto :goto_5

    :cond_d
    move-object v8, v1

    .line 4129
    :goto_5
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4130
    iget-object v3, v0, Lo/onRequestFocusInDescendants;->warmup:Lo/createFullSpanItemFromEnd;

    const-string v8, "recommended"

    invoke-static {v3, v8}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15053
    iget-object v8, p1, Lo/getItemDecorationCount;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;

    .line 16023
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onTransact:Lo/getTargetScrollPosition;

    if-eqz v8, :cond_e

    .line 17000
    iget-object v8, v8, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v8}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    goto :goto_6

    :cond_e
    move-object v8, v1

    .line 4130
    :goto_6
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4132
    iget-object v3, v0, Lo/onRequestFocusInDescendants;->extraCommand:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    if-nez v3, :cond_f

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v0, v3}, Lo/onRequestFocusInDescendants;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;)V

    .line 4133
    iget-object v3, v0, Lo/onRequestFocusInDescendants;->IPostMessageService$Stub:Ljava/util/List;

    if-nez v3, :cond_10

    invoke-static {v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 17053
    :cond_10
    iget-object p1, p1, Lo/getItemDecorationCount;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;

    .line 18025
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlabsResponse;->onRelationshipValidationResult:Ljava/lang/String;

    if-eqz p1, :cond_14

    .line 18253
    check-cast v3, Ljava/lang/Iterable;

    .line 18350
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v8, 0x0

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-ltz v8, :cond_13

    .line 18441
    check-cast v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 19032
    iget-object v8, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->ICustomTabsCallback:Ljava/lang/String;

    .line 18254
    invoke-static {v8, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    iget-object v8, v0, Lo/onRequestFocusInDescendants;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    if-nez v8, :cond_11

    const-string v11, "currencyType"

    invoke-static {v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 19042
    :cond_11
    iget-wide v11, v9, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onTransact:D

    .line 18254
    invoke-static {v8, v11, v12}, Lo/onRequestFocusInDescendants;->extraCallback(Ljava/lang/String;D)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 18255
    iput-boolean v4, v0, Lo/onRequestFocusInDescendants;->INotificationSideChannel:Z

    .line 18256
    iput-object v9, v0, Lo/onRequestFocusInDescendants;->cancel:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    goto :goto_8

    :cond_12
    move v8, v10

    goto :goto_7

    .line 18441
    :cond_13
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Index overflow has happened."

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_14
    move-object v9, v1

    .line 4133
    :goto_8
    iput-object v9, v0, Lo/onRequestFocusInDescendants;->notify:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 19218
    iget-object p1, v0, Lo/onRequestFocusInDescendants;->asInterface:Landroid/view/View;

    const-string/jumbo v3, "seekBarAnchorView"

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_1d

    check-cast p1, Lo/onChildrenLoaded$onPostMessage;

    .line 19219
    iget-object v3, v0, Lo/onRequestFocusInDescendants;->onRelationshipValidationResult:Lo/findFirstReferenceChildPosition;

    new-instance v8, Lo/onRequestFocusInDescendants$ICustomTabsCallback;

    invoke-direct {v8, v0, p1}, Lo/onRequestFocusInDescendants$ICustomTabsCallback;-><init>(Lo/onRequestFocusInDescendants;Lo/onChildrenLoaded$onPostMessage;)V

    check-cast v8, Lo/findFirstReferenceChildPosition$onPostMessage;

    invoke-virtual {v3, v8}, Lo/findFirstReferenceChildPosition;->setOnSliderChangeListener(Lo/findFirstReferenceChildPosition$onPostMessage;)V

    if-eqz v2, :cond_1c

    .line 4137
    iput-boolean v5, v0, Lo/onRequestFocusInDescendants;->cancelAll:Z

    .line 4138
    iget-object p1, v0, Lo/onRequestFocusInDescendants;->mayLaunchUrl:Lo/setActive;

    .line 19320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 19321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v2, :cond_15

    goto :goto_9

    :cond_15
    move-object p1, v1

    .line 4138
    :goto_9
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    if-eqz p1, :cond_18

    .line 20150
    iget-object v2, v0, Lo/onRequestFocusInDescendants;->IPostMessageService$Stub:Ljava/util/List;

    if-nez v2, :cond_16

    invoke-static {v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_16
    check-cast v2, Ljava/lang/Iterable;

    .line 20347
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 21032
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->ICustomTabsCallback:Ljava/lang/String;

    .line 22032
    iget-object v6, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->ICustomTabsCallback:Ljava/lang/String;

    .line 20151
    invoke-static {v3, v6}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_a

    :cond_18
    const/4 v4, 0x0

    :goto_a
    if-nez v4, :cond_1a

    .line 4139
    iget-object p1, v0, Lo/onRequestFocusInDescendants;->mayLaunchUrl:Lo/setActive;

    iget-object v2, v0, Lo/onRequestFocusInDescendants;->notify:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    if-nez v2, :cond_19

    iget-object v2, v0, Lo/onRequestFocusInDescendants;->extraCommand:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    if-nez v2, :cond_19

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_19
    invoke-virtual {p1, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 4141
    :cond_1a
    iget-object p1, v0, Lo/onRequestFocusInDescendants;->mayLaunchUrl:Lo/setActive;

    .line 22320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 22321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v2, :cond_1b

    move-object v1, p1

    .line 4141
    :cond_1b
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    invoke-virtual {v0, v1}, Lo/onRequestFocusInDescendants;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;)V

    goto :goto_b

    .line 4143
    :cond_1c
    iget-object p1, v0, Lo/onRequestFocusInDescendants;->ICustomTabsCallback$Stub:Lo/recycleFromEnd;

    sget-object v1, Lo/findLastCompletelyVisibleItemPositions;->onPostMessage:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 4144
    iget-object p1, v0, Lo/onRequestFocusInDescendants;->onRelationshipValidationResult:Lo/findFirstReferenceChildPosition;

    invoke-virtual {p1, v5}, Lo/findFirstReferenceChildPosition;->setProgress(I)V

    .line 1453
    :goto_b
    iget-object p1, p0, Lo/stopInterceptRequestLayout$23;->extraCallback:Lo/stopInterceptRequestLayout;

    .line 23039
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->AudioAttributesImplApi21Parcelizer:Lo/pullGlows;

    const-string/jumbo v0, "store_payment_slider "

    const-string/jumbo v1, "state"

    .line 1453
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23203
    iget-object p1, p1, Lo/pullGlows;->updateVisuals:Lo/setActive;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 19218
    :cond_1d
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1e
    return-void
.end method
