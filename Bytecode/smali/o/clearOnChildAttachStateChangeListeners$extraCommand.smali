.class final Lo/clearOnChildAttachStateChangeListeners$extraCommand;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/clearOnChildAttachStateChangeListeners;-><init>()V
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
.field final synthetic onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;


# direct methods
.method constructor <init>(Lo/clearOnChildAttachStateChangeListeners;)V
    .locals 0

    iput-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 8

    .line 53
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

    .line 1246
    :goto_0
    check-cast p1, Lo/calculateDistanceToFinalSnap;

    goto :goto_1

    :cond_1
    move-object p1, v1

    .line 1247
    :goto_1
    instance-of v2, p1, Lo/findCenterView;

    if-eqz v2, :cond_8

    .line 1248
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {v0}, Lo/clearOnChildAttachStateChangeListeners;->onPostMessage(Lo/clearOnChildAttachStateChangeListeners;)Lo/getMoveDuration;

    move-result-object v0

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v3, v2}, Lo/getMoveDuration;->onMessageChannelReady(Lo/getMoveDuration;Ljava/lang/String;ZZI)V

    .line 1249
    check-cast p1, Lo/findCenterView;

    .line 2108
    iget-object v0, p1, Lo/findCenterView;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    if-eqz v0, :cond_2

    .line 3087
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->onPostMessage:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    if-nez v0, :cond_3

    return-void

    .line 1249
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v4, 0x1cb54

    if-eq v2, v4, :cond_6

    const v1, 0x258156e6

    if-eq v2, v1, :cond_4

    return-void

    :cond_4
    const-string v1, "deeplink"

    .line 1250
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3108
    iget-object p1, p1, Lo/findCenterView;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    if-eqz p1, :cond_5

    .line 4088
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->onMessageChannelReady:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 1252
    sget-object v0, Lo/length;->extraCallback:Lo/length;

    invoke-virtual {v0, p1}, Lo/length;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    const-string/jumbo v2, "web"

    .line 1255
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 4108
    iget-object p1, p1, Lo/findCenterView;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;

    if-eqz p1, :cond_7

    .line 5088
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/data/GameCta;->onMessageChannelReady:Ljava/lang/String;

    if-eqz p1, :cond_7

    .line 1257
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {v0}, Lo/clearOnChildAttachStateChangeListeners;->onPostMessage(Lo/clearOnChildAttachStateChangeListeners;)Lo/getMoveDuration;

    move-result-object v0

    const/4 v2, 0x6

    invoke-static {v0, p1, v3, v1, v2}, Lo/getMoveDuration;->extraCallback(Lo/getMoveDuration;Ljava/lang/String;ZLjava/lang/Boolean;I)V

    :cond_7
    return-void

    .line 1263
    :cond_8
    instance-of v2, p1, Lo/offsetChildren;

    const-string v3, "This FragmentTransaction is not allowed to be added to the back stack."

    const/4 v4, 0x2

    const v5, 0x7f0b01ff

    if-eqz v2, :cond_a

    .line 1264
    iget-object v2, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 1265
    instance-of v2, v2, Lo/getItemDecorationAt;

    if-nez v2, :cond_c

    .line 1266
    iget-object v2, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    invoke-static {v2}, Lo/clearOnChildAttachStateChangeListeners;->ICustomTabsCallback(Lo/clearOnChildAttachStateChangeListeners;)Lo/addItemDecoration;

    move-result-object v2

    invoke-virtual {v2}, Lo/addItemDecoration;->ICustomTabsCallback()Ljava/util/Map;

    move-result-object v2

    const-string v6, "leaderboard_prizes_sheet_load"

    invoke-static {v6, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1267
    iget-object v2, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 5464
    new-instance v6, Lo/binderDied;

    invoke-direct {v6, v2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1269
    sget-object v2, Lo/getItemDecorationAt;->onPostMessage:Lo/getItemDecorationAt$onPostMessage;

    check-cast p1, Lo/offsetChildren;

    const-string v2, "prizesData"

    invoke-static {p1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6075
    new-instance v2, Lo/getItemDecorationAt;

    invoke-direct {v2}, Lo/getItemDecorationAt;-><init>()V

    .line 6076
    check-cast v2, Landroidx/fragment/app/Fragment;

    check-cast p1, Landroid/os/Parcelable;

    const-string v7, "extra"

    invoke-static {v2, p1, v7}, Lo/extraCallback;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroid/os/Parcelable;Ljava/lang/String;)V

    .line 6343
    invoke-virtual {v6, v5, v2, v1, v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 6651
    iget-boolean p1, v6, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_9

    .line 6655
    iput-boolean v0, v6, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 6656
    iput-object v1, v6, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1271
    invoke-virtual {v6}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    return-void

    .line 6652
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1275
    :cond_a
    instance-of v2, p1, Lo/getDecoratedMeasurementInOther;

    if-eqz v2, :cond_c

    .line 1276
    iget-object v2, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    invoke-virtual {v2, v5}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 1277
    instance-of v2, v2, Lo/offsetChild;

    if-nez v2, :cond_c

    .line 1278
    new-instance v2, Lo/offsetChild;

    new-instance v6, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage;

    invoke-direct {v6, p0, p1}, Lo/clearOnChildAttachStateChangeListeners$extraCommand$onPostMessage;-><init>(Lo/clearOnChildAttachStateChangeListeners$extraCommand;Lo/calculateDistanceToFinalSnap;)V

    check-cast v6, Lo/onDisconnectSetValue;

    invoke-direct {v2, v6}, Lo/offsetChild;-><init>(Lo/onDisconnectSetValue;)V

    .line 1307
    iget-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$extraCommand;->onMessageChannelReady:Lo/clearOnChildAttachStateChangeListeners;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object p1

    .line 7464
    new-instance v6, Lo/binderDied;

    invoke-direct {v6, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 1309
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 8343
    invoke-virtual {v6, v5, v2, v1, v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 8651
    iget-boolean p1, v6, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz p1, :cond_b

    .line 8655
    iput-boolean v0, v6, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 8656
    iput-object v1, v6, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 1311
    invoke-virtual {v6}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    goto :goto_3

    .line 8652
    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_3
    return-void
.end method
