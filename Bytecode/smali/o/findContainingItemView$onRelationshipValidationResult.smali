.class public final Lo/findContainingItemView$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findContainingItemView;->onPostMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineViewModel$loadGame$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinResponse;",
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
.field private synthetic onPostMessage:Lo/findContainingItemView;


# direct methods
.method constructor <init>(Lo/findContainingItemView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lo/findContainingItemView$onRelationshipValidationResult;->onPostMessage:Lo/findContainingItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/getScrapOrHiddenOrCachedHolderForPosition;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getScrapOrHiddenOrCachedHolderForPosition<",
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    if-eqz v0, :cond_11

    .line 118
    iget-object v0, p0, Lo/findContainingItemView$onRelationshipValidationResult;->onPostMessage:Lo/findContainingItemView;

    invoke-static {v0}, Lo/findContainingItemView;->onPostMessage(Lo/findContainingItemView;)Lo/setActive;

    move-result-object v0

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 118
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinResponse;

    if-eqz v1, :cond_0

    .line 1019
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinResponse;->onNavigationEvent:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 118
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_1
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 119
    iget-object v0, p0, Lo/findContainingItemView$onRelationshipValidationResult;->onPostMessage:Lo/findContainingItemView;

    invoke-static {v0}, Lo/findContainingItemView;->onNavigationEvent(Lo/findContainingItemView;)V

    .line 120
    iget-object v0, p0, Lo/findContainingItemView$onRelationshipValidationResult;->onPostMessage:Lo/findContainingItemView;

    .line 1073
    iget-object v0, v0, Lo/findContainingItemView;->warmup:Ljava/util/HashSet;

    .line 120
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 121
    iget-object v0, p0, Lo/findContainingItemView$onRelationshipValidationResult;->onPostMessage:Lo/findContainingItemView;

    .line 2009
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 121
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinResponse;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2015
    iget-boolean v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinResponse;->onMessageChannelReady:Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 121
    :goto_0
    invoke-static {v0, v1}, Lo/findContainingItemView;->onNavigationEvent(Lo/findContainingItemView;Z)V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    .line 123
    iget-object v1, p0, Lo/findContainingItemView$onRelationshipValidationResult;->onPostMessage:Lo/findContainingItemView;

    invoke-static {v1}, Lo/findContainingItemView;->ICustomTabsCallback(Lo/findContainingItemView;)Lo/setActive;

    move-result-object v1

    .line 2320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v4, 0x0

    if-eq v1, v3, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, v4

    .line 123
    :goto_1
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    goto :goto_2

    .line 3070
    :cond_4
    sget-object v1, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v1, Ljava/util/List;

    .line 123
    :goto_2
    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4009
    iget-object v1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 124
    check-cast v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinResponse;

    if-eqz v1, :cond_5

    .line 4013
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinResponse;->extraCallback:Ljava/util/List;

    goto :goto_3

    :cond_5
    move-object v1, v4

    :goto_3
    if-nez v1, :cond_6

    .line 4070
    sget-object v1, Lo/getEventTarget;->extraCallback:Lo/getEventTarget;

    check-cast v1, Ljava/util/List;

    .line 124
    :cond_6
    check-cast v1, Ljava/lang/Iterable;

    .line 325
    new-instance v3, Ljava/util/ArrayList;

    const-string v5, "$this$collectionSizeOrDefault"

    invoke-static {v1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5039
    instance-of v5, v1, Ljava/util/Collection;

    if-eqz v5, :cond_7

    move-object v5, v1

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    goto :goto_4

    :cond_7
    const/16 v5, 0xa

    .line 325
    :goto_4
    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v3, Ljava/util/Collection;

    .line 326
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 327
    check-cast v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    .line 125
    new-instance v6, Lo/findContainingItemView$onNavigationEvent;

    invoke-direct {v6, v5}, Lo/findContainingItemView$onNavigationEvent;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;)V

    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 328
    :cond_8
    check-cast v3, Ljava/util/List;

    check-cast v3, Ljava/util/Collection;

    .line 124
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 127
    iget-object v1, p0, Lo/findContainingItemView$onRelationshipValidationResult;->onPostMessage:Lo/findContainingItemView;

    invoke-static {v1}, Lo/findContainingItemView;->ICustomTabsCallback(Lo/findContainingItemView;)Lo/setActive;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 128
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/findContainingItemView$onNavigationEvent;

    .line 5302
    iget-object v1, v1, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    .line 6033
    iget-object v1, v1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->extraCallback:Ljava/lang/String;

    .line 7009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 134
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinResponse;

    if-eqz p1, :cond_9

    .line 7017
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinResponse;->onPostMessage:Ljava/lang/Boolean;

    goto :goto_6

    :cond_9
    move-object p1, v4

    .line 134
    :goto_6
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/16 v3, 0x39

    const/4 v5, 0x1

    if-nez p1, :cond_a

    iget-object p1, p0, Lo/findContainingItemView$onRelationshipValidationResult;->onPostMessage:Lo/findContainingItemView;

    invoke-static {p1}, Lo/findContainingItemView;->onMessageChannelReady(Lo/findContainingItemView;)Z

    move-result p1

    if-nez p1, :cond_a

    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 8000
    sget-object p1, Lo/setTrackTintMode;->MediaBrowserCompat$ConnectionCallback:Lo/setTitleTextColor;

    sget-object v6, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v6, v6, v3

    invoke-virtual {p1, v6}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_e

    .line 132
    :cond_a
    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_c

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_b

    goto :goto_7

    :cond_b
    const/4 p1, 0x0

    goto :goto_8

    :cond_c
    :goto_7
    const/4 p1, 0x1

    :goto_8
    if-nez p1, :cond_e

    iget-object p1, p0, Lo/findContainingItemView$onRelationshipValidationResult;->onPostMessage:Lo/findContainingItemView;

    invoke-static {p1}, Lo/findContainingItemView;->asBinder(Lo/findContainingItemView;)I

    move-result p1

    if-ne p1, v5, :cond_e

    .line 134
    move-object p1, v0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_e

    .line 135
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 9000
    sget-object p1, Lo/setTrackTintMode;->MediaBrowserCompat$ConnectionCallback:Lo/setTitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v1, v1, v3

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v3}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 136
    iget-object p1, p0, Lo/findContainingItemView$onRelationshipValidationResult;->onPostMessage:Lo/findContainingItemView;

    invoke-static {p1}, Lo/findContainingItemView;->onTransact(Lo/findContainingItemView;)Lo/setActive;

    move-result-object p1

    new-instance v1, Lo/throwIfInMutationOperation;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/findContainingItemView$onNavigationEvent;

    .line 9302
    iget-object v3, v3, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    .line 10033
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->extraCallback:Ljava/lang/String;

    if-nez v3, :cond_d

    const-string v3, ""

    .line 136
    :cond_d
    invoke-direct {v1, v3}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_e
    new-array p1, v5, [Lo/addWrite;

    .line 140
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 10043
    new-instance v3, Lo/addWrite;

    const-string v6, "position"

    invoke-direct {v3, v6, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, p1, v2

    const-string v1, "pairs"

    .line 140
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "construct_pulldown_land"

    .line 139
    invoke-static {p1, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 141
    iget-object p1, p0, Lo/findContainingItemView$onRelationshipValidationResult;->onPostMessage:Lo/findContainingItemView;

    invoke-static {p1}, Lo/findContainingItemView;->asInterface(Lo/findContainingItemView;)Lo/setActive;

    move-result-object p1

    .line 10320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 10321
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v1, :cond_f

    move-object v4, p1

    :cond_f
    if-nez v4, :cond_10

    .line 142
    iget-object p1, p0, Lo/findContainingItemView$onRelationshipValidationResult;->onPostMessage:Lo/findContainingItemView;

    invoke-static {p1}, Lo/findContainingItemView;->asInterface(Lo/findContainingItemView;)Lo/setActive;

    move-result-object p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 143
    iget-object p1, p0, Lo/findContainingItemView$onRelationshipValidationResult;->onPostMessage:Lo/findContainingItemView;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/findContainingItemView$onNavigationEvent;

    const-string/jumbo v1, "winMachineViewData"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11258
    invoke-virtual {p1, v0}, Lo/findContainingItemView;->extraCallback(Lo/findContainingItemView$onNavigationEvent;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "construct_ui_load"

    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 145
    :cond_10
    iget-object p1, p0, Lo/findContainingItemView$onRelationshipValidationResult;->onPostMessage:Lo/findContainingItemView;

    invoke-static {p1}, Lo/findContainingItemView;->asBinder(Lo/findContainingItemView;)I

    move-result v0

    add-int/2addr v0, v5

    invoke-static {p1, v0}, Lo/findContainingItemView;->onPostMessage(Lo/findContainingItemView;I)V

    return-void

    .line 147
    :cond_11
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_12

    .line 148
    iget-object v0, p0, Lo/findContainingItemView$onRelationshipValidationResult;->onPostMessage:Lo/findContainingItemView;

    invoke-static {v0}, Lo/findContainingItemView;->onNavigationEvent(Lo/findContainingItemView;)V

    .line 149
    iget-object v0, p0, Lo/findContainingItemView$onRelationshipValidationResult;->onPostMessage:Lo/findContainingItemView;

    invoke-static {v0}, Lo/findContainingItemView;->onRelationshipValidationResult(Lo/findContainingItemView;)Lo/setActive;

    move-result-object v0

    new-instance v1, Lo/throwIfInMutationOperation;

    sget-object v2, Lo/findContainingItemView$ICustomTabsCallback$ICustomTabsCallback;->onNavigationEvent:Lo/findContainingItemView$ICustomTabsCallback$ICustomTabsCallback;

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 150
    sget-object v3, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 12014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 13014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 150
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1e

    invoke-static/range {v3 .. v9}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    :cond_12
    return-void
.end method
