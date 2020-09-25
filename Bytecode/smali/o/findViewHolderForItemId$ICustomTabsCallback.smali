.class public final Lo/findViewHolderForItemId$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findViewHolderForItemId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/win/slotmachine/SlotMachineViewModel$loadSlotMachine$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;",
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
.field private synthetic onPostMessage:Lo/findViewHolderForItemId;


# direct methods
.method constructor <init>(Lo/findViewHolderForItemId;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lo/findViewHolderForItemId$ICustomTabsCallback;->onPostMessage:Lo/findViewHolderForItemId;

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
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 106
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 106
    check-cast v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;

    if-eqz v0, :cond_6

    .line 108
    iget-object v2, p0, Lo/findViewHolderForItemId$ICustomTabsCallback;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v2}, Lo/findViewHolderForItemId;->extraCallback(Lo/findViewHolderForItemId;)Lo/setActive;

    move-result-object v2

    .line 1029
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;->ICustomTabsCallback$Stub:Ljava/lang/Boolean;

    if-nez v3, :cond_0

    .line 108
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :cond_0
    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 111
    iget-object v2, p0, Lo/findViewHolderForItemId$ICustomTabsCallback;->onPostMessage:Lo/findViewHolderForItemId;

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    .line 2021
    iget-object v7, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;

    .line 2036
    iget-object v7, v7, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;->onNavigationEvent:Ljava/util/List;

    .line 112
    check-cast v7, Ljava/lang/Iterable;

    const-string v8, "$this$shuffled"

    invoke-static {v7, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2079
    invoke-static {v7}, Lo/getSessionPersistenceKey;->onMessageChannelReady(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 111
    invoke-virtual {v3, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    check-cast v3, Ljava/util/List;

    const-string v4, "<set-?>"

    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3037
    iput-object v3, v2, Lo/findViewHolderForItemId;->asInterface:Ljava/util/List;

    .line 116
    iget-object v2, p0, Lo/findViewHolderForItemId$ICustomTabsCallback;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v2}, Lo/findViewHolderForItemId;->onNavigationEvent(Lo/findViewHolderForItemId;)Lo/setActive;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 117
    iget-object v2, p0, Lo/findViewHolderForItemId$ICustomTabsCallback;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v2}, Lo/findViewHolderForItemId;->ICustomTabsCallback(Lo/findViewHolderForItemId;)Lo/setActive;

    move-result-object v2

    new-instance v3, Lo/findChildViewUnder$ICustomTabsCallback;

    invoke-direct {v3, v0}, Lo/findChildViewUnder$ICustomTabsCallback;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;)V

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 120
    iget-object v2, p0, Lo/findViewHolderForItemId$ICustomTabsCallback;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v2}, Lo/findViewHolderForItemId;->onMessageChannelReady(Lo/findViewHolderForItemId;)Lo/getChildItemId;

    move-result-object v2

    .line 4021
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;

    .line 120
    invoke-virtual {v2, v3}, Lo/getChildItemId;->extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/MetaSlotMachine;)V

    .line 123
    iget-object v2, p0, Lo/findViewHolderForItemId$ICustomTabsCallback;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v2}, Lo/findViewHolderForItemId;->onRelationshipValidationResult(Lo/findViewHolderForItemId;)Lo/MediaControllerCompatApi24$TransportControls;

    move-result-object v2

    .line 5013
    iget-object v3, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;

    .line 123
    invoke-static {v3}, Lo/findViewHolderForItemId;->extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Currency;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 5023
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;->onTransact:Ljava/lang/String;

    .line 6009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 129
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;

    if-eqz p1, :cond_2

    .line 6015
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/SlotMachineResponse;->ICustomTabsCallback:Ljava/lang/Boolean;

    .line 129
    :cond_2
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/16 v1, 0x3d

    if-nez p1, :cond_3

    iget-object p1, p0, Lo/findViewHolderForItemId$ICustomTabsCallback;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {p1}, Lo/findViewHolderForItemId;->ICustomTabsCallback$Stub(Lo/findViewHolderForItemId;)Z

    move-result p1

    if-nez p1, :cond_3

    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 7000
    sget-object p1, Lo/setTrackTintMode;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Lo/setTitleTextColor;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lo/ensureLogoView;->onMessageChannelReady(Lo/applyUserOverwrite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 129
    :cond_3
    move-object p1, v0

    check-cast p1, Ljava/lang/CharSequence;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_5

    :cond_4
    const/4 v5, 0x1

    :cond_5
    if-nez v5, :cond_6

    .line 131
    sget-object p1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 8000
    sget-object p1, Lo/setTrackTintMode;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21:Lo/setTitleTextColor;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v1, v2, v1

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 132
    iget-object p1, p0, Lo/findViewHolderForItemId$ICustomTabsCallback;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {p1}, Lo/findViewHolderForItemId;->asInterface(Lo/findViewHolderForItemId;)Lo/setActive;

    move-result-object p1

    new-instance v1, Lo/throwIfInMutationOperation;

    invoke-direct {v1, v0}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_6
    return-void

    .line 137
    :cond_7
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_8

    .line 138
    iget-object v0, p0, Lo/findViewHolderForItemId$ICustomTabsCallback;->onPostMessage:Lo/findViewHolderForItemId;

    invoke-static {v0}, Lo/findViewHolderForItemId;->asBinder(Lo/findViewHolderForItemId;)Lo/setActive;

    move-result-object v0

    new-instance v2, Lo/throwIfInMutationOperation;

    invoke-direct {v2, v1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 139
    sget-object v3, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 8014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 9014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 139
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1e

    invoke-static/range {v3 .. v9}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    :cond_8
    return-void
.end method
