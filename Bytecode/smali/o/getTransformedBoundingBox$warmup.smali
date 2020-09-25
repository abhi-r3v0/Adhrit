.class final Lo/getTransformedBoundingBox$warmup;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTransformedBoundingBox;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;",
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
        "eligibilityResponse",
        "Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;",
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
.field final synthetic onPostMessage:Lo/getTransformedBoundingBox;


# direct methods
.method constructor <init>(Lo/getTransformedBoundingBox;)V
    .locals 0

    iput-object p1, p0, Lo/getTransformedBoundingBox$warmup;->onPostMessage:Lo/getTransformedBoundingBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    .line 58
    move-object/from16 v1, p1

    check-cast v1, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1126
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    const-string v4, "pairs"

    const-string/jumbo v5, "status"

    const-string v6, "onboard_gating_check"

    const-string v7, "addCardView"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-nez v3, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v10

    const v11, -0x54d080fa

    const/16 v12, 0xd

    if-eq v10, v11, :cond_5

    const v11, 0xe08f372

    if-eq v10, v11, :cond_2

    goto/16 :goto_2

    :cond_2
    const-string/jumbo v10, "waitlisted"

    .line 1147
    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-array v3, v9, [Lo/addWrite;

    if-eqz v1, :cond_3

    .line 1148
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v2

    .line 13043
    :cond_3
    new-instance v10, Lo/addWrite;

    invoke-direct {v10, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v3, v8

    .line 1148
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1148
    invoke-static {v6, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1149
    iget-object v2, v0, Lo/getTransformedBoundingBox$warmup;->onPostMessage:Lo/getTransformedBoundingBox;

    .line 13183
    iget-object v2, v2, Lo/getTransformedBoundingBox;->extraCallback:Lo/stopLoading;

    if-nez v2, :cond_4

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1149
    :cond_4
    sget-object v3, Lo/findLastCompletelyVisibleItemPositions;->ICustomTabsCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-interface {v2, v3}, Lo/stopLoading;->extraCallback(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1150
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getCibilScore()I

    move-result v1

    .line 14000
    sget-object v2, Lo/setTrackTintMode;->ICustomTabsService:Lo/getCollapseContentDescription;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v3, v3, v12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1151
    iget-object v1, v0, Lo/getTransformedBoundingBox$warmup;->onPostMessage:Lo/getTransformedBoundingBox;

    invoke-static {v1}, Lo/getTransformedBoundingBox;->onNavigationEvent(Lo/getTransformedBoundingBox;)Lo/setTitleMarginStart;

    move-result-object v1

    .line 15000
    iget-object v1, v1, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setActive;

    .line 1151
    new-instance v2, Lo/getThumbTintList;

    new-instance v10, Lo/setTitleMarginStart$extraCallback;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1e

    const-string v4, "WaitListFragment"

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v2, v10}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    return-void

    :cond_5
    const-string v10, "active"

    .line 1128
    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-array v3, v9, [Lo/addWrite;

    if-eqz v1, :cond_6

    .line 1129
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v11

    goto :goto_1

    :cond_6
    move-object v11, v2

    .line 2043
    :goto_1
    new-instance v13, Lo/addWrite;

    invoke-direct {v13, v5, v11}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v3, v8

    .line 1129
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2105
    new-instance v4, Ljava/util/HashMap;

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1129
    invoke-static {v6, v4}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1130
    iget-object v3, v0, Lo/getTransformedBoundingBox$warmup;->onPostMessage:Lo/getTransformedBoundingBox;

    .line 2183
    iget-object v3, v3, Lo/getTransformedBoundingBox;->extraCallback:Lo/stopLoading;

    if-nez v3, :cond_7

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1130
    :cond_7
    sget-object v4, Lo/findLastCompletelyVisibleItemPositions;->ICustomTabsCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-interface {v3, v4}, Lo/stopLoading;->extraCallback(Lo/findLastCompletelyVisibleItemPositions;)V

    const-string v3, "onboarding_score_fetched"

    .line 1131
    invoke-static {v3}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1132
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getEarnedPoints()J

    move-result-wide v3

    .line 4000
    sget-object v5, Lo/setTrackTintMode;->asInterface:Lo/getNavigationContentDescription;

    sget-object v6, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1133
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getCibilScore()I

    move-result v3

    .line 5000
    sget-object v4, Lo/setTrackTintMode;->ICustomTabsService:Lo/getCollapseContentDescription;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v5, v5, v12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1134
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getBureau()Ljava/lang/String;

    move-result-object v3

    const-string v4, "<set-?>"

    if-eqz v3, :cond_8

    .line 1136
    sget-object v5, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 6000
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, Lo/setTrackTintMode;->INotificationSideChannel$Default:Lo/getNavigationIcon;

    sget-object v6, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v9, 0x1f

    aget-object v6, v6, v9

    invoke-virtual {v5, v6, v3}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1138
    :cond_8
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 7000
    invoke-static {v10, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/setTrackTintMode;->requestPostMessageChannel:Lo/getNavigationIcon;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v6, 0x13

    aget-object v5, v5, v6

    invoke-virtual {v3, v5, v10}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1139
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 8000
    invoke-static {v10, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/setTrackTintMode;->updateVisuals:Lo/getNavigationIcon;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v5, 0x12

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, v10}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1140
    new-instance v3, Lo/getHorizontalMargins;

    invoke-direct {v3}, Lo/getHorizontalMargins;-><init>()V

    .line 8043
    new-instance v4, Lo/addWrite;

    const-string v5, "gating"

    invoke-direct {v4, v5, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v5, "pair"

    .line 9010
    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9011
    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10027
    iget-object v5, v4, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 10028
    iget-object v4, v4, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 9027
    invoke-static {v5, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    const-string v5, "java.util.Collections.si\u2026(pair.first, pair.second)"

    invoke-static {v4, v5}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "newDataMap"

    .line 9011
    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11015
    iput v8, v3, Lo/getHorizontalMargins;->onPostMessage:I

    const-string v5, "$this$toMutableMap"

    .line 11016
    invoke-static {v4, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11607
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    check-cast v5, Ljava/util/Map;

    .line 11016
    invoke-virtual {v3, v5, v2}, Lo/getHorizontalMargins;->onPostMessage(Ljava/util/Map;Lo/RecyclerView$Recycler;)V

    .line 1141
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getEarnedPoints()J

    move-result-wide v1

    .line 13000
    sget-object v3, Lo/setTrackTintMode;->asInterface:Lo/getNavigationContentDescription;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v4, v4, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1142
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lo/getTransformedBoundingBox$warmup$2;

    invoke-direct {v2, v0}, Lo/getTransformedBoundingBox$warmup$2;-><init>(Lo/getTransformedBoundingBox$warmup;)V

    check-cast v2, Ljava/lang/Runnable;

    const-wide/16 v3, 0x5dc

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_9
    :goto_2
    if-eqz v1, :cond_a

    .line 1156
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_a
    move-object v3, v2

    :goto_3
    const-string v10, "RECORD_NOT_FOUND"

    .line 15056
    invoke-virtual {v10, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    new-array v3, v9, [Lo/addWrite;

    if-eqz v1, :cond_b

    .line 1157
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 16043
    :cond_b
    new-instance v10, Lo/addWrite;

    invoke-direct {v10, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v10, v3, v8

    .line 1157
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1157
    invoke-static {v6, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1158
    iget-object v2, v0, Lo/getTransformedBoundingBox$warmup;->onPostMessage:Lo/getTransformedBoundingBox;

    .line 16183
    iget-object v2, v2, Lo/getTransformedBoundingBox;->extraCallback:Lo/stopLoading;

    if-nez v2, :cond_c

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1158
    :cond_c
    sget-object v3, Lo/findLastCompletelyVisibleItemPositions;->ICustomTabsCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-interface {v2, v3}, Lo/stopLoading;->extraCallback(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1159
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getPanGiven()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getDobGiven()Ljava/lang/Boolean;

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_4

    .line 1162
    :cond_d
    iget-object v1, v0, Lo/getTransformedBoundingBox$warmup;->onPostMessage:Lo/getTransformedBoundingBox;

    invoke-static {v1}, Lo/getTransformedBoundingBox;->onMessageChannelReady(Lo/getTransformedBoundingBox;)V

    return-void

    .line 1160
    :cond_e
    :goto_4
    iget-object v2, v0, Lo/getTransformedBoundingBox$warmup;->onPostMessage:Lo/getTransformedBoundingBox;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getDobGiven()Ljava/lang/Boolean;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "pan"

    goto :goto_5

    :cond_f
    const-string v1, "dob"

    :goto_5
    invoke-static {v2, v1}, Lo/getTransformedBoundingBox;->onMessageChannelReady(Lo/getTransformedBoundingBox;Ljava/lang/String;)V

    return-void

    .line 1164
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lo/getTransformedBoundingBox$warmup;->onPostMessage:Lo/getTransformedBoundingBox;

    invoke-static {v4}, Lo/getTransformedBoundingBox;->extraCallback(Lo/getTransformedBoundingBox;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, v0, Lo/getTransformedBoundingBox$warmup;->onPostMessage:Lo/getTransformedBoundingBox;

    invoke-static {v4}, Lo/getTransformedBoundingBox;->onPostMessage(Lo/getTransformedBoundingBox;)Lo/getTitleMarginStart;

    invoke-static {}, Lo/getTitleMarginStart;->ICustomTabsCallback()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_11

    .line 1165
    sget-object v1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lo/getTransformedBoundingBox$warmup$3;

    invoke-direct {v2, v0}, Lo/getTransformedBoundingBox$warmup$3;-><init>(Lo/getTransformedBoundingBox$warmup;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 1167
    iget-object v3, v0, Lo/getTransformedBoundingBox$warmup;->onPostMessage:Lo/getTransformedBoundingBox;

    invoke-static {v3}, Lo/getTransformedBoundingBox;->onPostMessage(Lo/getTransformedBoundingBox;)Lo/getTitleMarginStart;

    invoke-static {}, Lo/getTitleMarginStart;->onPostMessage()J

    move-result-wide v3

    .line 1165
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1169
    :cond_11
    iget-object v2, v0, Lo/getTransformedBoundingBox$warmup;->onPostMessage:Lo/getTransformedBoundingBox;

    .line 17183
    iget-object v2, v2, Lo/getTransformedBoundingBox;->extraCallback:Lo/stopLoading;

    if-nez v2, :cond_12

    invoke-static {v7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1169
    :cond_12
    sget-object v3, Lo/findLastCompletelyVisibleItemPositions;->ICustomTabsCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-interface {v2, v3}, Lo/stopLoading;->extraCallback(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1171
    iget-object v2, v0, Lo/getTransformedBoundingBox$warmup;->onPostMessage:Lo/getTransformedBoundingBox;

    .line 17510
    iput-boolean v9, v2, Lo/getTransformedBoundingBox;->asBinder:Z

    if-eqz v1, :cond_13

    .line 1172
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_13

    sget-object v10, Lo/setMaxCardElevation;->ICustomTabsCallback$Stub:Lo/setMaxCardElevation;

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1e

    invoke-static/range {v10 .. v16}, Lo/setMaxCardElevation;->onPostMessage(Lo/setMaxCardElevation;Ljava/lang/String;Ljava/lang/String;JII)V

    :cond_13
    return-void
.end method
