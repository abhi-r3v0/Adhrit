.class final Lo/setCounterOverflowTextColor;
.super Lo/setStartIconCheckable;
.source ""


# instance fields
.field private final synthetic ICustomTabsCallback$Stub:Lo/setErrorIconTintMode;

.field private asInterface:Lo/cB$onPostMessage;


# direct methods
.method constructor <init>(Lo/setErrorIconTintMode;Ljava/lang/String;ILo/cB$onPostMessage;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setCounterOverflowTextColor;->ICustomTabsCallback$Stub:Lo/setErrorIconTintMode;

    .line 2
    invoke-direct {p0, p2, p3}, Lo/setStartIconCheckable;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-object p4, p0, Lo/setCounterOverflowTextColor;->asInterface:Lo/cB$onPostMessage;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method final extraCallback()I
    .locals 1

    .line 5
    iget-object v0, p0, Lo/setCounterOverflowTextColor;->asInterface:Lo/cB$onPostMessage;

    invoke-virtual {v0}, Lo/cB$onPostMessage;->ICustomTabsCallback()I

    move-result v0

    return v0
.end method

.method final onMessageChannelReady(Ljava/lang/Long;Ljava/lang/Long;Lo/cH$newSession;Z)Z
    .locals 10

    .line 8
    invoke-static {}, Lo/loadAd;->onPostMessage()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setCounterOverflowTextColor;->ICustomTabsCallback$Stub:Lo/setErrorIconTintMode;

    .line 9
    invoke-virtual {v0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    iget-object v3, p0, Lo/setCounterOverflowTextColor;->onPostMessage:Ljava/lang/String;

    sget-object v4, Lo/zziq;->getItem:Lo/setStatusBarForegroundColor;

    .line 11
    invoke-virtual {v0, v3, v4}, Lo/setStartIconTintList;->extraCallback(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v3, p0, Lo/setCounterOverflowTextColor;->asInterface:Lo/cB$onPostMessage;

    invoke-virtual {v3}, Lo/cB$onPostMessage;->extraCallback()Z

    move-result v3

    .line 14
    iget-object v4, p0, Lo/setCounterOverflowTextColor;->asInterface:Lo/cB$onPostMessage;

    invoke-virtual {v4}, Lo/cB$onPostMessage;->ICustomTabsCallback$Stub()Z

    move-result v4

    .line 15
    iget-object v5, p0, Lo/setCounterOverflowTextColor;->asInterface:Lo/cB$onPostMessage;

    invoke-virtual {v5}, Lo/cB$onPostMessage;->asBinder()Z

    move-result v5

    if-nez v3, :cond_2

    if-nez v4, :cond_2

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    const/4 v4, 0x0

    if-eqz p4, :cond_4

    if-nez v3, :cond_4

    .line 18
    iget-object p1, p0, Lo/setCounterOverflowTextColor;->ICustomTabsCallback$Stub:Lo/setErrorIconTintMode;

    invoke-virtual {p1}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p1

    iget p2, p0, Lo/setCounterOverflowTextColor;->ICustomTabsCallback:I

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 21
    iget-object p3, p0, Lo/setCounterOverflowTextColor;->asInterface:Lo/cB$onPostMessage;

    invoke-virtual {p3}, Lo/cB$onPostMessage;->onPostMessage()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lo/setCounterOverflowTextColor;->asInterface:Lo/cB$onPostMessage;

    invoke-virtual {p3}, Lo/cB$onPostMessage;->ICustomTabsCallback()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_3
    const-string p3, "Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID"

    .line 22
    invoke-virtual {p1, p3, p2, v4}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v2

    .line 24
    :cond_4
    iget-object v6, p0, Lo/setCounterOverflowTextColor;->asInterface:Lo/cB$onPostMessage;

    .line 25
    invoke-virtual {v6}, Lo/cB$onPostMessage;->onNavigationEvent()Lo/cB$onMessageChannelReady;

    move-result-object v6

    .line 26
    invoke-virtual {v6}, Lo/cB$onMessageChannelReady;->onRelationshipValidationResult()Z

    move-result v7

    .line 27
    invoke-virtual {p3}, Lo/cH$newSession;->ICustomTabsCallback$Stub()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 28
    invoke-virtual {v6}, Lo/cB$onMessageChannelReady;->ICustomTabsCallback()Z

    move-result v8

    if-nez v8, :cond_5

    .line 29
    iget-object v6, p0, Lo/setCounterOverflowTextColor;->ICustomTabsCallback$Stub:Lo/setErrorIconTintMode;

    invoke-virtual {v6}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    .line 30
    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v6

    iget-object v7, p0, Lo/setCounterOverflowTextColor;->ICustomTabsCallback$Stub:Lo/setErrorIconTintMode;

    .line 31
    invoke-virtual {v7}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v7

    invoke-virtual {p3}, Lo/cH$newSession;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for long property. property"

    .line 32
    invoke-virtual {v6, v8, v7}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 35
    :cond_5
    invoke-virtual {p3}, Lo/cH$newSession;->onTransact()J

    move-result-wide v8

    invoke-virtual {v6}, Lo/cB$onMessageChannelReady;->onNavigationEvent()Lo/cB$ICustomTabsCallback;

    move-result-object v4

    invoke-static {v8, v9, v4}, Lo/setCounterOverflowTextColor;->onMessageChannelReady(JLo/cB$ICustomTabsCallback;)Ljava/lang/Boolean;

    move-result-object v4

    .line 36
    invoke-static {v4, v7}, Lo/setCounterOverflowTextColor;->ICustomTabsCallback(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_3

    .line 37
    :cond_6
    invoke-virtual {p3}, Lo/cH$newSession;->onRelationshipValidationResult()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 38
    invoke-virtual {v6}, Lo/cB$onMessageChannelReady;->ICustomTabsCallback()Z

    move-result v8

    if-nez v8, :cond_7

    .line 39
    iget-object v6, p0, Lo/setCounterOverflowTextColor;->ICustomTabsCallback$Stub:Lo/setErrorIconTintMode;

    invoke-virtual {v6}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    .line 40
    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v6

    iget-object v7, p0, Lo/setCounterOverflowTextColor;->ICustomTabsCallback$Stub:Lo/setErrorIconTintMode;

    .line 41
    invoke-virtual {v7}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v7

    invoke-virtual {p3}, Lo/cH$newSession;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No number filter for double property. property"

    .line 42
    invoke-virtual {v6, v8, v7}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 45
    :cond_7
    invoke-virtual {p3}, Lo/cH$newSession;->asBinder()D

    move-result-wide v8

    invoke-virtual {v6}, Lo/cB$onMessageChannelReady;->onNavigationEvent()Lo/cB$ICustomTabsCallback;

    move-result-object v4

    invoke-static {v8, v9, v4}, Lo/setCounterOverflowTextColor;->onNavigationEvent(DLo/cB$ICustomTabsCallback;)Ljava/lang/Boolean;

    move-result-object v4

    .line 46
    invoke-static {v4, v7}, Lo/setCounterOverflowTextColor;->ICustomTabsCallback(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_3

    .line 47
    :cond_8
    invoke-virtual {p3}, Lo/cH$newSession;->extraCallback()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 48
    invoke-virtual {v6}, Lo/cB$onMessageChannelReady;->onMessageChannelReady()Z

    move-result v8

    if-nez v8, :cond_b

    .line 49
    invoke-virtual {v6}, Lo/cB$onMessageChannelReady;->ICustomTabsCallback()Z

    move-result v8

    if-nez v8, :cond_9

    .line 50
    iget-object v6, p0, Lo/setCounterOverflowTextColor;->ICustomTabsCallback$Stub:Lo/setErrorIconTintMode;

    invoke-virtual {v6}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    .line 51
    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v6

    iget-object v7, p0, Lo/setCounterOverflowTextColor;->ICustomTabsCallback$Stub:Lo/setErrorIconTintMode;

    .line 52
    invoke-virtual {v7}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v7

    invoke-virtual {p3}, Lo/cH$newSession;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "No string or number filter defined. property"

    .line 53
    invoke-virtual {v6, v8, v7}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 54
    :cond_9
    invoke-virtual {p3}, Lo/cH$newSession;->onNavigationEvent()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lo/setErrorTextColor;->onMessageChannelReady(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 56
    invoke-virtual {p3}, Lo/cH$newSession;->onNavigationEvent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lo/cB$onMessageChannelReady;->onNavigationEvent()Lo/cB$ICustomTabsCallback;

    move-result-object v6

    invoke-static {v4, v6}, Lo/setCounterOverflowTextColor;->extraCallback(Ljava/lang/String;Lo/cB$ICustomTabsCallback;)Ljava/lang/Boolean;

    move-result-object v4

    .line 57
    invoke-static {v4, v7}, Lo/setCounterOverflowTextColor;->ICustomTabsCallback(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_3

    .line 58
    :cond_a
    iget-object v6, p0, Lo/setCounterOverflowTextColor;->ICustomTabsCallback$Stub:Lo/setErrorIconTintMode;

    invoke-virtual {v6}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    .line 59
    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v6

    iget-object v7, p0, Lo/setCounterOverflowTextColor;->ICustomTabsCallback$Stub:Lo/setErrorIconTintMode;

    .line 60
    invoke-virtual {v7}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v7

    invoke-virtual {p3}, Lo/cH$newSession;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 61
    invoke-virtual {p3}, Lo/cH$newSession;->onNavigationEvent()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Invalid user property value for Numeric number filter. property, value"

    .line 62
    invoke-virtual {v6, v9, v7, v8}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 65
    :cond_b
    invoke-virtual {p3}, Lo/cH$newSession;->onNavigationEvent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6}, Lo/cB$onMessageChannelReady;->onPostMessage()Lo/cB$asBinder;

    move-result-object v6

    iget-object v8, p0, Lo/setCounterOverflowTextColor;->ICustomTabsCallback$Stub:Lo/setErrorIconTintMode;

    invoke-virtual {v8}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v8

    invoke-static {v4, v6, v8}, Lo/setCounterOverflowTextColor;->extraCallback(Ljava/lang/String;Lo/cB$asBinder;Lo/HideBottomViewOnScrollBehavior;)Ljava/lang/Boolean;

    move-result-object v4

    .line 66
    invoke-static {v4, v7}, Lo/setCounterOverflowTextColor;->ICustomTabsCallback(Ljava/lang/Boolean;Z)Ljava/lang/Boolean;

    move-result-object v4

    goto :goto_3

    .line 67
    :cond_c
    iget-object v6, p0, Lo/setCounterOverflowTextColor;->ICustomTabsCallback$Stub:Lo/setErrorIconTintMode;

    invoke-virtual {v6}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    .line 68
    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v6

    iget-object v7, p0, Lo/setCounterOverflowTextColor;->ICustomTabsCallback$Stub:Lo/setErrorIconTintMode;

    .line 69
    invoke-virtual {v7}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v7

    invoke-virtual {p3}, Lo/cH$newSession;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "User property has no value, property"

    .line 70
    invoke-virtual {v6, v8, v7}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :goto_3
    iget-object v6, p0, Lo/setCounterOverflowTextColor;->ICustomTabsCallback$Stub:Lo/setErrorIconTintMode;

    invoke-virtual {v6}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    .line 74
    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v6

    if-nez v4, :cond_d

    const-string v7, "null"

    goto :goto_4

    :cond_d
    move-object v7, v4

    :goto_4
    const-string v8, "Property filter result"

    .line 75
    invoke-virtual {v6, v8, v7}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v4, :cond_e

    return v1

    .line 78
    :cond_e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lo/setCounterOverflowTextColor;->extraCallback:Ljava/lang/Boolean;

    if-eqz v5, :cond_f

    .line 79
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_f

    return v2

    :cond_f
    if-eqz p4, :cond_10

    .line 81
    iget-object p4, p0, Lo/setCounterOverflowTextColor;->asInterface:Lo/cB$onPostMessage;

    invoke-virtual {p4}, Lo/cB$onPostMessage;->extraCallback()Z

    move-result p4

    if-eqz p4, :cond_11

    .line 82
    :cond_10
    iput-object v4, p0, Lo/setCounterOverflowTextColor;->onMessageChannelReady:Ljava/lang/Boolean;

    .line 83
    :cond_11
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_15

    if-eqz v3, :cond_15

    invoke-virtual {p3}, Lo/cH$newSession;->onMessageChannelReady()Z

    move-result p4

    if-eqz p4, :cond_15

    .line 85
    invoke-virtual {p3}, Lo/cH$newSession;->onPostMessage()J

    move-result-wide p3

    if-eqz p1, :cond_12

    .line 87
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    :cond_12
    if-eqz v0, :cond_13

    .line 89
    iget-object p1, p0, Lo/setCounterOverflowTextColor;->asInterface:Lo/cB$onPostMessage;

    invoke-virtual {p1}, Lo/cB$onPostMessage;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lo/setCounterOverflowTextColor;->asInterface:Lo/cB$onPostMessage;

    invoke-virtual {p1}, Lo/cB$onPostMessage;->ICustomTabsCallback$Stub()Z

    move-result p1

    if-nez p1, :cond_13

    if-eqz p2, :cond_13

    .line 90
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    .line 91
    :cond_13
    iget-object p1, p0, Lo/setCounterOverflowTextColor;->asInterface:Lo/cB$onPostMessage;

    invoke-virtual {p1}, Lo/cB$onPostMessage;->ICustomTabsCallback$Stub()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 92
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/setCounterOverflowTextColor;->onRelationshipValidationResult:Ljava/lang/Long;

    goto :goto_5

    .line 93
    :cond_14
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/setCounterOverflowTextColor;->onNavigationEvent:Ljava/lang/Long;

    :cond_15
    :goto_5
    return v2
.end method

.method final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
