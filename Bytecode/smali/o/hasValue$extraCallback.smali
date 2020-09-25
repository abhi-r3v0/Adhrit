.class public final Lo/hasValue$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/hasValue;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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
.field public final synthetic onPostMessage:Lo/hasValue;


# direct methods
.method constructor <init>(Lo/hasValue;)V
    .locals 0

    iput-object p1, p0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 23

    move-object/from16 v0, p0

    .line 41
    move-object/from16 v1, p1

    check-cast v1, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    .line 1088
    iget-object v2, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v2

    const-string v3, "lifecycle"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1357
    new-instance v3, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v3}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1358
    new-instance v5, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v5}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v6, 0x0

    iput-object v6, v5, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1359
    invoke-virtual {v2}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v7

    sget-object v8, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 2212
    invoke-virtual {v7, v8}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v7

    if-ltz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    if-eqz v7, :cond_11

    if-eqz v1, :cond_1

    .line 1089
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    const-string v9, "pairs"

    const-string/jumbo v10, "status"

    const-string v11, "onboard_gating_check"

    if-nez v7, :cond_2

    move-object/from16 v22, v2

    move-object/from16 v21, v5

    move-object v2, v6

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v12

    const v13, -0x54d080fa

    const-string v15, "$this$toMutableMap"

    const-string v6, "newDataMap"

    const-string v14, "java.util.Collections.si\u2026(pair.first, pair.second)"

    const-string v4, "gating"

    const/16 v16, 0x12

    const/16 v17, 0x13

    const/16 v18, 0x6

    const-string v19, "onboarding_score_fetched"

    const/16 v20, 0xd

    const-string v8, "pair"

    move-object/from16 v21, v5

    const-string v5, "<set-?>"

    if-eq v12, v13, :cond_a

    const v13, 0xe08f372

    if-eq v12, v13, :cond_8

    const v13, 0x48e35530    # 465577.5f

    if-eq v12, v13, :cond_5

    :cond_3
    move-object/from16 v22, v2

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_5
    const-string/jumbo v12, "transition_active"

    .line 1090
    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    new-array v13, v7, [Lo/addWrite;

    if-eqz v1, :cond_6

    .line 1091
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v22, v2

    move-object/from16 v7, v19

    goto :goto_2

    :cond_6
    move-object/from16 v22, v2

    const/4 v7, 0x0

    .line 3043
    :goto_2
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v10, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    aput-object v2, v13, v7

    .line 1091
    invoke-static {v13, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v2, Ljava/util/HashMap;

    const/4 v7, 0x1

    invoke-static {v7}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v9

    invoke-direct {v2, v9}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v13}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1091
    invoke-static {v11, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1092
    iget-object v2, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v2}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v2

    sget-object v7, Lo/getMaxStart;->ICustomTabsCallback:Lo/getMaxStart;

    invoke-virtual {v2, v7}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 1093
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getEarnedPoints()J

    move-result-wide v9

    .line 4000
    sget-object v2, Lo/setTrackTintMode;->asInterface:Lo/getNavigationContentDescription;

    sget-object v7, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v7, v7, v18

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1094
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getCibilScore()I

    move-result v2

    .line 5000
    sget-object v7, Lo/setTrackTintMode;->ICustomTabsService:Lo/getCollapseContentDescription;

    sget-object v9, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v9, v9, v20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v9, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1095
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getBureau()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1097
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 6000
    invoke-static {v1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo/setTrackTintMode;->INotificationSideChannel$Default:Lo/getNavigationIcon;

    sget-object v7, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v9, 0x1f

    aget-object v7, v7, v9

    invoke-virtual {v2, v7, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1099
    :cond_7
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 7000
    invoke-static {v12, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setTrackTintMode;->requestPostMessageChannel:Lo/getNavigationIcon;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v2, v2, v17

    invoke-virtual {v1, v2, v12}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1100
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 8000
    invoke-static {v12, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setTrackTintMode;->updateVisuals:Lo/getNavigationIcon;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v2, v2, v16

    invoke-virtual {v1, v2, v12}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1101
    new-instance v1, Lo/getHorizontalMargins;

    invoke-direct {v1}, Lo/getHorizontalMargins;-><init>()V

    .line 8043
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v4, v12}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9010
    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9011
    invoke-static {v2, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10027
    iget-object v4, v2, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 10028
    iget-object v2, v2, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 9027
    invoke-static {v4, v2}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9011
    invoke-static {v2, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 11015
    iput v4, v1, Lo/getHorizontalMargins;->onPostMessage:I

    .line 11016
    invoke-static {v2, v15}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11607
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    check-cast v4, Ljava/util/Map;

    const/4 v2, 0x0

    .line 11016
    invoke-virtual {v1, v4, v2}, Lo/getHorizontalMargins;->onPostMessage(Ljava/util/Map;Lo/RecyclerView$Recycler;)V

    .line 1102
    iget-object v1, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v1

    new-instance v2, Lo/hasValue$extraCallback$extraCallback;

    invoke-direct {v2, v0}, Lo/hasValue$extraCallback$extraCallback;-><init>(Lo/hasValue$extraCallback;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    :cond_8
    move-object/from16 v22, v2

    const-string/jumbo v2, "waitlisted"

    .line 1124
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    new-array v4, v2, [Lo/addWrite;

    if-eqz v1, :cond_9

    .line 1125
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_9
    const/4 v6, 0x0

    .line 21043
    :goto_3
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v10, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1125
    invoke-static {v4, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21105
    new-instance v5, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1125
    invoke-static {v11, v5}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1126
    iget-object v2, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v2}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v2

    sget-object v4, Lo/getMaxStart;->ICustomTabsCallback:Lo/getMaxStart;

    invoke-virtual {v2, v4}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 1127
    invoke-static/range {v19 .. v19}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1128
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getCibilScore()I

    move-result v1

    .line 22000
    sget-object v2, Lo/setTrackTintMode;->ICustomTabsService:Lo/getCollapseContentDescription;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v4, v4, v20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1129
    iget-object v1, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v1

    new-instance v2, Lo/hasValue$extraCallback$onPostMessage;

    invoke-direct {v2, v0}, Lo/hasValue$extraCallback$onPostMessage;-><init>(Lo/hasValue$extraCallback;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    :cond_a
    move-object/from16 v22, v2

    const-string v2, "active"

    .line 1106
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    new-array v12, v7, [Lo/addWrite;

    if-eqz v1, :cond_b

    .line 1107
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_b
    const/4 v13, 0x0

    .line 12043
    :goto_4
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v10, v13}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x0

    aput-object v7, v12, v10

    .line 1107
    invoke-static {v12, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12105
    new-instance v7, Ljava/util/HashMap;

    const/4 v9, 0x1

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/HashMap;-><init>(I)V

    check-cast v7, Ljava/util/Map;

    invoke-static {v7, v12}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1107
    invoke-static {v11, v7}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1108
    iget-object v7, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v7}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v7

    sget-object v9, Lo/getMaxStart;->ICustomTabsCallback:Lo/getMaxStart;

    invoke-virtual {v7, v9}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 1109
    invoke-static/range {v19 .. v19}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1110
    sget-object v7, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getEarnedPoints()J

    move-result-wide v9

    .line 13000
    sget-object v7, Lo/setTrackTintMode;->asInterface:Lo/getNavigationContentDescription;

    sget-object v11, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v11, v11, v18

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v11, v9}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1111
    sget-object v7, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getCibilScore()I

    move-result v7

    .line 14000
    sget-object v9, Lo/setTrackTintMode;->ICustomTabsService:Lo/getCollapseContentDescription;

    sget-object v10, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v10, v10, v20

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v9, v10, v7}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1112
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getBureau()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    .line 1114
    sget-object v7, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 15000
    invoke-static {v1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lo/setTrackTintMode;->INotificationSideChannel$Default:Lo/getNavigationIcon;

    sget-object v9, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v10, 0x1f

    aget-object v9, v9, v10

    invoke-virtual {v7, v9, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1116
    :cond_c
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 16000
    invoke-static {v2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setTrackTintMode;->requestPostMessageChannel:Lo/getNavigationIcon;

    sget-object v7, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v7, v7, v17

    invoke-virtual {v1, v7, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1117
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 17000
    invoke-static {v2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setTrackTintMode;->updateVisuals:Lo/getNavigationIcon;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v5, v5, v16

    invoke-virtual {v1, v5, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1118
    new-instance v1, Lo/getHorizontalMargins;

    invoke-direct {v1}, Lo/getHorizontalMargins;-><init>()V

    .line 17043
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v4, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18010
    invoke-static {v5, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18011
    invoke-static {v5, v8}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19027
    iget-object v2, v5, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 19028
    iget-object v4, v5, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 18027
    invoke-static {v2, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18011
    invoke-static {v2, v6}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 20015
    iput v4, v1, Lo/getHorizontalMargins;->onPostMessage:I

    .line 20016
    invoke-static {v2, v15}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20607
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    check-cast v4, Ljava/util/Map;

    const/4 v2, 0x0

    .line 20016
    invoke-virtual {v1, v4, v2}, Lo/getHorizontalMargins;->onPostMessage(Ljava/util/Map;Lo/RecyclerView$Recycler;)V

    .line 1119
    iget-object v1, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v1

    new-instance v2, Lo/hasValue$extraCallback$ICustomTabsCallback;

    invoke-direct {v2, v0}, Lo/hasValue$extraCallback$ICustomTabsCallback;-><init>(Lo/hasValue$extraCallback;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    goto/16 :goto_8

    :goto_5
    if-eqz v1, :cond_d

    .line 1136
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_6

    :cond_d
    move-object v4, v2

    :goto_6
    const-string v5, "RECORD_NOT_FOUND"

    .line 22056
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const/4 v4, 0x1

    new-array v5, v4, [Lo/addWrite;

    if-eqz v1, :cond_e

    .line 1137
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getMessage()Ljava/lang/String;

    move-result-object v6

    goto :goto_7

    :cond_e
    move-object v6, v2

    .line 23043
    :goto_7
    new-instance v1, Lo/addWrite;

    invoke-direct {v1, v10, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v2, 0x0

    aput-object v1, v5, v2

    .line 1137
    invoke-static {v5, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v4}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1137
    invoke-static {v11, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1138
    iget-object v1, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v1

    sget-object v2, Lo/getMaxStart;->ICustomTabsCallback:Lo/getMaxStart;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 1139
    iget-object v1, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v1}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v1

    new-instance v2, Lo/hasValue$extraCallback$onNavigationEvent;

    invoke-direct {v2, v0}, Lo/hasValue$extraCallback$onNavigationEvent;-><init>(Lo/hasValue$extraCallback;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lo/getMaxEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    goto :goto_8

    .line 1149
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v2, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v2}, Lo/hasValue;->ICustomTabsCallback(Lo/hasValue;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v2, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v2}, Lo/hasValue;->onPostMessage(Lo/hasValue;)Lo/getTitleMarginStart;

    invoke-static {}, Lo/getTitleMarginStart;->ICustomTabsCallback()J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_10

    sget-object v1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lo/hasValue$extraCallback$onRelationshipValidationResult;

    invoke-direct {v2, v0}, Lo/hasValue$extraCallback$onRelationshipValidationResult;-><init>(Lo/hasValue$extraCallback;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 1151
    iget-object v4, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v4}, Lo/hasValue;->onPostMessage(Lo/hasValue;)Lo/getTitleMarginStart;

    invoke-static {}, Lo/getTitleMarginStart;->onPostMessage()J

    move-result-wide v4

    .line 1149
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8

    .line 1153
    :cond_10
    iget-object v2, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v2}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v2

    sget-object v4, Lo/getMaxStart;->ICustomTabsCallback:Lo/getMaxStart;

    invoke-virtual {v2, v4}, Lo/getMaxEnd;->setButtonState(Lo/getMaxStart;)V

    .line 1154
    iget-object v2, v0, Lo/hasValue$extraCallback;->onPostMessage:Lo/hasValue;

    invoke-static {v2}, Lo/hasValue;->onNavigationEvent(Lo/hasValue;)Lo/getMaxEnd;

    move-result-object v2

    new-instance v4, Lo/hasValue$extraCallback$asBinder;

    invoke-direct {v4, v0, v1}, Lo/hasValue$extraCallback$asBinder;-><init>(Lo/hasValue$extraCallback;Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;)V

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Lo/getMaxEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    :goto_8
    const/4 v1, 0x1

    .line 1361
    iput-boolean v1, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_9

    :cond_11
    move-object/from16 v22, v2

    move-object/from16 v21, v5

    .line 1362
    invoke-virtual/range {v22 .. v22}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_12

    .line 1363
    new-instance v2, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;

    move-object/from16 v4, v22

    invoke-direct {v2, v4, v3, v0, v1}, Lcom/dreamplug/androidapp/gating/DobPanFragment$onCreate$2$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/hasValue$extraCallback;Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;)V

    check-cast v2, Lo/createCallback;

    move-object/from16 v1, v21

    iput-object v2, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1364
    iget-object v2, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v2, Lo/createCallback;

    check-cast v2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v4, v2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    goto :goto_a

    :cond_12
    :goto_9
    move-object/from16 v1, v21

    move-object/from16 v4, v22

    .line 1366
    :goto_a
    new-instance v2, Lo/hasValue$extraCallback$onMessageChannelReady;

    invoke-direct {v2, v1, v4}, Lo/hasValue$extraCallback$onMessageChannelReady;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
