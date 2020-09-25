.class final Lo/getViewPosition$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getViewPosition;->onCreate(Landroid/os/Bundle;)V
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
        "Lo/throwIfInMutationOperation<",
        "+",
        "Lo/getRowCountForAccessibility$ICustomTabsCallback;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001e\u0010\u0002\u001a\u001a\u0012\u0006\u0012\u0004\u0018\u00010\u0004 \u0005*\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "event",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/dreamplug/fabrik/ui/interstitial/InterstitialManager$InterstitialData;",
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
.field private synthetic onPostMessage:Lo/getViewPosition;


# direct methods
.method constructor <init>(Lo/getViewPosition;)V
    .locals 0

    iput-object p1, p0, Lo/getViewPosition$warmup;->onPostMessage:Lo/getViewPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 5

    .line 56
    check-cast p1, Lo/throwIfInMutationOperation;

    if-eqz p1, :cond_c

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2016
    :cond_0
    iget-object v0, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1136
    :goto_0
    check-cast v0, Lo/getRowCountForAccessibility$ICustomTabsCallback;

    if-eqz v0, :cond_c

    .line 1137
    sget-object v2, Lo/getRowCountForAccessibility;->onMessageChannelReady:Lo/getRowCountForAccessibility$onPostMessage;

    .line 2057
    invoke-static {}, Lo/getRowCountForAccessibility;->onMessageChannelReady()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 3011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-nez v0, :cond_1

    .line 3015
    iput-boolean v3, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    :cond_1
    return-void

    .line 1140
    :cond_2
    sget-object v2, Lo/getRowCountForAccessibility;->onMessageChannelReady:Lo/getRowCountForAccessibility$onPostMessage;

    .line 3053
    iget-object v2, v0, Lo/getRowCountForAccessibility$ICustomTabsCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    const-string v4, "data"

    .line 1140
    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4024
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 4043
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->warmup:Lcom/dreamplug/fabrik/ui/nba/helper/TargetNav;

    if-eqz v2, :cond_3

    .line 4049
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TargetNav;->onMessageChannelReady:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_8

    .line 1141
    sget-object v2, Lo/onInitializeAccessibilityNodeInfoForItem;->onMessageChannelReady:Lo/onInitializeAccessibilityNodeInfoForItem$onMessageChannelReady;

    invoke-static {v0}, Lo/onInitializeAccessibilityNodeInfoForItem$onMessageChannelReady;->ICustomTabsCallback(Lo/getRowCountForAccessibility$ICustomTabsCallback;)Lo/onInitializeAccessibilityNodeInfoForItem;

    move-result-object v0

    iget-object v2, p0, Lo/getViewPosition$warmup;->onPostMessage:Lo/getViewPosition;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    :cond_5
    if-nez v1, :cond_6

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_6
    const-string v2, "fullscreen_interstitial"

    invoke-virtual {v0, v1, v2}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    .line 5011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-nez v0, :cond_7

    .line 5015
    iput-boolean v3, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    :cond_7
    return-void

    .line 5053
    :cond_8
    iget-object v2, v0, Lo/getRowCountForAccessibility$ICustomTabsCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 6024
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 6043
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->warmup:Lcom/dreamplug/fabrik/ui/nba/helper/TargetNav;

    if-eqz v2, :cond_9

    .line 6049
    iget-object v1, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TargetNav;->onMessageChannelReady:Ljava/lang/String;

    .line 1144
    :cond_9
    invoke-static {v1}, Lo/getViewPosition;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lo/getViewPosition$warmup;->onPostMessage:Lo/getViewPosition;

    invoke-static {v2}, Lo/getViewPosition;->extraCallback(Lo/getViewPosition;)Lo/onDetach$RemoteActionCompatParcelizer;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 7019
    iget-object v2, v2, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    if-nez v2, :cond_b

    :cond_a
    const-string v2, ""

    .line 1144
    :cond_b
    invoke-static {v1, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1145
    iget-object v1, p0, Lo/getViewPosition$warmup;->onPostMessage:Lo/getViewPosition;

    .line 8000
    iget-object v1, v1, Lo/getViewPosition;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getMoveDuration;

    const-string v2, "nbaCard"

    .line 1145
    invoke-static {v0, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8593
    new-instance v2, Lo/onGetChildDrawingOrder$getRoot;

    invoke-direct {v2, v0}, Lo/onGetChildDrawingOrder$getRoot;-><init>(Lo/getRowCountForAccessibility$ICustomTabsCallback;)V

    check-cast v2, Lo/getRemoveDuration;

    invoke-virtual {v1, v2}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    .line 9011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-nez v0, :cond_c

    .line 9015
    iput-boolean v3, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    :cond_c
    return-void
.end method
