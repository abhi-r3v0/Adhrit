.class public final Lo/getInteger$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getInteger;->onCreate(Landroid/os/Bundle;)V
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
.field public final synthetic onNavigationEvent:Lo/getInteger;


# direct methods
.method constructor <init>(Lo/getInteger;)V
    .locals 0

    iput-object p1, p0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 23

    move-object/from16 v0, p0

    .line 34
    move-object/from16 v1, p1

    check-cast v1, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    .line 1074
    iget-object v2, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v2

    const-string v3, "lifecycle"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1298
    new-instance v3, Lo/toDebugString$onMessageChannelReady;

    invoke-direct {v3}, Lo/toDebugString$onMessageChannelReady;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 1299
    new-instance v5, Lo/toDebugString$ICustomTabsCallback;

    invoke-direct {v5}, Lo/toDebugString$ICustomTabsCallback;-><init>()V

    const/4 v6, 0x0

    iput-object v6, v5, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1300
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
    if-eqz v7, :cond_15

    if-eqz v1, :cond_1

    .line 1075
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_1
    move-object v7, v6

    :goto_1
    const-string v9, "pairs"

    const-string v10, "status"

    const-string v11, "onboard_gating_check"

    if-nez v7, :cond_2

    move-object/from16 v22, v2

    move-object/from16 v21, v5

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

    if-eq v12, v13, :cond_9

    const v13, 0xe08f372

    if-eq v12, v13, :cond_7

    const v13, 0x48e35530    # 465577.5f

    if-eq v12, v13, :cond_4

    :cond_3
    move-object/from16 v22, v2

    goto/16 :goto_5

    :cond_4
    const-string v12, "transition_active"

    .line 1076
    invoke-virtual {v7, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    new-array v13, v7, [Lo/addWrite;

    if-eqz v1, :cond_5

    .line 1077
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v22, v2

    move-object/from16 v7, v19

    goto :goto_2

    :cond_5
    move-object/from16 v22, v2

    const/4 v7, 0x0

    .line 3043
    :goto_2
    new-instance v2, Lo/addWrite;

    invoke-direct {v2, v10, v7}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v7, 0x0

    aput-object v2, v13, v7

    .line 1077
    invoke-static {v13, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3105
    new-instance v2, Ljava/util/HashMap;

    const/4 v7, 0x1

    invoke-static {v7}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v9

    invoke-direct {v2, v9}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v13}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1077
    invoke-static {v11, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1078
    iget-object v2, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-static {v2}, Lo/getInteger;->onNavigationEvent(Lo/getInteger;)V

    .line 1079
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

    .line 1080
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

    .line 1081
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getBureau()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1083
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 6000
    invoke-static {v1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lo/setTrackTintMode;->INotificationSideChannel$Default:Lo/getNavigationIcon;

    sget-object v7, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v9, 0x1f

    aget-object v7, v7, v9

    invoke-virtual {v2, v7, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1085
    :cond_6
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 7000
    invoke-static {v12, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setTrackTintMode;->requestPostMessageChannel:Lo/getNavigationIcon;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v2, v2, v17

    invoke-virtual {v1, v2, v12}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1086
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 8000
    invoke-static {v12, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setTrackTintMode;->updateVisuals:Lo/getNavigationIcon;

    sget-object v2, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v2, v2, v16

    invoke-virtual {v1, v2, v12}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1087
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

    .line 1088
    iget-object v1, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-static {v1}, Lo/getInteger;->ICustomTabsCallback(Lo/getInteger;)Lo/setTitleMarginStart;

    move-result-object v1

    .line 12000
    iget-object v1, v1, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setActive;

    .line 1088
    new-instance v2, Lo/getThumbTintList;

    new-instance v11, Lo/setTitleMarginStart$extraCallback;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1e

    const-string v5, "CREDIT_INTRO_FRAGMENT"

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v2, v11}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_7
    move-object/from16 v22, v2

    const-string v2, "waitlisted"

    .line 1105
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    new-array v4, v2, [Lo/addWrite;

    if-eqz v1, :cond_8

    .line 1106
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    :cond_8
    const/4 v6, 0x0

    .line 21043
    :goto_3
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v10, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1106
    invoke-static {v4, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21105
    new-instance v5, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/HashMap;-><init>(I)V

    check-cast v5, Ljava/util/Map;

    invoke-static {v5, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1106
    invoke-static {v11, v5}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1107
    iget-object v2, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-static {v2}, Lo/getInteger;->onNavigationEvent(Lo/getInteger;)V

    .line 1108
    invoke-static/range {v19 .. v19}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1109
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

    .line 1110
    iget-object v1, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-static {v1}, Lo/getInteger;->extraCallback(Lo/getInteger;)V

    goto/16 :goto_8

    :cond_9
    move-object/from16 v22, v2

    const-string v2, "active"

    .line 1090
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    new-array v12, v7, [Lo/addWrite;

    if-eqz v1, :cond_a

    .line 1091
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v13

    goto :goto_4

    :cond_a
    const/4 v13, 0x0

    .line 12043
    :goto_4
    new-instance v7, Lo/addWrite;

    invoke-direct {v7, v10, v13}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v10, 0x0

    aput-object v7, v12, v10

    .line 1091
    invoke-static {v12, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12105
    new-instance v7, Ljava/util/HashMap;

    const/4 v9, 0x1

    invoke-static {v9}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v10

    invoke-direct {v7, v10}, Ljava/util/HashMap;-><init>(I)V

    check-cast v7, Ljava/util/Map;

    invoke-static {v7, v12}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1091
    invoke-static {v11, v7}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1092
    iget-object v7, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-static {v7}, Lo/getInteger;->onNavigationEvent(Lo/getInteger;)V

    .line 1093
    invoke-static/range {v19 .. v19}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1094
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

    .line 1095
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

    .line 1096
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getBureau()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 1098
    sget-object v7, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 15000
    invoke-static {v1, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v7, Lo/setTrackTintMode;->INotificationSideChannel$Default:Lo/getNavigationIcon;

    sget-object v9, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v10, 0x1f

    aget-object v9, v9, v10

    invoke-virtual {v7, v9, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1100
    :cond_b
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 16000
    invoke-static {v2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setTrackTintMode;->requestPostMessageChannel:Lo/getNavigationIcon;

    sget-object v7, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v7, v7, v17

    invoke-virtual {v1, v7, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1101
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 17000
    invoke-static {v2, v5}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setTrackTintMode;->updateVisuals:Lo/getNavigationIcon;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v5, v5, v16

    invoke-virtual {v1, v5, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1102
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

    .line 1103
    iget-object v1, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-static {v1}, Lo/getInteger;->ICustomTabsCallback(Lo/getInteger;)Lo/setTitleMarginStart;

    move-result-object v1

    .line 21000
    iget-object v1, v1, Lo/setTitleMarginStart;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setActive;

    .line 1103
    new-instance v2, Lo/getThumbTintList;

    new-instance v11, Lo/setTitleMarginStart$extraCallback;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1e

    const-string v5, "COINS_INTRO_FRAGMENT"

    move-object v4, v11

    invoke-direct/range {v4 .. v10}, Lo/setTitleMarginStart$extraCallback;-><init>(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;ZLo/requestPermissions;I)V

    invoke-direct {v2, v11}, Lo/getThumbTintList;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    goto/16 :goto_8

    :cond_c
    :goto_5
    if-eqz v1, :cond_d

    .line 1115
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    :goto_6
    const-string v4, "RECORD_NOT_FOUND"

    .line 22056
    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x1

    new-array v4, v2, [Lo/addWrite;

    if-eqz v1, :cond_e

    .line 1116
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    :cond_e
    const/4 v1, 0x0

    .line 23043
    :goto_7
    new-instance v5, Lo/addWrite;

    invoke-direct {v5, v10, v1}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v1, 0x0

    aput-object v5, v4, v1

    .line 1116
    invoke-static {v4, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23105
    new-instance v1, Ljava/util/HashMap;

    invoke-static {v2}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v1, v5}, Ljava/util/HashMap;-><init>(I)V

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v4}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1116
    invoke-static {v11, v1}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1117
    iget-object v1, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-static {v1}, Lo/getInteger;->onPostMessage(Lo/getInteger;)Lo/getTitleMarginStart;

    move-result-object v1

    .line 24022
    iget-object v1, v1, Lo/getTitleMarginStart;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v1, :cond_f

    .line 1118
    iget-object v1, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-static {v1}, Lo/getInteger;->onMessageChannelReady(Lo/getInteger;)Lo/BiometricPrompt$2;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 1119
    iget-object v1, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-static {v1}, Lo/getInteger;->ICustomTabsCallback$Stub(Lo/getInteger;)V

    goto/16 :goto_8

    .line 1121
    :cond_f
    iget-object v1, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-static {v1}, Lo/getInteger;->onTransact(Lo/getInteger;)Lo/setMinimumWidth;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Lo/onAudioInfoChanged;->m_()V

    .line 1122
    :cond_10
    iget-object v1, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lo/getInteger;->onNavigationEvent(Lo/getInteger;Lo/setMinimumWidth;)V

    .line 1123
    new-instance v1, Lo/isLayoutRtl;

    .line 1124
    iget-object v2, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Lo/onSessionEvent;

    move-result-object v2

    if-nez v2, :cond_11

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_11
    const-string v4, "activity!!"

    invoke-static {v2, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/content/Context;

    .line 1125
    iget-object v4, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    const v5, 0x7f130146

    invoke-virtual {v4, v5}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 1126
    iget-object v5, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    const v6, 0x7f130337

    invoke-virtual {v5, v6}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "getString(R.string.ok)"

    invoke-static {v5, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1127
    new-instance v6, Lo/getInteger$onMessageChannelReady$ICustomTabsCallback;

    invoke-direct {v6}, Lo/getInteger$onMessageChannelReady$ICustomTabsCallback;-><init>()V

    check-cast v6, Lo/isLayoutRtl$onPostMessage;

    .line 1123
    invoke-direct {v1, v2, v4, v5, v6}, Lo/isLayoutRtl;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Lo/isLayoutRtl$onPostMessage;)V

    .line 1133
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1134
    iget-object v1, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-static {v1}, Lo/getInteger;->asBinder(Lo/getInteger;)V

    goto :goto_8

    :cond_12
    const/4 v2, 0x0

    .line 1137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-static {v6}, Lo/getInteger;->onRelationshipValidationResult(Lo/getInteger;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    iget-object v6, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-static {v6}, Lo/getInteger;->onPostMessage(Lo/getInteger;)Lo/getTitleMarginStart;

    invoke-static {}, Lo/getTitleMarginStart;->ICustomTabsCallback()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_13

    sget-object v1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lo/getInteger$onMessageChannelReady$onMessageChannelReady;

    invoke-direct {v2, v0}, Lo/getInteger$onMessageChannelReady$onMessageChannelReady;-><init>(Lo/getInteger$onMessageChannelReady;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 1139
    iget-object v4, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-static {v4}, Lo/getInteger;->onPostMessage(Lo/getInteger;)Lo/getTitleMarginStart;

    invoke-static {}, Lo/getTitleMarginStart;->onPostMessage()J

    move-result-wide v4

    .line 1137
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_8
    const/4 v1, 0x1

    goto :goto_a

    .line 1141
    :cond_13
    iget-object v4, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    invoke-static {v4}, Lo/getInteger;->onNavigationEvent(Lo/getInteger;)V

    .line 1142
    iget-object v4, v0, Lo/getInteger$onMessageChannelReady;->onNavigationEvent:Lo/getInteger;

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v6

    goto :goto_9

    :cond_14
    move-object v6, v2

    :goto_9
    invoke-static {v4, v6}, Lo/getInteger;->onNavigationEvent(Lo/getInteger;Ljava/lang/String;)V

    goto :goto_8

    .line 1302
    :goto_a
    iput-boolean v1, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    goto :goto_b

    :cond_15
    move-object/from16 v22, v2

    move-object/from16 v21, v5

    .line 1303
    invoke-virtual/range {v22 .. v22}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v2

    sget-object v4, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v2, v4, :cond_16

    .line 1304
    new-instance v2, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$onCreate$1$$special$$inlined$executeOnResume$1;

    move-object/from16 v4, v22

    invoke-direct {v2, v4, v3, v0, v1}, Lcom/dreamplug/androidapp/gating/BureauReportNotFoundFragment$onCreate$1$$special$$inlined$executeOnResume$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/toDebugString$onMessageChannelReady;Lo/getInteger$onMessageChannelReady;Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;)V

    check-cast v2, Lo/createCallback;

    move-object/from16 v1, v21

    iput-object v2, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    .line 1305
    iget-object v2, v1, Lo/toDebugString$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/Object;

    check-cast v2, Lo/createCallback;

    check-cast v2, Lo/MediaControllerCompatApi21$TransportControls;

    invoke-virtual {v4, v2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    goto :goto_c

    :cond_16
    :goto_b
    move-object/from16 v1, v21

    move-object/from16 v4, v22

    .line 1307
    :goto_c
    new-instance v2, Lo/getInteger$onMessageChannelReady$extraCallback;

    invoke-direct {v2, v1, v4}, Lo/getInteger$onMessageChannelReady$extraCallback;-><init>(Lo/toDebugString$ICustomTabsCallback;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method
