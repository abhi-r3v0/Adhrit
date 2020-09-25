.class final Lo/unregisterForContextMenu$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/unregisterForContextMenu;-><init>()V
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
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;",
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
.field private synthetic onNavigationEvent:Lo/unregisterForContextMenu;


# direct methods
.method constructor <init>(Lo/unregisterForContextMenu;)V
    .locals 0

    iput-object p1, p0, Lo/unregisterForContextMenu$extraCallback;->onNavigationEvent:Lo/unregisterForContextMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 7

    .line 43
    check-cast p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;

    const/4 v0, 0x0

    const-string/jumbo v1, "successWithoutInstrumentGroup"

    const-string/jumbo v2, "successGroup"

    const-string v3, "failureGroup"

    const/16 v4, 0x8

    if-eqz p1, :cond_3

    .line 2016
    iget-object v5, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onNavigationEvent:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 1100
    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    if-ne v5, v6, :cond_3

    .line 1101
    iget-object v5, p0, Lo/unregisterForContextMenu$extraCallback;->onNavigationEvent:Lo/unregisterForContextMenu;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v5, v6}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/onDestroyView;

    invoke-virtual {v5}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1102
    iget-object v5, p0, Lo/unregisterForContextMenu$extraCallback;->onNavigationEvent:Lo/unregisterForContextMenu;

    sget v6, Lo/getSwitchMinWidth$onPostMessage;->successGroup:I

    invoke-virtual {v5, v6}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v5, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1103
    iget-object v0, p0, Lo/unregisterForContextMenu$extraCallback;->onNavigationEvent:Lo/unregisterForContextMenu;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->failureGroup:I

    invoke-virtual {v0, v2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    iget-object v0, p0, Lo/unregisterForContextMenu$extraCallback;->onNavigationEvent:Lo/unregisterForContextMenu;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->successWithoutInstrumentGroup:I

    invoke-virtual {v0, v2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1105
    iget-object v0, p0, Lo/unregisterForContextMenu$extraCallback;->onNavigationEvent:Lo/unregisterForContextMenu;

    .line 3016
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->onNavigationEvent:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1105
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 3017
    :cond_0
    iget-object v2, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/autodebit/Templates;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 3036
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/autodebit/Templates;->onMessageChannelReady:Lo/getTargetScrollPosition;

    if-eqz v2, :cond_1

    .line 4000
    iget-object v2, v2, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 4017
    :goto_0
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentsResponse;->extraCallback:Lcom/dreamplug/fabrik/ui/autodebit/Templates;

    if-eqz p1, :cond_2

    .line 4037
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/autodebit/Templates;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz p1, :cond_2

    .line 5000
    iget-object p1, p1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {p1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/CharSequence;

    .line 1105
    :cond_2
    invoke-static {v0, v1, v2, v3}, Lo/unregisterForContextMenu;->onPostMessage(Lo/unregisterForContextMenu;Ljava/util/List;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    const-string p1, "ad_setup_success_screen_load"

    .line 1106
    invoke-static {p1}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    return-void

    .line 1109
    :cond_3
    iget-object p1, p0, Lo/unregisterForContextMenu$extraCallback;->onNavigationEvent:Lo/unregisterForContextMenu;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p1, v5}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 1110
    iget-object p1, p0, Lo/unregisterForContextMenu$extraCallback;->onNavigationEvent:Lo/unregisterForContextMenu;

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->failureGroup:I

    invoke-virtual {p1, v5}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {p1, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    iget-object p1, p0, Lo/unregisterForContextMenu$extraCallback;->onNavigationEvent:Lo/unregisterForContextMenu;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->successGroup:I

    invoke-virtual {p1, v3}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    iget-object p1, p0, Lo/unregisterForContextMenu$extraCallback;->onNavigationEvent:Lo/unregisterForContextMenu;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->successWithoutInstrumentGroup:I

    invoke-virtual {p1, v2}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
