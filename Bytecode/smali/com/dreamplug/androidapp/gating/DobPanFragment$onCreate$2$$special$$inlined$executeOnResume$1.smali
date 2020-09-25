.class public final Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/createCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/hasValue$extraCallback;
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016\u00a8\u0006\u0007\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/utils/LifecycleUtils$executeOnResume$1",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "onDestroy",
        "",
        "owner",
        "Landroidx/lifecycle/LifecycleOwner;",
        "onResume",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

.field private synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field final synthetic onNavigationEvent:Lo/hasValue$extraCallback;

.field private synthetic onPostMessage:Lo/toDebugString$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/hasValue$extraCallback;Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iput-object p4, p0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final asInterface(Lo/toLegacyStreamType;)V
    .locals 1

    const-string v0, "owner"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v0, p0

    check-cast v0, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 33
    iget-object p1, p0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/toLegacyStreamType;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "owner"

    move-object/from16 v2, p1

    invoke-static {v2, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "pairs"

    const-string/jumbo v4, "status"

    const-string v5, "onboard_gating_check"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v8

    const v9, -0x54d080fa

    const-string v11, "$this$toMutableMap"

    const-string v12, "newDataMap"

    const-string v13, "java.util.Collections.si\u2026(pair.first, pair.second)"

    const-string v14, "gating"

    const/16 v16, 0x13

    const/16 v17, 0x6

    const-string v18, "onboarding_score_fetched"

    const/16 v19, 0xd

    const-string v2, "pair"

    const-string v15, "<set-?>"

    if-eq v8, v9, :cond_8

    const v9, 0xe08f372

    if-eq v8, v9, :cond_6

    const v9, 0x48e35530    # 465577.5f

    if-eq v8, v9, :cond_3

    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_3
    const-string/jumbo v8, "transition_active"

    .line 54
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v1, v6, [Lo/addWrite;

    .line 57
    iget-object v9, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    .line 1043
    :goto_2
    new-instance v10, Lo/addWrite;

    invoke-direct {v10, v4, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v1, v7

    .line 57
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 57
    invoke-static {v5, v3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 58
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v1, v1, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v1

    sget-object v3, Lo/getMaxStart;->ICustomTabsCallback:Lo/getMaxStart;

    invoke-virtual {v1, v3}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 59
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getEarnedPoints()J

    move-result-wide v3

    .line 2000
    sget-object v1, Lo/setTrackTintMode;->asInterface:Lo/getNavigationContentDescription;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v5, v5, v17

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 60
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getCibilScore()I

    move-result v1

    .line 3000
    sget-object v3, Lo/setTrackTintMode;->ICustomTabsService:Lo/getCollapseContentDescription;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v4, v4, v19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 61
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getBureau()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 63
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 4000
    invoke-static {v1, v15}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/setTrackTintMode;->INotificationSideChannel$Default:Lo/getNavigationIcon;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v5, 0x1f

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 65
    :cond_5
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 5000
    invoke-static {v8, v15}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setTrackTintMode;->requestPostMessageChannel:Lo/getNavigationIcon;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v3, v3, v16

    invoke-virtual {v1, v3, v8}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 66
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 6000
    invoke-static {v8, v15}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setTrackTintMode;->updateVisuals:Lo/getNavigationIcon;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v4, 0x12

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v8}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 67
    new-instance v1, Lo/getHorizontalMargins;

    invoke-direct {v1}, Lo/getHorizontalMargins;-><init>()V

    .line 6043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v14, v8}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7010
    invoke-static {v3, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7011
    invoke-static {v3, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8027
    iget-object v2, v3, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 8028
    iget-object v3, v3, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 7027
    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7011
    invoke-static {v2, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9015
    iput v7, v1, Lo/getHorizontalMargins;->onPostMessage:I

    .line 9016
    invoke-static {v2, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9607
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    check-cast v3, Ljava/util/Map;

    const/4 v2, 0x0

    .line 9016
    invoke-virtual {v1, v3, v2}, Lo/getHorizontalMargins;->onPostMessage(Ljava/util/Map;Lo/RecyclerView$Recycler;)V

    .line 68
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v1, v1, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v1

    new-instance v2, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$ICustomTabsCallback;

    invoke-direct {v2, v0}, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$ICustomTabsCallback;-><init>(Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :cond_6
    const-string/jumbo v2, "waitlisted"

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v1, v6, [Lo/addWrite;

    .line 91
    iget-object v2, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v2

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    .line 19043
    :goto_3
    new-instance v8, Lo/addWrite;

    invoke-direct {v8, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v1, v7

    .line 91
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 91
    invoke-static {v5, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 92
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v1, v1, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v1

    sget-object v2, Lo/getMaxStart;->ICustomTabsCallback:Lo/getMaxStart;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 93
    invoke-static/range {v18 .. v18}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 94
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getCibilScore()I

    move-result v1

    .line 20000
    sget-object v2, Lo/setTrackTintMode;->ICustomTabsService:Lo/getCollapseContentDescription;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v3, v3, v19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 95
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v1, v1, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v1

    new-instance v2, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$onNavigationEvent;

    invoke-direct {v2, v0}, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$onNavigationEvent;-><init>(Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    :cond_8
    const-string v8, "active"

    .line 55
    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-array v1, v6, [Lo/addWrite;

    .line 73
    iget-object v9, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    if-eqz v9, :cond_9

    invoke-virtual {v9}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v9

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    .line 10043
    :goto_4
    new-instance v10, Lo/addWrite;

    invoke-direct {v10, v4, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v1, v7

    .line 73
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 73
    invoke-static {v5, v3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 74
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v1, v1, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v1

    sget-object v3, Lo/getMaxStart;->ICustomTabsCallback:Lo/getMaxStart;

    invoke-virtual {v1, v3}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 75
    invoke-static/range {v18 .. v18}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 76
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getEarnedPoints()J

    move-result-wide v3

    .line 11000
    sget-object v1, Lo/setTrackTintMode;->asInterface:Lo/getNavigationContentDescription;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v5, v5, v17

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 77
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getCibilScore()I

    move-result v1

    .line 12000
    sget-object v3, Lo/setTrackTintMode;->ICustomTabsService:Lo/getCollapseContentDescription;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v4, v4, v19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 78
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getBureau()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 80
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 13000
    invoke-static {v1, v15}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/setTrackTintMode;->INotificationSideChannel$Default:Lo/getNavigationIcon;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v5, 0x1f

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 82
    :cond_a
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 14000
    invoke-static {v8, v15}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setTrackTintMode;->requestPostMessageChannel:Lo/getNavigationIcon;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v3, v3, v16

    invoke-virtual {v1, v3, v8}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 83
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 15000
    invoke-static {v8, v15}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setTrackTintMode;->updateVisuals:Lo/getNavigationIcon;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v4, 0x12

    aget-object v3, v3, v4

    invoke-virtual {v1, v3, v8}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 84
    new-instance v1, Lo/getHorizontalMargins;

    invoke-direct {v1}, Lo/getHorizontalMargins;-><init>()V

    .line 15043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v14, v8}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 16010
    invoke-static {v3, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16011
    invoke-static {v3, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17027
    iget-object v2, v3, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 17028
    iget-object v3, v3, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 16027
    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, v13}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16011
    invoke-static {v2, v12}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18015
    iput v7, v1, Lo/getHorizontalMargins;->onPostMessage:I

    .line 18016
    invoke-static {v2, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18607
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    check-cast v3, Ljava/util/Map;

    const/4 v2, 0x0

    .line 18016
    invoke-virtual {v1, v3, v2}, Lo/getHorizontalMargins;->onPostMessage(Ljava/util/Map;Lo/RecyclerView$Recycler;)V

    .line 85
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v1, v1, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v1

    new-instance v2, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$extraCallback;

    invoke-direct {v2, v0}, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$extraCallback;-><init>(Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_7

    .line 102
    :goto_5
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_b
    move-object v1, v2

    :goto_6
    const-string v8, "RECORD_NOT_FOUND"

    .line 20056
    invoke-virtual {v8, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    new-array v1, v6, [Lo/addWrite;

    .line 103
    iget-object v8, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback:Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    if-eqz v8, :cond_c

    invoke-virtual {v8}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 21043
    :cond_c
    new-instance v8, Lo/addWrite;

    invoke-direct {v8, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v8, v1, v7

    .line 103
    invoke-static {v1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v1}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 103
    invoke-static {v5, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 104
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v1, v1, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v1

    sget-object v2, Lo/getMaxStart;->ICustomTabsCallback:Lo/getMaxStart;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 105
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v1, v1, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v1

    new-instance v2, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$onPostMessage;

    invoke-direct {v2, v0}, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$onPostMessage;-><init>(Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_7

    .line 115
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v3, v3, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v3}, Lo/hasValue;->ICustomTabsCallback(Lo/hasValue;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    iget-object v3, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v3, v3, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v3}, Lo/hasValue;->onPostMessage(Lo/hasValue;)Lo/getTitleMarginStart;

    invoke-static {}, Lo/getTitleMarginStart;->ICustomTabsCallback()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_e

    sget-object v1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$onMessageChannelReady;

    invoke-direct {v2, v0}, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$onMessageChannelReady;-><init>(Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 117
    iget-object v3, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v3, v3, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v3}, Lo/hasValue;->onPostMessage(Lo/hasValue;)Lo/getTitleMarginStart;

    invoke-static {}, Lo/getTitleMarginStart;->onPostMessage()J

    move-result-wide v3

    .line 115
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7

    .line 119
    :cond_e
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v1, v1, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v1

    sget-object v2, Lo/getMaxStart;->ICustomTabsCallback:Lo/getMaxStart;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 120
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onNavigationEvent:Lo/hasValue$extraCallback;

    iget-object v1, v1, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v1

    new-instance v2, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$asInterface;

    invoke-direct {v2, v0}, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1$asInterface;-><init>(Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    .line 27
    :goto_7
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    move-object v2, v0

    check-cast v2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v1, v2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 28
    iget-object v1, v0, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;->onPostMessage:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v6, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    return-void
.end method
