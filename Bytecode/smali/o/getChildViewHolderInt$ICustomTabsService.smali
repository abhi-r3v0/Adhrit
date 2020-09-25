.class public final Lo/getChildViewHolderInt$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/PlaybackStateCompat$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getChildViewHolderInt;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J \u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0005H\u0016J\u0010\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/win/machine/WinMachineFragment$onViewCreated$1",
        "Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;",
        "onPageScrollStateChanged",
        "",
        "state",
        "",
        "onPageScrolled",
        "position",
        "positionOffset",
        "",
        "positionOffsetPixels",
        "onPageSelected",
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
.field private synthetic onMessageChannelReady:Lo/getChildViewHolderInt;


# direct methods
.method constructor <init>(Lo/getChildViewHolderInt;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 122
    iput-object p1, p0, Lo/getChildViewHolderInt$ICustomTabsService;->onMessageChannelReady:Lo/getChildViewHolderInt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(I)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 8

    .line 130
    iget-object v0, p0, Lo/getChildViewHolderInt$ICustomTabsService;->onMessageChannelReady:Lo/getChildViewHolderInt;

    invoke-static {v0}, Lo/getChildViewHolderInt;->onNavigationEvent(Lo/getChildViewHolderInt;)Lo/findContainingItemView;

    move-result-object v0

    .line 1249
    iput p1, v0, Lo/findContainingItemView;->ICustomTabsService$Stub:I

    .line 1250
    iget-object v1, v0, Lo/findContainingItemView;->ICustomTabsCallback:Lo/setActive;

    .line 1320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 1321
    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v3

    .line 1250
    :goto_0
    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const/4 v4, 0x2

    sub-int/2addr v1, v4

    if-ne v1, p1, :cond_2

    .line 1251
    invoke-virtual {v0}, Lo/findContainingItemView;->onPostMessage()V

    .line 1253
    :cond_2
    iget-object v1, v0, Lo/findContainingItemView;->extraCallback:Lo/setActive;

    .line 2033
    iget-object v5, v0, Lo/findContainingItemView;->ICustomTabsCallback:Lo/setActive;

    check-cast v5, Landroidx/lifecycle/LiveData;

    .line 2320
    iget-object v5, v5, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 2321
    sget-object v6, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v5, v6, :cond_3

    goto :goto_2

    :cond_3
    move-object v5, v3

    :goto_2
    if-nez v5, :cond_4

    .line 1253
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_4
    check-cast v5, Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    .line 3033
    iget-object v1, v0, Lo/findContainingItemView;->ICustomTabsCallback:Lo/setActive;

    check-cast v1, Landroidx/lifecycle/LiveData;

    .line 3320
    iget-object v1, v1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v5, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v1, v5, :cond_5

    goto :goto_3

    :cond_5
    move-object v1, v3

    :goto_3
    if-nez v1, :cond_6

    .line 1254
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    check-cast v1, Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/findContainingItemView$onNavigationEvent;

    const-string/jumbo v5, "winMachineViewData"

    invoke-static {v1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4258
    invoke-virtual {v0, v1}, Lo/findContainingItemView;->extraCallback(Lo/findContainingItemView$onNavigationEvent;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "construct_ui_load"

    invoke-static {v1, v0}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    const/4 v0, 0x3

    new-array v1, v0, [Lo/addWrite;

    add-int/lit8 v5, p1, 0x1

    .line 133
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 5043
    new-instance v6, Lo/addWrite;

    const-string v7, "position"

    invoke-direct {v6, v7, v5}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, v2

    .line 134
    iget-object v2, p0, Lo/getChildViewHolderInt$ICustomTabsService;->onMessageChannelReady:Lo/getChildViewHolderInt;

    invoke-static {v2}, Lo/getChildViewHolderInt;->onNavigationEvent(Lo/getChildViewHolderInt;)Lo/findContainingItemView;

    move-result-object v2

    invoke-virtual {v2}, Lo/findContainingItemView;->ICustomTabsCallback()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 6043
    new-instance v5, Lo/addWrite;

    const-string v6, "is_locked"

    invoke-direct {v5, v6, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x1

    aput-object v5, v1, v2

    .line 136
    iget-object v5, p0, Lo/getChildViewHolderInt$ICustomTabsService;->onMessageChannelReady:Lo/getChildViewHolderInt;

    invoke-static {v5}, Lo/getChildViewHolderInt;->onNavigationEvent(Lo/getChildViewHolderInt;)Lo/findContainingItemView;

    move-result-object v5

    .line 7033
    iget-object v5, v5, Lo/findContainingItemView;->ICustomTabsCallback:Lo/setActive;

    check-cast v5, Landroidx/lifecycle/LiveData;

    .line 7320
    iget-object v5, v5, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 7321
    sget-object v6, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq v5, v6, :cond_7

    goto :goto_4

    :cond_7
    move-object v5, v3

    .line 136
    :goto_4
    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_9

    const-string v6, "$this$getOrNull"

    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_8

    const-string v6, "$this$lastIndex"

    .line 8266
    invoke-static {v5, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9210
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v2

    if-gt p1, v6, :cond_8

    .line 8266
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    :cond_8
    move-object p1, v3

    .line 136
    :goto_5
    check-cast p1, Lo/findContainingItemView$onNavigationEvent;

    if-eqz p1, :cond_9

    .line 9302
    iget-object p1, p1, Lo/findContainingItemView$onNavigationEvent;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;

    if-eqz p1, :cond_9

    .line 10029
    iget-object v3, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinMachineCard;->onPostMessage:Ljava/lang/String;

    .line 10043
    :cond_9
    new-instance p1, Lo/addWrite;

    const-string v2, "game_id"

    invoke-direct {p1, v2, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p1, v1, v4

    const-string p1, "pairs"

    .line 132
    invoke-static {v1, p1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10105
    new-instance p1, Ljava/util/HashMap;

    invoke-static {v0}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v0

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    check-cast p1, Ljava/util/Map;

    invoke-static {p1, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v0, "construct_pulldown_scroll"

    .line 131
    invoke-static {v0, p1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    return-void
.end method

.method public final onMessageChannelReady(IF)V
    .locals 0

    return-void
.end method
