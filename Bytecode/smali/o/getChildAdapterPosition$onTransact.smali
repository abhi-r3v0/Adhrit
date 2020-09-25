.class final Lo/getChildAdapterPosition$onTransact;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getChildAdapterPosition;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
.field private synthetic onNavigationEvent:Lo/getChildAdapterPosition;


# direct methods
.method constructor <init>(Lo/getChildAdapterPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getChildAdapterPosition$onTransact;->onNavigationEvent:Lo/getChildAdapterPosition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 45
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const-string v0, "pairs"

    const-string v1, "is_locked"

    const-string v2, "position"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_10

    if-eq p1, v3, :cond_0

    goto/16 :goto_8

    :cond_0
    new-array p1, v3, [Lo/addWrite;

    .line 1146
    iget-object v6, p0, Lo/getChildAdapterPosition$onTransact;->onNavigationEvent:Lo/getChildAdapterPosition;

    invoke-static {v6}, Lo/getChildAdapterPosition;->onMessageChannelReady(Lo/getChildAdapterPosition;)Lo/findContainingItemView;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 5087
    iget v6, v6, Lo/findContainingItemView;->ICustomTabsService$Stub:I

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_0
    add-int/2addr v6, v4

    .line 1147
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 6043
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v2, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, p1, v5

    .line 1148
    iget-object v2, p0, Lo/getChildAdapterPosition$onTransact;->onNavigationEvent:Lo/getChildAdapterPosition;

    invoke-static {v2}, Lo/getChildAdapterPosition;->onMessageChannelReady(Lo/getChildAdapterPosition;)Lo/findContainingItemView;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lo/findContainingItemView;->ICustomTabsCallback()Z

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 1149
    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 7043
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v1, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, p1, v4

    .line 1145
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "construct_pulldown_circle_drag_success"

    .line 1143
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1152
    iget-object p1, p0, Lo/getChildAdapterPosition$onTransact;->onNavigationEvent:Lo/getChildAdapterPosition;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->winLogo:I

    invoke-virtual {p1, v0}, Lo/getChildAdapterPosition;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setSpeed;

    const-string/jumbo v0, "winLogo"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    const-string v0, "$this$gone"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 8017
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1153
    iget-object p1, p0, Lo/getChildAdapterPosition$onTransact;->onNavigationEvent:Lo/getChildAdapterPosition;

    invoke-static {p1}, Lo/getChildAdapterPosition;->onMessageChannelReady(Lo/getChildAdapterPosition;)Lo/findContainingItemView;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 8159
    invoke-virtual {p1}, Lo/findContainingItemView;->ICustomTabsCallback()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 8160
    iget-object v0, p1, Lo/findContainingItemView;->onNavigationEvent:Lo/setActive;

    new-instance v2, Lo/throwIfInMutationOperation;

    sget-object v3, Lo/findContainingItemView$ICustomTabsCallback$onPostMessage;->ICustomTabsCallback:Lo/findContainingItemView$ICustomTabsCallback$onPostMessage;

    invoke-direct {v2, v3}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 8161
    iget-object v0, p1, Lo/findContainingItemView;->asBinder:Lo/setActive;

    new-instance v2, Lo/throwIfInMutationOperation;

    .line 9037
    iget-object p1, p1, Lo/findContainingItemView;->extraCallback:Lo/setActive;

    check-cast p1, Landroidx/lifecycle/LiveData;

    .line 9320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 9321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v3, :cond_3

    move-object v1, p1

    .line 8161
    :cond_3
    check-cast v1, Lo/findContainingItemView$onNavigationEvent;

    if-eqz v1, :cond_4

    .line 10302
    iget-object p1, v1, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    if-eqz p1, :cond_4

    .line 11033
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->extraCallback:Ljava/lang/String;

    if-nez p1, :cond_5

    :cond_4
    const-string p1, ""

    .line 8161
    :cond_5
    invoke-direct {v2, p1}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 11173
    :cond_6
    iput-boolean v5, p1, Lo/findContainingItemView;->extraCommand:Z

    .line 11174
    iput-object v1, p1, Lo/findContainingItemView;->updateVisuals:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinPullDownResponse;

    .line 11175
    iget-object v0, p1, Lo/findContainingItemView;->onRelationshipValidationResult:Lo/setActive;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 11176
    iget-object v0, p1, Lo/findContainingItemView;->onMessageChannelReady:Lo/setActive;

    new-instance v2, Lo/throwIfInMutationOperation;

    sget-object v3, Lo/findContainingItemView$ICustomTabsCallback$extraCallback;->onPostMessage:Lo/findContainingItemView$ICustomTabsCallback$extraCallback;

    invoke-direct {v2, v3}, Lo/throwIfInMutationOperation;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 12037
    iget-object v0, p1, Lo/findContainingItemView;->extraCallback:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 12320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 12321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v2, :cond_7

    goto :goto_2

    :cond_7
    move-object v0, v1

    .line 11177
    :goto_2
    check-cast v0, Lo/findContainingItemView$onNavigationEvent;

    if-eqz v0, :cond_8

    .line 13302
    iget-object v0, v0, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    if-eqz v0, :cond_8

    .line 14031
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_3

    :cond_8
    move-object v0, v1

    :goto_3
    if-eqz v0, :cond_c

    .line 15000
    iget-object v0, p1, Lo/findContainingItemView;->newSession:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/findViewHolderForPosition;

    .line 15037
    iget-object v2, p1, Lo/findContainingItemView;->extraCallback:Lo/setActive;

    check-cast v2, Landroidx/lifecycle/LiveData;

    .line 15320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 15321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v2, v3, :cond_9

    goto :goto_4

    :cond_9
    move-object v2, v1

    .line 11178
    :goto_4
    check-cast v2, Lo/findContainingItemView$onNavigationEvent;

    if-eqz v2, :cond_a

    .line 16302
    iget-object v2, v2, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    if-eqz v2, :cond_a

    .line 17031
    iget-object v1, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->ICustomTabsCallback:Ljava/lang/String;

    :cond_a
    if-nez v1, :cond_b

    .line 11178
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_b
    invoke-interface {v0, v1}, Lo/findViewHolderForPosition;->onMessageChannelReady(Ljava/lang/String;)Lo/clearScrap;

    move-result-object v0

    goto :goto_6

    .line 18000
    :cond_c
    iget-object v0, p1, Lo/findContainingItemView;->newSession:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/findViewHolderForPosition;

    .line 18037
    iget-object v2, p1, Lo/findContainingItemView;->extraCallback:Lo/setActive;

    check-cast v2, Landroidx/lifecycle/LiveData;

    .line 18320
    iget-object v2, v2, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 18321
    sget-object v3, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v2, v3, :cond_d

    goto :goto_5

    :cond_d
    move-object v2, v1

    .line 11180
    :goto_5
    check-cast v2, Lo/findContainingItemView$onNavigationEvent;

    if-eqz v2, :cond_e

    .line 19302
    iget-object v2, v2, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    if-eqz v2, :cond_e

    .line 20029
    iget-object v1, v2, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->onPostMessage:Ljava/lang/String;

    :cond_e
    if-nez v1, :cond_f

    .line 11180
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_f
    invoke-interface {v0, v1}, Lo/findViewHolderForPosition;->ICustomTabsCallback(Ljava/lang/String;)Lo/clearScrap;

    move-result-object v0

    .line 11181
    :goto_6
    new-instance v1, Lo/findContainingItemView$ICustomTabsCallback$Stub;

    invoke-direct {v1, p1}, Lo/findContainingItemView$ICustomTabsCallback$Stub;-><init>(Lo/findContainingItemView;)V

    check-cast v1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, v1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    goto :goto_8

    :cond_10
    new-array p1, v3, [Lo/addWrite;

    .line 1135
    iget-object v6, p0, Lo/getChildAdapterPosition$onTransact;->onNavigationEvent:Lo/getChildAdapterPosition;

    invoke-static {v6}, Lo/getChildAdapterPosition;->onMessageChannelReady(Lo/getChildAdapterPosition;)Lo/findContainingItemView;

    move-result-object v6

    if-eqz v6, :cond_11

    .line 2087
    iget v6, v6, Lo/findContainingItemView;->ICustomTabsService$Stub:I

    goto :goto_7

    :cond_11
    const/4 v6, 0x0

    :goto_7
    add-int/2addr v6, v4

    .line 1136
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3043
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v2, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, p1, v5

    .line 1137
    iget-object v2, p0, Lo/getChildAdapterPosition$onTransact;->onNavigationEvent:Lo/getChildAdapterPosition;

    invoke-static {v2}, Lo/getChildAdapterPosition;->onMessageChannelReady(Lo/getChildAdapterPosition;)Lo/findContainingItemView;

    move-result-object v2

    if-eqz v2, :cond_12

    invoke-virtual {v2}, Lo/findContainingItemView;->ICustomTabsCallback()Z

    move-result v5

    .line 1138
    :cond_12
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 4043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v1, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v5, p1, v4

    .line 1134
    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4105
    new-instance v0, Ljava/util/HashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string p1, "construct_pulldown_circle_drag"

    .line 1132
    invoke-static {p1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1156
    :cond_13
    :goto_8
    iget-object p1, p0, Lo/getChildAdapterPosition$onTransact;->onNavigationEvent:Lo/getChildAdapterPosition;

    invoke-static {p1}, Lo/getChildAdapterPosition;->onNavigationEvent(Lo/getChildAdapterPosition;)V

    .line 45
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
