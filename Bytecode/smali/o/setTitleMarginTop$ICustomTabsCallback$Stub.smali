.class final Lo/setTitleMarginTop$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setTitleMarginTop;->onCreate(Landroid/os/Bundle;)V
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
.field private synthetic ICustomTabsCallback:Lo/setTitleMarginTop;


# direct methods
.method constructor <init>(Lo/setTitleMarginTop;)V
    .locals 0

    iput-object p1, p0, Lo/setTitleMarginTop$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 4

    .line 82
    check-cast p1, Lo/throwIfInMutationOperation;

    if-eqz p1, :cond_4

    .line 2011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 2016
    :cond_0
    iget-object v0, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1114
    :goto_0
    check-cast v0, Lo/getRowCountForAccessibility$ICustomTabsCallback;

    if-eqz v0, :cond_4

    .line 1115
    sget-object v2, Lo/getRowCountForAccessibility;->onMessageChannelReady:Lo/getRowCountForAccessibility$onPostMessage;

    .line 2053
    iget-object v2, v0, Lo/getRowCountForAccessibility$ICustomTabsCallback;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    const-string v3, "data"

    .line 1115
    invoke-static {v2, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3024
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 3043
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->warmup:Lcom/dreamplug/fabrik/ui/nba/helper/TargetNav;

    if-eqz v2, :cond_1

    .line 3049
    iget-object v1, v2, Lcom/dreamplug/fabrik/ui/nba/helper/TargetNav;->onMessageChannelReady:Ljava/lang/String;

    :cond_1
    const/4 v2, 0x1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_4

    .line 4011
    iget-boolean v1, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-nez v1, :cond_3

    .line 4015
    iput-boolean v2, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 1118
    :cond_3
    sget-object p1, Lo/getRowCountForAccessibility;->onMessageChannelReady:Lo/getRowCountForAccessibility$onPostMessage;

    .line 4057
    invoke-static {}, Lo/getRowCountForAccessibility;->onMessageChannelReady()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1119
    sget-object p1, Lo/onInitializeAccessibilityNodeInfoForItem;->onMessageChannelReady:Lo/onInitializeAccessibilityNodeInfoForItem$onMessageChannelReady;

    invoke-static {v0}, Lo/onInitializeAccessibilityNodeInfoForItem$onMessageChannelReady;->ICustomTabsCallback(Lo/getRowCountForAccessibility$ICustomTabsCallback;)Lo/onInitializeAccessibilityNodeInfoForItem;

    move-result-object p1

    iget-object v0, p0, Lo/setTitleMarginTop$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/setTitleMarginTop;

    invoke-virtual {v0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "fullscreen_interstitial"

    invoke-virtual {p1, v0, v1}, Lo/onAudioInfoChanged;->onPostMessage(Lo/requestExtraBinder;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
