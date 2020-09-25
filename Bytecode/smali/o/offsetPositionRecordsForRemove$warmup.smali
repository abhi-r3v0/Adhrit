.class final Lo/offsetPositionRecordsForRemove$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/offsetPositionRecordsForRemove;
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
        "Lo/saveOldPositions$ICustomTabsCallback;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "data",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/luckynumber/WinLuckyNumberViewModel$WinLuckyNumberViewData;",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "com/dreamplug/fabrik/ui/lifestyle/win/luckynumber/WinLuckyNumberFragment$setLiveDataObservers$2$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/saveOldPositions;

.field private synthetic onNavigationEvent:Lo/offsetPositionRecordsForRemove;


# direct methods
.method constructor <init>(Lo/saveOldPositions;Lo/offsetPositionRecordsForRemove;)V
    .locals 0

    iput-object p1, p0, Lo/offsetPositionRecordsForRemove$warmup;->ICustomTabsCallback:Lo/saveOldPositions;

    iput-object p2, p0, Lo/offsetPositionRecordsForRemove$warmup;->onNavigationEvent:Lo/offsetPositionRecordsForRemove;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 56
    check-cast p1, Lo/saveOldPositions$ICustomTabsCallback;

    if-eqz p1, :cond_5

    .line 2142
    iget-object v0, p1, Lo/saveOldPositions$ICustomTabsCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;

    .line 3024
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinLuckyNumberCard;->onNavigationEvent:Ljava/lang/String;

    .line 1143
    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "help"

    const-string v3, "$this$visible"

    if-eqz v0, :cond_2

    .line 1144
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$warmup;->onNavigationEvent:Lo/offsetPositionRecordsForRemove;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->help:I

    invoke-virtual {v0, v4}, Lo/offsetPositionRecordsForRemove;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/offsetPosition;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v2, "$this$gone"

    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    .line 4017
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1146
    :cond_2
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$warmup;->onNavigationEvent:Lo/offsetPositionRecordsForRemove;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->help:I

    invoke-virtual {v0, v4}, Lo/offsetPositionRecordsForRemove;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/offsetPosition;

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5009
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1149
    :goto_2
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$warmup;->onNavigationEvent:Lo/offsetPositionRecordsForRemove;

    invoke-static {v0}, Lo/offsetPositionRecordsForRemove;->onNavigationEvent(Lo/offsetPositionRecordsForRemove;)V

    .line 1151
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$warmup;->ICustomTabsCallback:Lo/saveOldPositions;

    .line 5045
    iget-object v0, v0, Lo/saveOldPositions;->asInterface:Lo/setActive;

    check-cast v0, Landroidx/lifecycle/LiveData;

    .line 5320
    iget-object v0, v0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 5321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v0, v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 1151
    :goto_3
    check-cast v0, Lo/saveOldPositions$extraCallback;

    if-eqz v0, :cond_4

    .line 1152
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$warmup;->onNavigationEvent:Lo/offsetPositionRecordsForRemove;

    const-string v2, "it"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lo/offsetPositionRecordsForRemove;->onMessageChannelReady(Lo/offsetPositionRecordsForRemove;Lo/saveOldPositions$extraCallback;)V

    .line 1153
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$warmup;->onNavigationEvent:Lo/offsetPositionRecordsForRemove;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loader:I

    invoke-virtual {p1, v0}, Lo/offsetPositionRecordsForRemove;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1154
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$warmup;->onNavigationEvent:Lo/offsetPositionRecordsForRemove;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->cardBackground:I

    invoke-virtual {p1, v0}, Lo/offsetPositionRecordsForRemove;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/isScrap;

    const-string v0, "cardBackground"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6009
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1155
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$warmup;->onNavigationEvent:Lo/offsetPositionRecordsForRemove;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, v0}, Lo/offsetPositionRecordsForRemove;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/getNextSpan;

    const-string v0, "backgroundView"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7009
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1156
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$warmup;->onNavigationEvent:Lo/offsetPositionRecordsForRemove;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->success_lottie:I

    invoke-virtual {p1, v0}, Lo/offsetPositionRecordsForRemove;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/setMinimumHeight;

    const-string/jumbo v0, "success_lottie"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8009
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1157
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$warmup;->onNavigationEvent:Lo/offsetPositionRecordsForRemove;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->tokenMachineContainer:I

    invoke-virtual {p1, v0}, Lo/offsetPositionRecordsForRemove;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string/jumbo v0, "tokenMachineContainer"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/view/View;

    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9009
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 1160
    :cond_4
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$warmup;->onNavigationEvent:Lo/offsetPositionRecordsForRemove;

    invoke-static {v0}, Lo/offsetPositionRecordsForRemove;->extraCallback(Lo/offsetPositionRecordsForRemove;)Lo/saveOldPositions;

    move-result-object v0

    invoke-virtual {v0}, Lo/saveOldPositions;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object v0

    const-string v1, "construct_ui_load"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1161
    iget-object v0, p0, Lo/offsetPositionRecordsForRemove$warmup;->onNavigationEvent:Lo/offsetPositionRecordsForRemove;

    invoke-static {v0, p1}, Lo/offsetPositionRecordsForRemove;->ICustomTabsCallback(Lo/offsetPositionRecordsForRemove;Lo/saveOldPositions$ICustomTabsCallback;)V

    return-void

    .line 1164
    :cond_5
    iget-object p1, p0, Lo/offsetPositionRecordsForRemove$warmup;->onNavigationEvent:Lo/offsetPositionRecordsForRemove;

    sget-object v0, Lo/saveOldPositions$extraCallback$onNavigationEvent;->ICustomTabsCallback:Lo/saveOldPositions$extraCallback$onNavigationEvent;

    check-cast v0, Lo/saveOldPositions$extraCallback;

    invoke-static {p1, v0}, Lo/offsetPositionRecordsForRemove;->onMessageChannelReady(Lo/offsetPositionRecordsForRemove;Lo/saveOldPositions$extraCallback;)V

    return-void
.end method
