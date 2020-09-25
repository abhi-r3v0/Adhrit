.class final Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;-><init>()V
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
        "Lo/calculateDistanceToFinalSnap;",
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
        "event",
        "Lcom/dreamplug/utils/Event;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GamePlayerViewEffects;",
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
.field final synthetic onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 11

    .line 60
    check-cast p1, Lo/throwIfInMutationOperation;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 2011
    iget-boolean v2, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v2, :cond_0

    move-object p1, v1

    goto :goto_0

    .line 2015
    :cond_0
    iput-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 2016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1192
    :goto_0
    check-cast p1, Lo/calculateDistanceToFinalSnap;

    goto :goto_1

    :cond_1
    move-object p1, v1

    .line 1193
    :goto_1
    instance-of v2, p1, Lo/getDecoratedMeasurementInOther;

    const-string v3, "This FragmentTransaction is not allowed to be added to the back stack."

    const/4 v4, 0x2

    const v5, 0x7f0b01ff

    if-eqz v2, :cond_3

    .line 1194
    new-instance v2, Lo/offsetChild;

    new-instance v6, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals$onNavigationEvent;

    invoke-direct {v6, p0, p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals$onNavigationEvent;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;Lo/calculateDistanceToFinalSnap;)V

    check-cast v6, Lo/onDisconnectSetValue;

    invoke-direct {v2, v6}, Lo/offsetChild;-><init>(Lo/onDisconnectSetValue;)V

    .line 1218
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    .line 2464
    new-instance v6, Lo/binderDied;

    invoke-direct {v6, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1220
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 3343
    invoke-virtual {v6, v5, v2, v1, v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 3651
    iget-boolean p1, v6, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_2

    .line 3655
    iput-boolean v0, v6, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 3656
    iput-object v1, v6, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1222
    invoke-virtual {v6}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    return-void

    .line 3652
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1224
    :cond_3
    instance-of v2, p1, Lo/getDecoratedMeasurement;

    const-string v6, "extra"

    if-eqz v2, :cond_5

    .line 1225
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {v2}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/findTargetSnapPosition;

    move-result-object v2

    invoke-virtual {v2}, Lo/findTargetSnapPosition;->onPostMessage()Ljava/util/Map;

    move-result-object v2

    const-string v7, "game_details_load"

    invoke-static {v7, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1226
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 4464
    new-instance v7, Lo/binderDied;

    invoke-direct {v7, v2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1228
    sget-object v2, Lo/getMode;->onPostMessage:Lo/getMode$onPostMessage;

    check-cast p1, Lo/getDecoratedMeasurement;

    .line 5069
    iget-object p1, p1, Lo/getDecoratedMeasurement;->ICustomTabsCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/Rules;

    const-string/jumbo v2, "rules"

    .line 1228
    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6065
    new-instance v2, Lo/getMode;

    invoke-direct {v2}, Lo/getMode;-><init>()V

    .line 6066
    check-cast v2, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    invoke-static {v2, p1, v6}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 6343
    invoke-virtual {v7, v5, v2, v1, v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 6651
    iget-boolean p1, v7, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_4

    .line 6655
    iput-boolean v0, v7, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 6656
    iput-object v1, v7, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1230
    invoke-virtual {v7}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    return-void

    .line 6652
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1232
    :cond_5
    instance-of v2, p1, Lo/getTransformedStartWithDecoration;

    if-eqz v2, :cond_6

    .line 1233
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->asInterface(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/getMoveDuration;

    move-result-object v0

    check-cast p1, Lo/getTransformedStartWithDecoration;

    .line 7071
    iget-object p1, p1, Lo/getTransformedStartWithDecoration;->ICustomTabsCallback:Ljava/lang/String;

    .line 7285
    new-instance v1, Lo/onGetChildDrawingOrder$INotificationSideChannel$Default;

    new-instance v2, Lo/clearOnChildAttachStateChangeListeners$extraCallback;

    const-string v3, "game_ui"

    invoke-direct {v2, p1, v3}, Lo/clearOnChildAttachStateChangeListeners$extraCallback;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lo/onGetChildDrawingOrder$INotificationSideChannel$Default;-><init>(Lo/clearOnChildAttachStateChangeListeners$extraCallback;)V

    check-cast v1, Lo/getRemoveDuration;

    invoke-virtual {v0, v1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    .line 1235
    :cond_6
    instance-of v2, p1, Lo/clampApplyScroll;

    const/4 v7, 0x0

    if-eqz v2, :cond_7

    .line 1236
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->asInterface(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/getMoveDuration;

    move-result-object p1

    const/4 v0, 0x7

    invoke-static {p1, v1, v7, v7, v0}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    return-void

    .line 1238
    :cond_7
    instance-of v2, p1, Lo/getEndAfterPadding;

    const-string/jumbo v8, "type"

    const-string v9, "game_sheet_shown"

    if-eqz v2, :cond_9

    .line 1239
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {v2}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/findTargetSnapPosition;

    move-result-object v2

    invoke-virtual {v2}, Lo/findTargetSnapPosition;->onPostMessage()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v7, "winner"

    .line 1240
    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    invoke-static {v9, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1242
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 7464
    new-instance v7, Lo/binderDied;

    invoke-direct {v7, v2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1244
    sget-object v2, Lo/createHorizontalHelper;->ICustomTabsCallback:Lo/createHorizontalHelper$onMessageChannelReady;

    check-cast p1, Lo/getEndAfterPadding;

    const-string/jumbo v2, "showWinnerSheet"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8079
    new-instance v2, Lo/createHorizontalHelper;

    invoke-direct {v2}, Lo/createHorizontalHelper;-><init>()V

    .line 8080
    check-cast v2, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    .line 9016
    invoke-static {v2, p1, v6}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 9343
    invoke-virtual {v7, v5, v2, v1, v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 9651
    iget-boolean p1, v7, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_8

    .line 9655
    iput-boolean v0, v7, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 9656
    iput-object v1, v7, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1246
    invoke-virtual {v7}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    return-void

    .line 9652
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1248
    :cond_9
    instance-of v2, p1, Lo/getStartAfterPadding;

    if-eqz v2, :cond_b

    .line 1249
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {v2}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/findTargetSnapPosition;

    move-result-object v2

    invoke-virtual {v2}, Lo/findTargetSnapPosition;->onPostMessage()Ljava/util/Map;

    move-result-object v2

    const-string v7, "renew"

    .line 1250
    invoke-interface {v2, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    invoke-static {v9, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1252
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 10464
    new-instance v7, Lo/binderDied;

    invoke-direct {v7, v2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1254
    sget-object v2, Lo/getTotalSpace;->extraCallback:Lo/getTotalSpace$onNavigationEvent;

    check-cast p1, Lo/getStartAfterPadding;

    const-string v2, "redeemSheet"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11108
    new-instance v2, Lo/getTotalSpace;

    invoke-direct {v2}, Lo/getTotalSpace;-><init>()V

    .line 11109
    check-cast v2, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    .line 12016
    invoke-static {v2, p1, v6}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 12343
    invoke-virtual {v7, v5, v2, v1, v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 12651
    iget-boolean p1, v7, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_a

    .line 12655
    iput-boolean v0, v7, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 12656
    iput-object v1, v7, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1256
    invoke-virtual {v7}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    return-void

    .line 12652
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1258
    :cond_b
    instance-of v2, p1, Lo/findSnapView;

    if-eqz v2, :cond_e

    .line 1259
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    const-string v7, "GameOverSheet"

    invoke-virtual {v2, v7}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_15

    .line 1260
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {v2}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/findTargetSnapPosition;

    move-result-object v2

    invoke-virtual {v2}, Lo/findTargetSnapPosition;->onPostMessage()Ljava/util/Map;

    move-result-object v2

    const-string/jumbo v10, "time_over"

    .line 1261
    invoke-interface {v2, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    invoke-static {v9, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1263
    check-cast p1, Lo/findSnapView;

    .line 13093
    iget-boolean v2, p1, Lo/findSnapView;->onNavigationEvent:Z

    if-eqz v2, :cond_c

    .line 1264
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    sget v8, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {v2, v8}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/webkit/WebView;

    const-string v8, "javascript:gameManager.GameOver();"

    invoke-virtual {v2, v8}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1266
    :cond_c
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 13464
    new-instance v8, Lo/binderDied;

    invoke-direct {v8, v2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1268
    sget-object v2, Lo/getEndPadding;->onPostMessage:Lo/getEndPadding$extraCallback;

    const-string v2, "gameOverSheet"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14062
    new-instance v2, Lo/getEndPadding;

    invoke-direct {v2}, Lo/getEndPadding;-><init>()V

    .line 14063
    check-cast v2, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    .line 15016
    invoke-static {v2, p1, v6}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 15343
    invoke-virtual {v8, v5, v2, v7, v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 15651
    iget-boolean p1, v8, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_d

    .line 15655
    iput-boolean v0, v8, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 15656
    iput-object v1, v8, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1270
    invoke-virtual {v8}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    return-void

    .line 15652
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1273
    :cond_e
    instance-of v2, p1, Lo/distanceToCenter;

    if-eqz v2, :cond_f

    .line 1274
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->asInterface(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/getMoveDuration;

    move-result-object p1

    const-string v0, "inadequate_gem"

    invoke-static {p1, v0}, Lo/getMoveDuration;->onRelationshipValidationResult(Lo/getMoveDuration;Ljava/lang/String;)V

    return-void

    .line 1276
    :cond_f
    instance-of v2, p1, Lo/calculateDxToMakeVisible;

    if-eqz v2, :cond_12

    .line 1277
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->asInterface(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/getMoveDuration;

    move-result-object p1

    .line 1278
    iget-object v2, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_11

    check-cast v2, Lo/getViewPosition;

    .line 17000
    iget-object v2, v2, Lo/getViewPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz v2, :cond_10

    .line 17019
    iget-object v1, v2, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    :cond_10
    const/4 v2, 0x4

    .line 1277
    invoke-static {p1, v1, v0, v7, v2}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 1281
    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {p1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->asInterface(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/getMoveDuration;

    move-result-object p1

    const-string v0, "lifestyle"

    invoke-static {p1, v0}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;)V

    return-void

    .line 1278
    :cond_11
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.dreamplug.fabrik.ui.tabholder.TabHolderFragment"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1283
    :cond_12
    instance-of v0, p1, Lo/getVerticalHelper;

    if-eqz v0, :cond_15

    const-string v0, "GameWebViewFragmentq"

    const-string/jumbo v1, "tag"

    .line 1284
    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "game start intent after deducting life"

    .line 17065
    invoke-static {v0, v1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    check-cast p1, Lo/getVerticalHelper;

    .line 17106
    iget-object p1, p1, Lo/getVerticalHelper;->onNavigationEvent:Ljava/lang/String;

    .line 1285
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, -0x1c7d86c3

    if-eq v0, v1, :cond_14

    const v1, 0x59a502a2

    if-eq v0, v1, :cond_13

    goto :goto_2

    :cond_13
    const-string v0, "GAME_RESTART"

    .line 1287
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p1, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    const-string v0, "javascript:gameManager.Restart();"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_2

    :cond_14
    const-string v0, "GAME_INIT"

    .line 1286
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$updateVisuals;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->webView:I

    invoke-virtual {p1, v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    const-string v0, "javascript:gameManager.StartGame();"

    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_15
    :goto_2
    return-void
.end method
