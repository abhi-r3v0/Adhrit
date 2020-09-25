.class final Lo/onStart$2;
.super Lo/MediaSessionCompat$Callback$StubApi23;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onStart;-><init>(Lo/setCurrentControllerInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/MediaSessionCompat$Callback$StubApi23<",
        "Lo/onDestroy;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic onMessageChannelReady:Lo/onStart;


# direct methods
.method constructor <init>(Lo/onStart;Lo/setCurrentControllerInfo;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lo/onStart$2;->onMessageChannelReady:Lo/onStart;

    invoke-direct {p0, p2}, Lo/MediaSessionCompat$Callback$StubApi23;-><init>(Lo/setCurrentControllerInfo;)V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR IGNORE INTO `WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method

.method public final synthetic onPostMessage(Lo/getDrawerToggleDelegate$onNavigationEvent;Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v0, p1

    .line 53
    move-object/from16 v1, p2

    check-cast v1, Lo/onDestroy;

    .line 1061
    iget-object v2, v1, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 1062
    invoke-interface {v0, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 1064
    :cond_0
    iget-object v2, v1, Lo/onDestroy;->extraCallback:Ljava/lang/String;

    invoke-interface {v0, v3, v2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 1067
    :goto_0
    iget-object v2, v1, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    invoke-static {v2}, Lo/invalidateOptionsMenu;->onPostMessage(Lo/PlaybackStateCompat$CustomAction$onPostMessage;)I

    move-result v2

    int-to-long v4, v2

    const/4 v2, 0x2

    .line 1068
    invoke-interface {v0, v2, v4, v5}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 1069
    iget-object v4, v1, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    const/4 v5, 0x3

    if-nez v4, :cond_1

    .line 1070
    invoke-interface {v0, v5}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_1

    .line 1072
    :cond_1
    iget-object v4, v1, Lo/onDestroy;->onNavigationEvent:Ljava/lang/String;

    invoke-interface {v0, v5, v4}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 1074
    :goto_1
    iget-object v4, v1, Lo/onDestroy;->onPostMessage:Ljava/lang/String;

    const/4 v6, 0x4

    if-nez v4, :cond_2

    .line 1075
    invoke-interface {v0, v6}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_2

    .line 1077
    :cond_2
    iget-object v4, v1, Lo/onDestroy;->onPostMessage:Ljava/lang/String;

    invoke-interface {v0, v6, v4}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 1080
    :goto_2
    iget-object v4, v1, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    invoke-static {v4}, Lo/PlaybackStateCompat$Builder;->onNavigationEvent(Lo/PlaybackStateCompat$Builder;)[B

    move-result-object v4

    const/4 v7, 0x5

    if-nez v4, :cond_3

    .line 1082
    invoke-interface {v0, v7}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_3

    .line 1084
    :cond_3
    invoke-interface {v0, v7, v4}, Lo/getDrawerToggleDelegate$onNavigationEvent;->extraCallback(I[B)V

    .line 1087
    :goto_3
    iget-object v4, v1, Lo/onDestroy;->ICustomTabsCallback$Stub:Lo/PlaybackStateCompat$Builder;

    invoke-static {v4}, Lo/PlaybackStateCompat$Builder;->onNavigationEvent(Lo/PlaybackStateCompat$Builder;)[B

    move-result-object v4

    const/4 v8, 0x6

    if-nez v4, :cond_4

    .line 1089
    invoke-interface {v0, v8}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_4

    .line 1091
    :cond_4
    invoke-interface {v0, v8, v4}, Lo/getDrawerToggleDelegate$onNavigationEvent;->extraCallback(I[B)V

    :goto_4
    const/4 v4, 0x7

    .line 1093
    iget-wide v8, v1, Lo/onDestroy;->onTransact:J

    invoke-interface {v0, v4, v8, v9}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    const/16 v4, 0x8

    .line 1094
    iget-wide v8, v1, Lo/onDestroy;->onRelationshipValidationResult:J

    invoke-interface {v0, v4, v8, v9}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    const/16 v4, 0x9

    .line 1095
    iget-wide v8, v1, Lo/onDestroy;->asBinder:J

    invoke-interface {v0, v4, v8, v9}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    const/16 v4, 0xa

    .line 1096
    iget v8, v1, Lo/onDestroy;->getInterfaceDescriptor:I

    int-to-long v8, v8

    invoke-interface {v0, v4, v8, v9}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 1098
    iget-object v4, v1, Lo/onDestroy;->ICustomTabsService:Lo/getPlaybackSpeed;

    .line 1155
    sget-object v8, Lo/invalidateOptionsMenu$2;->onPostMessage:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    const-string v9, " to int"

    const-string v10, "Could not convert "

    if-eq v8, v3, :cond_6

    if-ne v8, v2, :cond_5

    const/4 v4, 0x1

    goto :goto_5

    .line 1163
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    const/4 v4, 0x0

    :goto_5
    const/16 v8, 0xb

    int-to-long v12, v4

    .line 1099
    invoke-interface {v0, v8, v12, v13}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    const/16 v4, 0xc

    .line 1100
    iget-wide v12, v1, Lo/onDestroy;->ICustomTabsCallback$Stub$Proxy:J

    invoke-interface {v0, v4, v12, v13}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    const/16 v4, 0xd

    .line 1101
    iget-wide v12, v1, Lo/onDestroy;->newSession:J

    invoke-interface {v0, v4, v12, v13}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    const/16 v4, 0xe

    .line 1102
    iget-wide v12, v1, Lo/onDestroy;->mayLaunchUrl:J

    invoke-interface {v0, v4, v12, v13}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    const/16 v4, 0xf

    .line 1103
    iget-wide v12, v1, Lo/onDestroy;->extraCommand:J

    invoke-interface {v0, v4, v12, v13}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 1105
    iget-boolean v4, v1, Lo/onDestroy;->requestPostMessageChannel:Z

    const/16 v8, 0x10

    int-to-long v12, v4

    .line 1106
    invoke-interface {v0, v8, v12, v13}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 1107
    iget-object v1, v1, Lo/onDestroy;->warmup:Lo/getErrorCode;

    const/16 v12, 0x15

    const/16 v13, 0x14

    const/16 v14, 0x13

    const/16 v15, 0x12

    const/16 v11, 0x11

    if-eqz v1, :cond_d

    .line 2105
    iget-object v4, v1, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    .line 2197
    sget-object v16, Lo/invalidateOptionsMenu$2;->ICustomTabsCallback:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v17

    aget v8, v16, v17

    if-eq v8, v3, :cond_a

    if-eq v8, v2, :cond_b

    if-eq v8, v5, :cond_9

    if-eq v8, v6, :cond_8

    if-ne v8, v7, :cond_7

    const/4 v3, 0x4

    goto :goto_6

    .line 2214
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v3, 0x3

    goto :goto_6

    :cond_9
    const/4 v3, 0x2

    goto :goto_6

    :cond_a
    const/4 v3, 0x0

    :cond_b
    :goto_6
    int-to-long v2, v3

    .line 1111
    invoke-interface {v0, v11, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 3121
    iget-boolean v2, v1, Lo/getErrorCode;->ICustomTabsCallback:Z

    int-to-long v2, v2

    .line 1114
    invoke-interface {v0, v15, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 3138
    iget-boolean v2, v1, Lo/getErrorCode;->onMessageChannelReady:Z

    int-to-long v2, v2

    .line 1117
    invoke-interface {v0, v14, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 3155
    iget-boolean v2, v1, Lo/getErrorCode;->onPostMessage:Z

    int-to-long v2, v2

    .line 1120
    invoke-interface {v0, v13, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 3171
    iget-boolean v2, v1, Lo/getErrorCode;->ICustomTabsCallback$Stub:Z

    int-to-long v2, v2

    .line 1123
    invoke-interface {v0, v12, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 3189
    iget-wide v2, v1, Lo/getErrorCode;->asBinder:J

    const/16 v4, 0x16

    .line 1124
    invoke-interface {v0, v4, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 3207
    iget-wide v2, v1, Lo/getErrorCode;->asInterface:J

    const/16 v4, 0x17

    .line 1125
    invoke-interface {v0, v4, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    .line 3235
    iget-object v1, v1, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    .line 1127
    invoke-static {v1}, Lo/invalidateOptionsMenu;->extraCallback(Lo/getErrorMessage;)[B

    move-result-object v1

    if-nez v1, :cond_c

    const/16 v2, 0x18

    .line 1129
    invoke-interface {v0, v2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    return-void

    :cond_c
    const/16 v2, 0x18

    .line 1131
    invoke-interface {v0, v2, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->extraCallback(I[B)V

    return-void

    :cond_d
    const/16 v2, 0x18

    .line 1134
    invoke-interface {v0, v11}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    .line 1135
    invoke-interface {v0, v15}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    .line 1136
    invoke-interface {v0, v14}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    .line 1137
    invoke-interface {v0, v13}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    .line 1138
    invoke-interface {v0, v12}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    const/16 v1, 0x16

    .line 1139
    invoke-interface {v0, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    const/16 v1, 0x17

    .line 1140
    invoke-interface {v0, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    .line 1141
    invoke-interface {v0, v2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    return-void
.end method
