.class final Lo/getTextArray$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTextArray;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic onPostMessage:Lo/getTextArray;


# direct methods
.method constructor <init>(Lo/getTextArray;)V
    .locals 0

    iput-object p1, p0, Lo/getTextArray$onMessageChannelReady;->onPostMessage:Lo/getTextArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 23

    move-object/from16 v0, p0

    .line 35
    move-object/from16 v1, p1

    check-cast v1, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;

    if-eqz v1, :cond_0

    .line 1063
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "pairs"

    const-string/jumbo v5, "status"

    const/4 v6, 0x1

    const-string v7, "onboard_gating_check"

    const/4 v8, 0x0

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v9

    const v10, -0x54d080fa

    const-string v12, "$this$toMutableMap"

    const-string v13, "newDataMap"

    const-string v14, "java.util.Collections.si\u2026(pair.first, pair.second)"

    const-string v15, "gating"

    const/16 v16, 0x12

    const/16 v17, 0x13

    const-string v18, "onboarding_score_fetched"

    const-string v19, "multiTextFadeBehaviour"

    const/16 v20, 0x6

    move-object/from16 v21, v12

    const/16 v22, 0xd

    const-string v2, "pair"

    const-string v11, "<set-?>"

    if-eq v9, v10, :cond_a

    const v10, 0xe08f372

    if-eq v9, v10, :cond_7

    const v10, 0x48e35530    # 465577.5f

    if-eq v9, v10, :cond_3

    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto/16 :goto_5

    :cond_3
    const-string/jumbo v9, "transition_active"

    .line 1064
    invoke-virtual {v3, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-array v3, v6, [Lo/addWrite;

    if-eqz v1, :cond_4

    .line 1065
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    .line 2043
    :goto_2
    new-instance v12, Lo/addWrite;

    invoke-direct {v12, v5, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v12, v3, v8

    .line 1065
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2105
    new-instance v4, Ljava/util/HashMap;

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1065
    invoke-static {v7, v4}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1066
    iget-object v3, v0, Lo/getTextArray$onMessageChannelReady;->onPostMessage:Lo/getTextArray;

    .line 3055
    iget-object v3, v3, Lo/getTextArray;->onPostMessage:Lo/requireView;

    if-nez v3, :cond_5

    invoke-static/range {v19 .. v19}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_5
    const-wide/16 v4, 0x3e8

    .line 5046
    iput-wide v4, v3, Lo/requireView;->asBinder:J

    .line 1067
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getEarnedPoints()J

    move-result-wide v3

    .line 6000
    sget-object v5, Lo/setTrackTintMode;->asInterface:Lo/getNavigationContentDescription;

    sget-object v6, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v6, v6, v20

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1068
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getCibilScore()I

    move-result v3

    .line 7000
    sget-object v4, Lo/setTrackTintMode;->ICustomTabsService:Lo/getCollapseContentDescription;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v5, v5, v22

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1069
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getBureau()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1071
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 8000
    invoke-static {v1, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/setTrackTintMode;->INotificationSideChannel$Default:Lo/getNavigationIcon;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v5, 0x1f

    aget-object v4, v4, v5

    invoke-virtual {v3, v4, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1073
    :cond_6
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 9000
    invoke-static {v9, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setTrackTintMode;->requestPostMessageChannel:Lo/getNavigationIcon;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v3, v3, v17

    invoke-virtual {v1, v3, v9}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1074
    sget-object v1, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 10000
    invoke-static {v9, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setTrackTintMode;->updateVisuals:Lo/getNavigationIcon;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v3, v3, v16

    invoke-virtual {v1, v3, v9}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1075
    new-instance v1, Lo/getHorizontalMargins;

    invoke-direct {v1}, Lo/getHorizontalMargins;-><init>()V

    .line 10043
    new-instance v3, Lo/addWrite;

    invoke-direct {v3, v15, v9}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 11010
    invoke-static {v3, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11011
    invoke-static {v3, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12027
    iget-object v2, v3, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 12028
    iget-object v3, v3, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 11027
    invoke-static {v2, v3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11011
    invoke-static {v2, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13015
    iput v8, v1, Lo/getHorizontalMargins;->onPostMessage:I

    move-object/from16 v9, v21

    .line 13016
    invoke-static {v2, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13607
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    check-cast v3, Ljava/util/Map;

    const/4 v2, 0x0

    .line 13016
    invoke-virtual {v1, v3, v2}, Lo/getHorizontalMargins;->onPostMessage(Ljava/util/Map;Lo/RecyclerView$Recycler;)V

    .line 1076
    iget-object v1, v0, Lo/getTextArray$onMessageChannelReady;->onPostMessage:Lo/getTextArray;

    new-instance v2, Lo/getTextArray$onMessageChannelReady$1;

    invoke-direct {v2, v0}, Lo/getTextArray$onMessageChannelReady$1;-><init>(Lo/getTextArray$onMessageChannelReady;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lo/getTextArray;->ICustomTabsCallback(Lo/getTextArray;Ljava/lang/Runnable;)V

    return-void

    :cond_7
    const-string/jumbo v2, "waitlisted"

    .line 1098
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    new-array v2, v6, [Lo/addWrite;

    if-eqz v1, :cond_8

    .line 1099
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_8
    const/4 v3, 0x0

    .line 27043
    :goto_3
    new-instance v9, Lo/addWrite;

    invoke-direct {v9, v5, v3}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v2, v8

    .line 1099
    invoke-static {v2, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27105
    new-instance v3, Ljava/util/HashMap;

    invoke-static {v6}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/HashMap;-><init>(I)V

    check-cast v3, Ljava/util/Map;

    invoke-static {v3, v2}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1099
    invoke-static {v7, v3}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1100
    invoke-static/range {v18 .. v18}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1101
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getCibilScore()I

    move-result v1

    .line 28000
    sget-object v2, Lo/setTrackTintMode;->ICustomTabsService:Lo/getCollapseContentDescription;

    sget-object v3, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v3, v3, v22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1102
    iget-object v1, v0, Lo/getTextArray$onMessageChannelReady;->onPostMessage:Lo/getTextArray;

    .line 28055
    iget-object v1, v1, Lo/getTextArray;->onPostMessage:Lo/requireView;

    if-nez v1, :cond_9

    invoke-static/range {v19 .. v19}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_9
    const-wide/16 v2, 0x3e8

    .line 30046
    iput-wide v2, v1, Lo/requireView;->asBinder:J

    .line 1103
    iget-object v1, v0, Lo/getTextArray$onMessageChannelReady;->onPostMessage:Lo/getTextArray;

    new-instance v2, Lo/getTextArray$onMessageChannelReady$4;

    invoke-direct {v2, v0}, Lo/getTextArray$onMessageChannelReady$4;-><init>(Lo/getTextArray$onMessageChannelReady;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lo/getTextArray;->ICustomTabsCallback(Lo/getTextArray;Ljava/lang/Runnable;)V

    return-void

    :cond_a
    move-object/from16 v9, v21

    const-string v10, "active"

    .line 1080
    invoke-virtual {v3, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-array v3, v6, [Lo/addWrite;

    if-eqz v1, :cond_b

    .line 1081
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getStatus()Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_b
    const/4 v12, 0x0

    .line 14043
    :goto_4
    new-instance v6, Lo/addWrite;

    invoke-direct {v6, v5, v12}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v3, v8

    .line 1081
    invoke-static {v3, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14105
    new-instance v4, Ljava/util/HashMap;

    const/4 v5, 0x1

    invoke-static {v5}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v3}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1081
    invoke-static {v7, v4}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1082
    invoke-static/range {v18 .. v18}, Lo/getTrackTintMode;->onPostMessage(Ljava/lang/String;)Lo/onSupportContentChanged;

    .line 1083
    iget-object v3, v0, Lo/getTextArray$onMessageChannelReady;->onPostMessage:Lo/getTextArray;

    .line 15055
    iget-object v3, v3, Lo/getTextArray;->onPostMessage:Lo/requireView;

    if-nez v3, :cond_c

    invoke-static/range {v19 .. v19}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_c
    const-wide/16 v4, 0x3e8

    .line 17046
    iput-wide v4, v3, Lo/requireView;->asBinder:J

    .line 1084
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getEarnedPoints()J

    move-result-wide v3

    .line 18000
    sget-object v5, Lo/setTrackTintMode;->asInterface:Lo/getNavigationContentDescription;

    sget-object v6, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v6, v6, v20

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1085
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getCibilScore()I

    move-result v3

    .line 19000
    sget-object v4, Lo/setTrackTintMode;->ICustomTabsService:Lo/getCollapseContentDescription;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v5, v5, v22

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1086
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getBureau()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 1088
    sget-object v4, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 20000
    invoke-static {v3, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v4, Lo/setTrackTintMode;->INotificationSideChannel$Default:Lo/getNavigationIcon;

    sget-object v5, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v6, 0x1f

    aget-object v5, v5, v6

    invoke-virtual {v4, v5, v3}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1090
    :cond_d
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 21000
    invoke-static {v10, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/setTrackTintMode;->requestPostMessageChannel:Lo/getNavigationIcon;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v4, v4, v17

    invoke-virtual {v3, v4, v10}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1091
    sget-object v3, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 22000
    invoke-static {v10, v11}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lo/setTrackTintMode;->updateVisuals:Lo/getNavigationIcon;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v4, v4, v16

    invoke-virtual {v3, v4, v10}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1092
    new-instance v3, Lo/getHorizontalMargins;

    invoke-direct {v3}, Lo/getHorizontalMargins;-><init>()V

    .line 22043
    new-instance v4, Lo/addWrite;

    invoke-direct {v4, v15, v10}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 23010
    invoke-static {v4, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23011
    invoke-static {v4, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24027
    iget-object v2, v4, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 24028
    iget-object v4, v4, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 23027
    invoke-static {v2, v4}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, v14}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23011
    invoke-static {v2, v13}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25015
    iput v8, v3, Lo/getHorizontalMargins;->onPostMessage:I

    .line 25016
    invoke-static {v2, v9}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25607
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4, v2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    check-cast v4, Ljava/util/Map;

    const/4 v2, 0x0

    .line 25016
    invoke-virtual {v3, v4, v2}, Lo/getHorizontalMargins;->onPostMessage(Ljava/util/Map;Lo/RecyclerView$Recycler;)V

    .line 1093
    sget-object v2, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getEarnedPoints()J

    move-result-wide v1

    .line 27000
    sget-object v3, Lo/setTrackTintMode;->asInterface:Lo/getNavigationContentDescription;

    sget-object v4, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    aget-object v4, v4, v20

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 1094
    iget-object v1, v0, Lo/getTextArray$onMessageChannelReady;->onPostMessage:Lo/getTextArray;

    new-instance v2, Lo/getTextArray$onMessageChannelReady$5;

    invoke-direct {v2, v0}, Lo/getTextArray$onMessageChannelReady$5;-><init>(Lo/getTextArray$onMessageChannelReady;)V

    check-cast v2, Ljava/lang/Runnable;

    invoke-static {v1, v2}, Lo/getTextArray;->ICustomTabsCallback(Lo/getTextArray;Ljava/lang/Runnable;)V

    return-void

    :goto_5
    if-eqz v1, :cond_e

    .line 1109
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getMessage()Ljava/lang/String;

    move-result-object v3

    goto :goto_6

    :cond_e
    move-object v3, v2

    :goto_6
    const-string v6, "RECORD_NOT_FOUND"

    .line 30056
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v3, 0x1

    new-array v6, v3, [Lo/addWrite;

    if-eqz v1, :cond_f

    .line 1110
    invoke-virtual {v1}, Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 31043
    :cond_f
    new-instance v9, Lo/addWrite;

    invoke-direct {v9, v5, v2}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v9, v6, v8

    .line 1110
    invoke-static {v6, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31105
    new-instance v2, Ljava/util/HashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v6}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    .line 1110
    invoke-static {v7, v2}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    .line 1111
    iget-object v2, v0, Lo/getTextArray$onMessageChannelReady;->onPostMessage:Lo/getTextArray;

    new-instance v3, Lo/getTextArray$onMessageChannelReady$3;

    invoke-direct {v3, v0, v1}, Lo/getTextArray$onMessageChannelReady$3;-><init>(Lo/getTextArray$onMessageChannelReady;Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lo/getTextArray;->ICustomTabsCallback(Lo/getTextArray;Ljava/lang/Runnable;)V

    return-void

    .line 1120
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lo/getTextArray$onMessageChannelReady;->onPostMessage:Lo/getTextArray;

    invoke-static {v4}, Lo/getTextArray;->ICustomTabsCallback(Lo/getTextArray;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iget-object v4, v0, Lo/getTextArray$onMessageChannelReady;->onPostMessage:Lo/getTextArray;

    invoke-static {v4}, Lo/getTextArray;->onRelationshipValidationResult(Lo/getTextArray;)Lo/getTitleMarginStart;

    invoke-static {}, Lo/getTitleMarginStart;->ICustomTabsCallback()J

    move-result-wide v4

    cmp-long v6, v2, v4

    if-gez v6, :cond_11

    .line 1121
    sget-object v1, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lo/getTextArray$onMessageChannelReady$2;

    invoke-direct {v2, v0}, Lo/getTextArray$onMessageChannelReady$2;-><init>(Lo/getTextArray$onMessageChannelReady;)V

    check-cast v2, Ljava/lang/Runnable;

    .line 1123
    iget-object v3, v0, Lo/getTextArray$onMessageChannelReady;->onPostMessage:Lo/getTextArray;

    invoke-static {v3}, Lo/getTextArray;->onRelationshipValidationResult(Lo/getTextArray;)Lo/getTitleMarginStart;

    invoke-static {}, Lo/getTitleMarginStart;->onPostMessage()J

    move-result-wide v3

    .line 1121
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 1125
    :cond_11
    iget-object v2, v0, Lo/getTextArray$onMessageChannelReady;->onPostMessage:Lo/getTextArray;

    new-instance v3, Lo/getTextArray$onMessageChannelReady$8;

    invoke-direct {v3, v0, v1}, Lo/getTextArray$onMessageChannelReady$8;-><init>(Lo/getTextArray$onMessageChannelReady;Lcom/dreamplug/androidapp/gating/EligibilityResponseClass;)V

    check-cast v3, Ljava/lang/Runnable;

    invoke-static {v2, v3}, Lo/getTextArray;->ICustomTabsCallback(Lo/getTextArray;Ljava/lang/Runnable;)V

    return-void
.end method
