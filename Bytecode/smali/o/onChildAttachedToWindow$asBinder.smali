.class public final Lo/onChildAttachedToWindow$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getScrapOrCachedViewForId;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onChildAttachedToWindow;->extraCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/getScrapOrCachedViewForId<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
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
        "com/dreamplug/fabrik/ui/lifestyle/win/spinthewheel/SpinTheWheelViewModel$getSpinTheWheelResult$1",
        "Lcom/dreamplug/network/internals/call/ResponseCallback;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
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
.field private synthetic extraCallback:Lo/onChildAttachedToWindow;


# direct methods
.method constructor <init>(Lo/onChildAttachedToWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lo/onChildAttachedToWindow$asBinder;->extraCallback:Lo/onChildAttachedToWindow;

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
            "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;",
            "Lcom/dreamplug/utils/model/BaseResponse;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "result"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 85
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;

    .line 1009
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 85
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    if-eqz p1, :cond_2

    .line 86
    iget-object v0, p0, Lo/onChildAttachedToWindow$asBinder;->extraCallback:Lo/onChildAttachedToWindow;

    invoke-static {v0}, Lo/onChildAttachedToWindow;->ICustomTabsCallback(Lo/onChildAttachedToWindow;)Lo/setActive;

    move-result-object v0

    new-instance v9, Lo/onChildAttachedToWindow$onNavigationEvent;

    .line 1111
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onPostMessage:Lo/getTargetScrollPosition;

    .line 87
    iget-object v2, p0, Lo/onChildAttachedToWindow$asBinder;->extraCallback:Lo/onChildAttachedToWindow;

    .line 1113
    iget-object v4, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 87
    invoke-static {v2, v4}, Lo/onChildAttachedToWindow;->extraCallback(Lo/onChildAttachedToWindow;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    .line 2109
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;

    if-eqz v2, :cond_0

    .line 3076
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Background;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;

    if-eqz v2, :cond_0

    .line 3096
    iget-object v1, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;->onPostMessage:Ljava/lang/String;

    :cond_0
    move-object v5, v1

    .line 3121
    iget-object v6, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onRelationshipValidationResult:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    .line 3123
    iget-object v7, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->ICustomTabsCallback$Stub:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;

    .line 4119
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;->onTransact:Ljava/lang/String;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "win"

    .line 5056
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    .line 89
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v2, v9

    .line 86
    invoke-direct/range {v2 .. v8}, Lo/onChildAttachedToWindow$onNavigationEvent;-><init>(Lo/getTargetScrollPosition;Ljava/lang/Integer;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Cta;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v9}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    :cond_2
    return-void

    .line 92
    :cond_3
    instance-of v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    if-eqz v0, :cond_e

    .line 93
    check-cast p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;

    .line 6014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 93
    check-cast v0, Lcom/dreamplug/utils/model/BaseResponse;

    if-eqz v0, :cond_4

    .line 94
    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getError_code()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_5

    goto/16 :goto_4

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    const v4, -0x5a55242e

    const-string v5, ""

    if-eq v3, v4, :cond_9

    const v4, -0x9b61dcf

    if-eq v3, v4, :cond_6

    goto/16 :goto_4

    :cond_6
    const-string v3, "inadequate_points"

    .line 108
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 109
    iget-object p1, p0, Lo/onChildAttachedToWindow$asBinder;->extraCallback:Lo/onChildAttachedToWindow;

    invoke-static {p1}, Lo/onChildAttachedToWindow;->onMessageChannelReady(Lo/onChildAttachedToWindow;)Lo/setActive;

    move-result-object p1

    new-instance v1, Lo/throwIfInMutationOperation;

    .line 110
    new-instance v2, Lo/findContainingItemView$onMessageChannelReady;

    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    move-object v3, v5

    .line 112
    :cond_7
    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    move-object v5, v0

    :goto_2
    const-string v0, "coins"

    .line 110
    invoke-direct {v2, v3, v5, v0}, Lo/findContainingItemView$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    :cond_9
    const-string v3, "inadequate_gems"

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 96
    sget-object v2, Lo/getShowText;->ICustomTabsCallback:Lo/getShowText;

    invoke-static {}, Lo/getShowText;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 97
    iget-object p1, p0, Lo/onChildAttachedToWindow$asBinder;->extraCallback:Lo/onChildAttachedToWindow;

    invoke-static {p1}, Lo/onChildAttachedToWindow;->onMessageChannelReady(Lo/onChildAttachedToWindow;)Lo/setActive;

    move-result-object p1

    .line 98
    new-instance v1, Lo/throwIfInMutationOperation;

    new-instance v2, Lo/findContainingItemView$onMessageChannelReady;

    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getHeader()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a

    move-object v3, v5

    .line 100
    :cond_a
    invoke-virtual {v0}, Lcom/dreamplug/utils/model/BaseResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    goto :goto_3

    :cond_b
    move-object v5, v0

    :goto_3
    const-string v0, "gems"

    .line 98
    invoke-direct {v2, v3, v5, v0}, Lo/findContainingItemView$onMessageChannelReady;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p1, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void

    .line 104
    :cond_c
    iget-object v0, p0, Lo/onChildAttachedToWindow$asBinder;->extraCallback:Lo/onChildAttachedToWindow;

    invoke-static {v0}, Lo/onChildAttachedToWindow;->ICustomTabsCallback(Lo/onChildAttachedToWindow;)Lo/setActive;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 105
    sget-object v2, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    .line 7014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 8014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 105
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    invoke-static/range {v2 .. v8}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    return-void

    .line 116
    :cond_d
    :goto_4
    iget-object v0, p0, Lo/onChildAttachedToWindow$asBinder;->extraCallback:Lo/onChildAttachedToWindow;

    invoke-static {v0}, Lo/onChildAttachedToWindow;->ICustomTabsCallback(Lo/onChildAttachedToWindow;)Lo/setActive;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 117
    sget-object v2, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    .line 9014
    iget-object v0, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->onPostMessage:Ljava/lang/Throwable;

    .line 10014
    iget-object p1, p1, Lo/getScrapOrHiddenOrCachedHolderForPosition$onMessageChannelReady;->extraCallback:Ljava/lang/Object;

    .line 117
    check-cast p1, Lcom/dreamplug/utils/model/BaseResponse;

    invoke-static {v0, p1}, Lo/extraCallback;->onPostMessage(Ljava/lang/Throwable;Lcom/dreamplug/utils/model/BaseResponse;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1e

    invoke-static/range {v2 .. v8}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    :cond_e
    return-void
.end method
