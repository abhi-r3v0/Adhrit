.class public final Lo/onStart;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onPostResume;


# instance fields
.field private final ICustomTabsCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

.field private final ICustomTabsCallback$Stub:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

.field private final asBinder:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

.field private final asInterface:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

.field private final extraCallback:Lo/MediaSessionCompat$Callback$StubApi23;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaSessionCompat$Callback$StubApi23<",
            "Lo/onDestroy;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

.field private final onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

.field private final onPostMessage:Lo/setCurrentControllerInfo;

.field private final onRelationshipValidationResult:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

.field private final onTransact:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;


# direct methods
.method public constructor <init>(Lo/setCurrentControllerInfo;)V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 53
    new-instance v0, Lo/onStart$2;

    invoke-direct {v0, p0, p1}, Lo/onStart$2;-><init>(Lo/onStart;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/onStart;->extraCallback:Lo/MediaSessionCompat$Callback$StubApi23;

    .line 145
    new-instance v0, Lo/onStart$5;

    invoke-direct {v0, p0, p1}, Lo/onStart$5;-><init>(Lo/onStart;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/onStart;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 152
    new-instance v0, Lo/onStart$3;

    invoke-direct {v0, p0, p1}, Lo/onStart$3;-><init>(Lo/onStart;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/onStart;->onMessageChannelReady:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 159
    new-instance v0, Lo/onStart$1;

    invoke-direct {v0, p0, p1}, Lo/onStart$1;-><init>(Lo/onStart;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/onStart;->ICustomTabsCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 166
    new-instance v0, Lo/onStart$4;

    invoke-direct {v0, p0, p1}, Lo/onStart$4;-><init>(Lo/onStart;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/onStart;->asInterface:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 173
    new-instance v0, Lo/onStart$7;

    invoke-direct {v0, p0, p1}, Lo/onStart$7;-><init>(Lo/onStart;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/onStart;->onRelationshipValidationResult:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 180
    new-instance v0, Lo/onStart$6;

    invoke-direct {v0, p0, p1}, Lo/onStart$6;-><init>(Lo/onStart;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/onStart;->asBinder:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 187
    new-instance v0, Lo/onStart$9;

    invoke-direct {v0, p0, p1}, Lo/onStart$9;-><init>(Lo/onStart;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/onStart;->ICustomTabsCallback$Stub:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 194
    new-instance v0, Lo/onStart$8;

    invoke-direct {v0, p0, p1}, Lo/onStart$8;-><init>(Lo/onStart;Lo/setCurrentControllerInfo;)V

    iput-object v0, p0, Lo/onStart;->onTransact:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    return-void
.end method


# virtual methods
.method public final varargs ICustomTabsCallback(Lo/PlaybackStateCompat$CustomAction$onPostMessage;[Ljava/lang/String;)I
    .locals 4

    .line 2004
    iget-object v0, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 41045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE workspec SET state="

    .line 2006
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 2007
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE id IN ("

    .line 2008
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    .line 2010
    invoke-static {v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Ljava/lang/StringBuilder;I)V

    const-string v2, ")"

    .line 2011
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2012
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2013
    iget-object v2, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 41339
    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 41340
    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 41341
    iget-object v2, v2, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    invoke-interface {v2, v0}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Ljava/lang/String;)Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    .line 2016
    invoke-static {p1}, Lo/invalidateOptionsMenu;->onPostMessage(Lo/PlaybackStateCompat$CustomAction$onPostMessage;)I

    move-result p1

    int-to-long v2, p1

    .line 2017
    invoke-interface {v0, v1, v2, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    const/4 p1, 0x0

    const/4 v1, 0x0

    :goto_0
    if-gtz v1, :cond_1

    .line 2019
    aget-object v2, p2, p1

    const/4 v3, 0x2

    if-nez v2, :cond_0

    .line 2021
    invoke-interface {v0, v3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_1

    .line 2023
    :cond_0
    invoke-interface {v0, v3, v2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2027
    :cond_1
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onNavigationEvent()V

    .line 2029
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    move-result p1

    .line 2030
    iget-object p2, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 41395
    iget-object p2, p2, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p2

    invoke-interface {p2}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2033
    iget-object p2, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {p2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {p2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 2034
    throw p1
.end method

.method public final ICustomTabsCallback()Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/onDestroy;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at<>-1"

    .line 1670
    invoke-static {v2, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v2

    .line 1671
    iget-object v3, v1, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 1672
    iget-object v3, v1, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 35323
    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 35324
    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 35328
    iget-object v3, v3, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v3}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v3

    invoke-interface {v3, v2}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v4, "required_network_type"

    .line 1674
    invoke-static {v3, v4}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "requires_charging"

    .line 1675
    invoke-static {v3, v5}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    .line 1676
    invoke-static {v3, v6}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    .line 1677
    invoke-static {v3, v7}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    .line 1678
    invoke-static {v3, v8}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    .line 1679
    invoke-static {v3, v9}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    .line 1680
    invoke-static {v3, v10}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    .line 1681
    invoke-static {v3, v11}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 1682
    invoke-static {v3, v12}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    .line 1683
    invoke-static {v3, v13}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    .line 1684
    invoke-static {v3, v14}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    .line 1685
    invoke-static {v3, v15}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "input"

    .line 1686
    invoke-static {v3, v0}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v1, "output"

    .line 1687
    invoke-static {v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "initial_delay"

    .line 1688
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "interval_duration"

    .line 1689
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "flex_duration"

    .line 1690
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "run_attempt_count"

    .line 1691
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "backoff_policy"

    .line 1692
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "backoff_delay_duration"

    .line 1693
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "period_start_time"

    .line 1694
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "minimum_retention_duration"

    .line 1695
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "schedule_requested_at"

    .line 1696
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "run_in_foreground"

    .line 1697
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    .line 1698
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v27, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1699
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1702
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v28, v12

    .line 1704
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v29, v14

    .line 1706
    new-instance v14, Lo/getErrorCode;

    invoke-direct {v14}, Lo/getErrorCode;-><init>()V

    .line 1709
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v31, v4

    .line 1710
    invoke-static/range {v30 .. v30}, Lo/invalidateOptionsMenu;->extraCallback(I)Lo/addCustomAction;

    move-result-object v4

    .line 36114
    iput-object v4, v14, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    .line 1714
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v30, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 36130
    :goto_1
    iput-boolean v4, v14, Lo/getErrorCode;->ICustomTabsCallback:Z

    .line 1719
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 36148
    :goto_2
    iput-boolean v4, v14, Lo/getErrorCode;->onMessageChannelReady:Z

    .line 1724
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    .line 36164
    :goto_3
    iput-boolean v4, v14, Lo/getErrorCode;->onPostMessage:Z

    .line 1729
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    .line 36180
    :goto_4
    iput-boolean v4, v14, Lo/getErrorCode;->ICustomTabsCallback$Stub:Z

    move/from16 v32, v5

    .line 1733
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 36198
    iput-wide v4, v14, Lo/getErrorCode;->asBinder:J

    .line 1736
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 36216
    iput-wide v4, v14, Lo/getErrorCode;->asInterface:J

    .line 1740
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1741
    invoke-static {v4}, Lo/invalidateOptionsMenu;->onNavigationEvent([B)Lo/getErrorMessage;

    move-result-object v4

    .line 36226
    iput-object v4, v14, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    .line 1743
    new-instance v4, Lo/onDestroy;

    invoke-direct {v4, v1, v12}, Lo/onDestroy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1745
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1746
    invoke-static {v1}, Lo/invalidateOptionsMenu;->onPostMessage(I)Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v1

    iput-object v1, v4, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 1747
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lo/onDestroy;->onPostMessage:Ljava/lang/String;

    .line 1749
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1750
    invoke-static {v1}, Lo/PlaybackStateCompat$Builder;->ICustomTabsCallback([B)Lo/PlaybackStateCompat$Builder;

    move-result-object v1

    iput-object v1, v4, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    move/from16 v1, v27

    .line 1752
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 1753
    invoke-static {v5}, Lo/PlaybackStateCompat$Builder;->ICustomTabsCallback([B)Lo/PlaybackStateCompat$Builder;

    move-result-object v5

    iput-object v5, v4, Lo/onDestroy;->ICustomTabsCallback$Stub:Lo/PlaybackStateCompat$Builder;

    move v12, v0

    move/from16 v27, v1

    move/from16 v5, v17

    .line 1754
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->onTransact:J

    move/from16 v17, v5

    move v1, v6

    move/from16 v0, v18

    .line 1755
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lo/onDestroy;->onRelationshipValidationResult:J

    move/from16 v18, v0

    move v6, v1

    move/from16 v5, v19

    .line 1756
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->asBinder:J

    move/from16 v0, v20

    .line 1757
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v4, Lo/onDestroy;->getInterfaceDescriptor:I

    move/from16 v1, v21

    .line 1759
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    .line 1760
    invoke-static/range {v19 .. v19}, Lo/invalidateOptionsMenu;->onMessageChannelReady(I)Lo/getPlaybackSpeed;

    move-result-object v0

    iput-object v0, v4, Lo/onDestroy;->ICustomTabsService:Lo/getPlaybackSpeed;

    move/from16 v19, v5

    move/from16 v21, v6

    move/from16 v0, v22

    .line 1761
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lo/onDestroy;->ICustomTabsCallback$Stub$Proxy:J

    move/from16 v22, v0

    move v6, v1

    move/from16 v5, v23

    .line 1762
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->newSession:J

    move/from16 v23, v5

    move v1, v6

    move/from16 v0, v24

    .line 1763
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lo/onDestroy;->mayLaunchUrl:J

    move/from16 v24, v0

    move v6, v1

    move/from16 v5, v25

    .line 1764
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->extraCommand:J

    move/from16 v0, v26

    .line 1766
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    .line 1767
    :goto_5
    iput-boolean v1, v4, Lo/onDestroy;->requestPostMessageChannel:Z

    .line 1768
    iput-object v14, v4, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 1769
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v26, v0

    move/from16 v25, v5

    move v0, v12

    move/from16 v12, v28

    move/from16 v14, v29

    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v33, v21

    move/from16 v21, v6

    move/from16 v6, v33

    goto/16 :goto_0

    .line 1773
    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1774
    invoke-virtual/range {v16 .. v16}, Lo/setRccState;->onNavigationEvent()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 1773
    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1774
    invoke-virtual/range {v16 .. v16}, Lo/setRccState;->onNavigationEvent()V

    .line 1775
    throw v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/onDestroy;
    .locals 26

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE id=?"

    .line 382
    invoke-static {v2, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v2

    if-nez p1, :cond_0

    .line 17234
    iget-object v3, v2, Lo/setRccState;->ICustomTabsCallback:[I

    aput v0, v3, v0

    goto :goto_0

    .line 17251
    :cond_0
    iget-object v3, v2, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v4, 0x4

    aput v4, v3, v0

    .line 17252
    iget-object v3, v2, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    aput-object p1, v3, v0

    .line 389
    :goto_0
    iget-object v3, v1, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 390
    iget-object v3, v1, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 18323
    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 18324
    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 18328
    iget-object v3, v3, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v3}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v3

    invoke-interface {v3, v2}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v4, "required_network_type"

    .line 392
    invoke-static {v3, v4}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "requires_charging"

    .line 393
    invoke-static {v3, v5}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    .line 394
    invoke-static {v3, v6}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    .line 395
    invoke-static {v3, v7}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    .line 396
    invoke-static {v3, v8}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    .line 397
    invoke-static {v3, v9}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    .line 398
    invoke-static {v3, v10}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    .line 399
    invoke-static {v3, v11}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 400
    invoke-static {v3, v12}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    .line 401
    invoke-static {v3, v13}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    .line 402
    invoke-static {v3, v14}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    .line 403
    invoke-static {v3, v15}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "input"

    .line 404
    invoke-static {v3, v0}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v1, "output"

    .line 405
    invoke-static {v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "initial_delay"

    .line 406
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "interval_duration"

    .line 407
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "flex_duration"

    .line 408
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "run_attempt_count"

    .line 409
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "backoff_policy"

    .line 410
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "backoff_delay_duration"

    .line 411
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "period_start_time"

    .line 412
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "minimum_retention_duration"

    .line 413
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "schedule_requested_at"

    .line 414
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "run_in_foreground"

    .line 415
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 417
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 419
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 421
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move/from16 v25, v2

    .line 423
    new-instance v2, Lo/getErrorCode;

    invoke-direct {v2}, Lo/getErrorCode;-><init>()V

    .line 426
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 427
    invoke-static {v4}, Lo/invalidateOptionsMenu;->extraCallback(I)Lo/addCustomAction;

    move-result-object v4

    .line 19114
    iput-object v4, v2, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    .line 431
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 19130
    :goto_1
    iput-boolean v4, v2, Lo/getErrorCode;->ICustomTabsCallback:Z

    .line 436
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    .line 19148
    :goto_2
    iput-boolean v4, v2, Lo/getErrorCode;->onMessageChannelReady:Z

    .line 441
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    .line 19164
    :goto_3
    iput-boolean v4, v2, Lo/getErrorCode;->onPostMessage:Z

    .line 446
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    .line 19180
    :goto_4
    iput-boolean v4, v2, Lo/getErrorCode;->ICustomTabsCallback$Stub:Z

    .line 450
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 19198
    iput-wide v6, v2, Lo/getErrorCode;->asBinder:J

    .line 453
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 19216
    iput-wide v6, v2, Lo/getErrorCode;->asInterface:J

    .line 457
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 458
    invoke-static {v4}, Lo/invalidateOptionsMenu;->onNavigationEvent([B)Lo/getErrorMessage;

    move-result-object v4

    .line 19226
    iput-object v4, v2, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    .line 460
    new-instance v4, Lo/onDestroy;

    invoke-direct {v4, v12, v14}, Lo/onDestroy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 463
    invoke-static {v6}, Lo/invalidateOptionsMenu;->onPostMessage(I)Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v6

    iput-object v6, v4, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 464
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lo/onDestroy;->onPostMessage:Ljava/lang/String;

    .line 466
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 467
    invoke-static {v0}, Lo/PlaybackStateCompat$Builder;->ICustomTabsCallback([B)Lo/PlaybackStateCompat$Builder;

    move-result-object v0

    iput-object v0, v4, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    .line 469
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 470
    invoke-static {v0}, Lo/PlaybackStateCompat$Builder;->ICustomTabsCallback([B)Lo/PlaybackStateCompat$Builder;

    move-result-object v0

    iput-object v0, v4, Lo/onDestroy;->ICustomTabsCallback$Stub:Lo/PlaybackStateCompat$Builder;

    move/from16 v0, p1

    .line 471
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->onTransact:J

    move/from16 v0, v17

    .line 472
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->onRelationshipValidationResult:J

    move/from16 v0, v18

    .line 473
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->asBinder:J

    move/from16 v0, v19

    .line 474
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v4, Lo/onDestroy;->getInterfaceDescriptor:I

    move/from16 v0, v20

    .line 476
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 477
    invoke-static {v0}, Lo/invalidateOptionsMenu;->onMessageChannelReady(I)Lo/getPlaybackSpeed;

    move-result-object v0

    iput-object v0, v4, Lo/onDestroy;->ICustomTabsService:Lo/getPlaybackSpeed;

    move/from16 v0, v21

    .line 478
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->ICustomTabsCallback$Stub$Proxy:J

    move/from16 v0, v22

    .line 479
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->newSession:J

    move/from16 v0, v23

    .line 480
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->mayLaunchUrl:J

    move/from16 v0, v24

    .line 481
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->extraCommand:J

    move/from16 v0, v25

    .line 483
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    .line 484
    :goto_5
    iput-boolean v0, v4, Lo/onDestroy;->requestPostMessageChannel:Z

    .line 485
    iput-object v2, v4, Lo/onDestroy;->warmup:Lo/getErrorCode;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    :cond_6
    const/4 v4, 0x0

    .line 491
    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 492
    invoke-virtual/range {v16 .. v16}, Lo/setRccState;->onNavigationEvent()V

    return-object v4

    :catchall_0
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 491
    :goto_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 492
    invoke-virtual/range {v16 .. v16}, Lo/setRccState;->onNavigationEvent()V

    .line 493
    throw v0
.end method

.method public final ICustomTabsCallback$Stub(Ljava/lang/String;)Lo/PlaybackStateCompat$CustomAction$onPostMessage;
    .locals 4

    const/4 v0, 0x1

    const-string v1, "SELECT state FROM workspec WHERE id=?"

    .line 681
    invoke-static {v1, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v1

    if-nez p1, :cond_0

    .line 21234
    iget-object p1, v1, Lo/setRccState;->ICustomTabsCallback:[I

    aput v0, p1, v0

    goto :goto_0

    .line 21251
    :cond_0
    iget-object v2, v1, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v3, 0x4

    aput v3, v2, v0

    .line 21252
    iget-object v2, v1, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    aput-object p1, v2, v0

    .line 688
    :goto_0
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 689
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 22323
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 22324
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 22328
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object p1

    .line 692
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 694
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 695
    invoke-static {v0}, Lo/invalidateOptionsMenu;->onPostMessage(I)Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 701
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 702
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 701
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 702
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    .line 703
    throw v0
.end method

.method public final asBinder(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 1400
    invoke-static {v1, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v1

    if-nez p1, :cond_0

    .line 27234
    iget-object p1, v1, Lo/setRccState;->ICustomTabsCallback:[I

    aput v0, p1, v0

    goto :goto_0

    .line 27251
    :cond_0
    iget-object v2, v1, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v3, 0x4

    aput v3, v2, v0

    .line 27252
    iget-object v2, v1, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    aput-object p1, v2, v0

    .line 1407
    :goto_0
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 1408
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 28323
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 28324
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 28328
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object p1

    .line 1410
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1411
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 1413
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1414
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1418
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1419
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 1418
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1419
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    .line 1420
    throw v0
.end method

.method public final asInterface(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5) AND id IN (SELECT work_spec_id FROM worktag WHERE tag=?)"

    .line 1374
    invoke-static {v1, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v1

    if-nez p1, :cond_0

    .line 25234
    iget-object p1, v1, Lo/setRccState;->ICustomTabsCallback:[I

    aput v0, p1, v0

    goto :goto_0

    .line 25251
    :cond_0
    iget-object v2, v1, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v3, 0x4

    aput v3, v2, v0

    .line 25252
    iget-object v2, v1, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    aput-object p1, v2, v0

    .line 1381
    :goto_0
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 1382
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 26323
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 26324
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 26328
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object p1

    .line 1384
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1385
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 1387
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1388
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1392
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1393
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 1392
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1393
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    .line 1394
    throw v0
.end method

.method public final extraCallback()Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/onDestroy;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=1"

    .line 1781
    invoke-static {v2, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v2

    .line 1782
    iget-object v3, v1, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 1783
    iget-object v3, v1, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 37323
    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 37324
    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 37328
    iget-object v3, v3, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v3}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v3

    invoke-interface {v3, v2}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v4, "required_network_type"

    .line 1785
    invoke-static {v3, v4}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "requires_charging"

    .line 1786
    invoke-static {v3, v5}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    .line 1787
    invoke-static {v3, v6}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    .line 1788
    invoke-static {v3, v7}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    .line 1789
    invoke-static {v3, v8}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    .line 1790
    invoke-static {v3, v9}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    .line 1791
    invoke-static {v3, v10}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    .line 1792
    invoke-static {v3, v11}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 1793
    invoke-static {v3, v12}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    .line 1794
    invoke-static {v3, v13}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    .line 1795
    invoke-static {v3, v14}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    .line 1796
    invoke-static {v3, v15}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "input"

    .line 1797
    invoke-static {v3, v0}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v1, "output"

    .line 1798
    invoke-static {v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "initial_delay"

    .line 1799
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "interval_duration"

    .line 1800
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "flex_duration"

    .line 1801
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "run_attempt_count"

    .line 1802
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "backoff_policy"

    .line 1803
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "backoff_delay_duration"

    .line 1804
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "period_start_time"

    .line 1805
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "minimum_retention_duration"

    .line 1806
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "schedule_requested_at"

    .line 1807
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "run_in_foreground"

    .line 1808
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    .line 1809
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v27, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1810
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1813
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v28, v12

    .line 1815
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v29, v14

    .line 1817
    new-instance v14, Lo/getErrorCode;

    invoke-direct {v14}, Lo/getErrorCode;-><init>()V

    .line 1820
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v31, v4

    .line 1821
    invoke-static/range {v30 .. v30}, Lo/invalidateOptionsMenu;->extraCallback(I)Lo/addCustomAction;

    move-result-object v4

    .line 38114
    iput-object v4, v14, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    .line 1825
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v30, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 38130
    :goto_1
    iput-boolean v4, v14, Lo/getErrorCode;->ICustomTabsCallback:Z

    .line 1830
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 38148
    :goto_2
    iput-boolean v4, v14, Lo/getErrorCode;->onMessageChannelReady:Z

    .line 1835
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    .line 38164
    :goto_3
    iput-boolean v4, v14, Lo/getErrorCode;->onPostMessage:Z

    .line 1840
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    .line 38180
    :goto_4
    iput-boolean v4, v14, Lo/getErrorCode;->ICustomTabsCallback$Stub:Z

    move/from16 v32, v5

    .line 1844
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 38198
    iput-wide v4, v14, Lo/getErrorCode;->asBinder:J

    .line 1847
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 38216
    iput-wide v4, v14, Lo/getErrorCode;->asInterface:J

    .line 1851
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1852
    invoke-static {v4}, Lo/invalidateOptionsMenu;->onNavigationEvent([B)Lo/getErrorMessage;

    move-result-object v4

    .line 38226
    iput-object v4, v14, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    .line 1854
    new-instance v4, Lo/onDestroy;

    invoke-direct {v4, v1, v12}, Lo/onDestroy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1857
    invoke-static {v1}, Lo/invalidateOptionsMenu;->onPostMessage(I)Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v1

    iput-object v1, v4, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 1858
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lo/onDestroy;->onPostMessage:Ljava/lang/String;

    .line 1860
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1861
    invoke-static {v1}, Lo/PlaybackStateCompat$Builder;->ICustomTabsCallback([B)Lo/PlaybackStateCompat$Builder;

    move-result-object v1

    iput-object v1, v4, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    move/from16 v1, v27

    .line 1863
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 1864
    invoke-static {v5}, Lo/PlaybackStateCompat$Builder;->ICustomTabsCallback([B)Lo/PlaybackStateCompat$Builder;

    move-result-object v5

    iput-object v5, v4, Lo/onDestroy;->ICustomTabsCallback$Stub:Lo/PlaybackStateCompat$Builder;

    move v12, v0

    move/from16 v27, v1

    move/from16 v5, v17

    .line 1865
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->onTransact:J

    move/from16 v17, v5

    move v1, v6

    move/from16 v0, v18

    .line 1866
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lo/onDestroy;->onRelationshipValidationResult:J

    move/from16 v18, v0

    move v6, v1

    move/from16 v5, v19

    .line 1867
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->asBinder:J

    move/from16 v0, v20

    .line 1868
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v4, Lo/onDestroy;->getInterfaceDescriptor:I

    move/from16 v1, v21

    .line 1870
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    .line 1871
    invoke-static/range {v19 .. v19}, Lo/invalidateOptionsMenu;->onMessageChannelReady(I)Lo/getPlaybackSpeed;

    move-result-object v0

    iput-object v0, v4, Lo/onDestroy;->ICustomTabsService:Lo/getPlaybackSpeed;

    move/from16 v19, v5

    move/from16 v21, v6

    move/from16 v0, v22

    .line 1872
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lo/onDestroy;->ICustomTabsCallback$Stub$Proxy:J

    move/from16 v22, v0

    move v6, v1

    move/from16 v5, v23

    .line 1873
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->newSession:J

    move/from16 v23, v5

    move v1, v6

    move/from16 v0, v24

    .line 1874
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lo/onDestroy;->mayLaunchUrl:J

    move/from16 v24, v0

    move v6, v1

    move/from16 v5, v25

    .line 1875
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->extraCommand:J

    move/from16 v0, v26

    .line 1877
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    .line 1878
    :goto_5
    iput-boolean v1, v4, Lo/onDestroy;->requestPostMessageChannel:Z

    .line 1879
    iput-object v14, v4, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 1880
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v26, v0

    move/from16 v25, v5

    move v0, v12

    move/from16 v12, v28

    move/from16 v14, v29

    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v33, v21

    move/from16 v21, v6

    move/from16 v6, v33

    goto/16 :goto_0

    .line 1884
    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1885
    invoke-virtual/range {v16 .. v16}, Lo/setRccState;->onNavigationEvent()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 1884
    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1885
    invoke-virtual/range {v16 .. v16}, Lo/setRccState;->onNavigationEvent()V

    .line 1886
    throw v0
.end method

.method public final extraCallback(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/onDestroy$extraCallback;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    .line 629
    invoke-static {v1, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v1

    if-nez p1, :cond_0

    .line 19234
    iget-object p1, v1, Lo/setRccState;->ICustomTabsCallback:[I

    aput v0, p1, v0

    goto :goto_0

    .line 19251
    :cond_0
    iget-object v2, v1, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v3, 0x4

    aput v3, v2, v0

    .line 19252
    iget-object v2, v1, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    aput-object p1, v2, v0

    .line 636
    :goto_0
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 637
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 20323
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 20324
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 20328
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v0, "id"

    .line 639
    invoke-static {p1, v0}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v2, "state"

    .line 640
    invoke-static {p1, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    .line 641
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 642
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 644
    new-instance v4, Lo/onDestroy$extraCallback;

    invoke-direct {v4}, Lo/onDestroy$extraCallback;-><init>()V

    .line 645
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lo/onDestroy$extraCallback;->extraCallback:Ljava/lang/String;

    .line 647
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 648
    invoke-static {v5}, Lo/invalidateOptionsMenu;->onPostMessage(I)Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v5

    iput-object v5, v4, Lo/onDestroy$extraCallback;->onPostMessage:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 649
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 653
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 654
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    return-object v3

    :catchall_0
    move-exception v0

    .line 653
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 654
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    .line 655
    throw v0
.end method

.method public final extraCallback(Ljava/lang/String;Lo/PlaybackStateCompat$Builder;)V
    .locals 3

    .line 237
    iget-object v0, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 238
    iget-object v0, p0, Lo/onStart;->onMessageChannelReady:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    .line 241
    invoke-static {p2}, Lo/PlaybackStateCompat$Builder;->onNavigationEvent(Lo/PlaybackStateCompat$Builder;)[B

    move-result-object p2

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 243
    invoke-interface {v0, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 245
    :cond_0
    invoke-interface {v0, v1, p2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->extraCallback(I[B)V

    :goto_0
    const/4 p2, 0x2

    if-nez p1, :cond_1

    .line 249
    invoke-interface {v0, p2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_1

    .line 251
    :cond_1
    invoke-interface {v0, p2, p1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 253
    :goto_1
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 5351
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 5352
    iget-object p2, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p2

    .line 5353
    iget-object p1, p1, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {p1, p2}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 5354
    invoke-interface {p2}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 p1, 0x0

    .line 255
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    .line 256
    iget-object p2, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 5395
    iget-object p2, p2, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p2

    invoke-interface {p2}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    iget-object p2, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {p2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 259
    iget-object p2, p0, Lo/onStart;->onMessageChannelReady:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 6096
    iget-object v1, p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v1, :cond_2

    .line 6097
    iget-object p2, p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception p2

    .line 258
    iget-object v1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 259
    iget-object v1, p0, Lo/onStart;->onMessageChannelReady:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 7096
    iget-object v2, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v2, :cond_3

    .line 7097
    iget-object v0, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 260
    :cond_3
    throw p2
.end method

.method public final onMessageChannelReady()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SELECT id FROM workspec WHERE state NOT IN (2, 3, 5)"

    .line 1426
    invoke-static {v1, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v1

    .line 1427
    iget-object v2, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 1428
    iget-object v2, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 29323
    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 29324
    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 29328
    iget-object v2, v2, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    invoke-interface {v2, v1}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v2

    .line 1430
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1431
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1433
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1434
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1438
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1439
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    return-object v3

    :catchall_0
    move-exception v0

    .line 1438
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1439
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    .line 1440
    throw v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 4

    .line 217
    iget-object v0, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 218
    iget-object v0, p0, Lo/onStart;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 221
    invoke-interface {v0, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 223
    :cond_0
    invoke-interface {v0, v1, p1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 225
    :goto_0
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 3351
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 3352
    iget-object v1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 3353
    iget-object p1, p1, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {p1, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 3354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 p1, 0x0

    .line 227
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    .line 228
    iget-object v1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 3395
    iget-object v1, v1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 230
    iget-object v1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 231
    iget-object v1, p0, Lo/onStart;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 4096
    iget-object v2, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v2, :cond_1

    .line 4097
    iget-object v0, v1, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 230
    iget-object v2, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 231
    iget-object v2, p0, Lo/onStart;->onNavigationEvent:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 5096
    iget-object v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v3, :cond_2

    .line 5097
    iget-object v0, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 232
    :cond_2
    throw v1
.end method

.method public final onNavigationEvent(Ljava/lang/String;)I
    .locals 4

    .line 308
    iget-object v0, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 309
    iget-object v0, p0, Lo/onStart;->onRelationshipValidationResult:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 312
    invoke-interface {v0, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-interface {v0, v1, p1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 316
    :goto_0
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 11351
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 11352
    iget-object v1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 11353
    iget-object p1, p1, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {p1, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 11354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 p1, 0x0

    .line 318
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    move-result v1

    .line 319
    iget-object v2, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 11395
    iget-object v2, v2, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    invoke-interface {v2}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    iget-object v2, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 323
    iget-object v2, p0, Lo/onStart;->onRelationshipValidationResult:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 12096
    iget-object v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v3, :cond_1

    .line 12097
    iget-object v0, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return v1

    :catchall_0
    move-exception v1

    .line 322
    iget-object v2, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 323
    iget-object v2, p0, Lo/onStart;->onRelationshipValidationResult:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 13096
    iget-object v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v3, :cond_2

    .line 13097
    iget-object v0, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    :cond_2
    throw v1
.end method

.method public final onNavigationEvent(Ljava/lang/String;J)I
    .locals 2

    .line 329
    iget-object v0, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 330
    iget-object v0, p0, Lo/onStart;->asBinder:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    const/4 v1, 0x1

    .line 332
    invoke-interface {v0, v1, p2, p3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 335
    invoke-interface {v0, p2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 337
    :cond_0
    invoke-interface {v0, p2, p1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 339
    :goto_0
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 13351
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 13352
    iget-object p2, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p2

    .line 13353
    iget-object p1, p1, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {p1, p2}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 13354
    invoke-interface {p2}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 p1, 0x0

    .line 341
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    move-result p2

    .line 342
    iget-object p3, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 13395
    iget-object p3, p3, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p3}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p3

    invoke-interface {p3}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 345
    iget-object p3, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {p3}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 346
    iget-object p3, p0, Lo/onStart;->asBinder:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 14096
    iget-object v1, p3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v1, :cond_1

    .line 14097
    iget-object p3, p3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return p2

    :catchall_0
    move-exception p2

    .line 345
    iget-object p3, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {p3}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 346
    iget-object p3, p0, Lo/onStart;->asBinder:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 15096
    iget-object v1, p3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v1, :cond_2

    .line 15097
    iget-object p3, p3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 347
    :cond_2
    throw p2
.end method

.method public final onNavigationEvent()Ljava/util/List;
    .locals 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/onDestroy;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x0

    const-string v2, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 ORDER BY period_start_time"

    .line 1559
    invoke-static {v2, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v2

    .line 1560
    iget-object v3, v1, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 1561
    iget-object v3, v1, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 33323
    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 33324
    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 33328
    iget-object v3, v3, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v3}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v3

    invoke-interface {v3, v2}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v4, "required_network_type"

    .line 1563
    invoke-static {v3, v4}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "requires_charging"

    .line 1564
    invoke-static {v3, v5}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    .line 1565
    invoke-static {v3, v6}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    .line 1566
    invoke-static {v3, v7}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    .line 1567
    invoke-static {v3, v8}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    .line 1568
    invoke-static {v3, v9}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    .line 1569
    invoke-static {v3, v10}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    .line 1570
    invoke-static {v3, v11}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 1571
    invoke-static {v3, v12}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    .line 1572
    invoke-static {v3, v13}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    .line 1573
    invoke-static {v3, v14}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    .line 1574
    invoke-static {v3, v15}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "input"

    .line 1575
    invoke-static {v3, v0}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v1, "output"

    .line 1576
    invoke-static {v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "initial_delay"

    .line 1577
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "interval_duration"

    .line 1578
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "flex_duration"

    .line 1579
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "run_attempt_count"

    .line 1580
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "backoff_policy"

    .line 1581
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "backoff_delay_duration"

    .line 1582
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "period_start_time"

    .line 1583
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "minimum_retention_duration"

    .line 1584
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "schedule_requested_at"

    .line 1585
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    const-string v2, "run_in_foreground"

    .line 1586
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v26, v2

    .line 1587
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v27, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1591
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v28, v12

    .line 1593
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v29, v14

    .line 1595
    new-instance v14, Lo/getErrorCode;

    invoke-direct {v14}, Lo/getErrorCode;-><init>()V

    .line 1598
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    move/from16 v31, v4

    .line 1599
    invoke-static/range {v30 .. v30}, Lo/invalidateOptionsMenu;->extraCallback(I)Lo/addCustomAction;

    move-result-object v4

    .line 34114
    iput-object v4, v14, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    .line 1603
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v30, 0x1

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 34130
    :goto_1
    iput-boolean v4, v14, Lo/getErrorCode;->ICustomTabsCallback:Z

    .line 1608
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 34148
    :goto_2
    iput-boolean v4, v14, Lo/getErrorCode;->onMessageChannelReady:Z

    .line 1613
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    .line 34164
    :goto_3
    iput-boolean v4, v14, Lo/getErrorCode;->onPostMessage:Z

    .line 1618
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    .line 34180
    :goto_4
    iput-boolean v4, v14, Lo/getErrorCode;->ICustomTabsCallback$Stub:Z

    move/from16 v32, v5

    .line 1622
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 34198
    iput-wide v4, v14, Lo/getErrorCode;->asBinder:J

    .line 1625
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 34216
    iput-wide v4, v14, Lo/getErrorCode;->asInterface:J

    .line 1629
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1630
    invoke-static {v4}, Lo/invalidateOptionsMenu;->onNavigationEvent([B)Lo/getErrorMessage;

    move-result-object v4

    .line 34226
    iput-object v4, v14, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    .line 1632
    new-instance v4, Lo/onDestroy;

    invoke-direct {v4, v1, v12}, Lo/onDestroy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1634
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1635
    invoke-static {v1}, Lo/invalidateOptionsMenu;->onPostMessage(I)Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v1

    iput-object v1, v4, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 1636
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lo/onDestroy;->onPostMessage:Ljava/lang/String;

    .line 1638
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1639
    invoke-static {v1}, Lo/PlaybackStateCompat$Builder;->ICustomTabsCallback([B)Lo/PlaybackStateCompat$Builder;

    move-result-object v1

    iput-object v1, v4, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    move/from16 v1, v27

    .line 1641
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 1642
    invoke-static {v5}, Lo/PlaybackStateCompat$Builder;->ICustomTabsCallback([B)Lo/PlaybackStateCompat$Builder;

    move-result-object v5

    iput-object v5, v4, Lo/onDestroy;->ICustomTabsCallback$Stub:Lo/PlaybackStateCompat$Builder;

    move v12, v0

    move/from16 v27, v1

    move/from16 v5, v17

    .line 1643
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->onTransact:J

    move/from16 v17, v5

    move v1, v6

    move/from16 v0, v18

    .line 1644
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lo/onDestroy;->onRelationshipValidationResult:J

    move/from16 v18, v0

    move v6, v1

    move/from16 v5, v19

    .line 1645
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->asBinder:J

    move/from16 v0, v20

    .line 1646
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v4, Lo/onDestroy;->getInterfaceDescriptor:I

    move/from16 v1, v21

    .line 1648
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    move/from16 v20, v0

    .line 1649
    invoke-static/range {v19 .. v19}, Lo/invalidateOptionsMenu;->onMessageChannelReady(I)Lo/getPlaybackSpeed;

    move-result-object v0

    iput-object v0, v4, Lo/onDestroy;->ICustomTabsService:Lo/getPlaybackSpeed;

    move/from16 v19, v5

    move/from16 v21, v6

    move/from16 v0, v22

    .line 1650
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lo/onDestroy;->ICustomTabsCallback$Stub$Proxy:J

    move/from16 v22, v0

    move v6, v1

    move/from16 v5, v23

    .line 1651
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->newSession:J

    move/from16 v23, v5

    move v1, v6

    move/from16 v0, v24

    .line 1652
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lo/onDestroy;->mayLaunchUrl:J

    move/from16 v24, v0

    move v6, v1

    move/from16 v5, v25

    .line 1653
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->extraCommand:J

    move/from16 v0, v26

    .line 1655
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    .line 1656
    :goto_5
    iput-boolean v1, v4, Lo/onDestroy;->requestPostMessageChannel:Z

    .line 1657
    iput-object v14, v4, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 1658
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v26, v0

    move/from16 v25, v5

    move v0, v12

    move/from16 v12, v28

    move/from16 v14, v29

    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v33, v21

    move/from16 v21, v6

    move/from16 v6, v33

    goto/16 :goto_0

    .line 1662
    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1663
    invoke-virtual/range {v16 .. v16}, Lo/setRccState;->onNavigationEvent()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 1662
    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1663
    invoke-virtual/range {v16 .. v16}, Lo/setRccState;->onNavigationEvent()V

    .line 1664
    throw v0
.end method

.method public final onNavigationEvent(J)Ljava/util/List;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lo/onDestroy;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE period_start_time >= ? AND state IN (2, 3, 5) ORDER BY period_start_time DESC"

    .line 1892
    invoke-static {v2, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v2

    .line 38239
    iget-object v3, v2, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v4, 0x2

    aput v4, v3, v0

    .line 38240
    iget-object v3, v2, Lo/setRccState;->onMessageChannelReady:[J

    aput-wide p1, v3, v0

    .line 1895
    iget-object v3, v1, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 1896
    iget-object v3, v1, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 39323
    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 39324
    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 39328
    iget-object v3, v3, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v3}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v3

    invoke-interface {v3, v2}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v4, "required_network_type"

    .line 1898
    invoke-static {v3, v4}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "requires_charging"

    .line 1899
    invoke-static {v3, v5}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    .line 1900
    invoke-static {v3, v6}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    .line 1901
    invoke-static {v3, v7}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    .line 1902
    invoke-static {v3, v8}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    .line 1903
    invoke-static {v3, v9}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    .line 1904
    invoke-static {v3, v10}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    .line 1905
    invoke-static {v3, v11}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 1906
    invoke-static {v3, v12}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    .line 1907
    invoke-static {v3, v13}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    .line 1908
    invoke-static {v3, v14}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    .line 1909
    invoke-static {v3, v15}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "input"

    .line 1910
    invoke-static {v3, v0}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v1, "output"

    .line 1911
    invoke-static {v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "initial_delay"

    .line 1912
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "interval_duration"

    .line 1913
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p2, v2

    const-string v2, "flex_duration"

    .line 1914
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "run_attempt_count"

    .line 1915
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "backoff_policy"

    .line 1916
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "backoff_delay_duration"

    .line 1917
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "period_start_time"

    .line 1918
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "minimum_retention_duration"

    .line 1919
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "schedule_requested_at"

    .line 1920
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "run_in_foreground"

    .line 1921
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    .line 1922
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v25, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1923
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1926
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v26, v12

    .line 1928
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v27, v14

    .line 1930
    new-instance v14, Lo/getErrorCode;

    invoke-direct {v14}, Lo/getErrorCode;-><init>()V

    .line 1933
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    move/from16 v29, v4

    .line 1934
    invoke-static/range {v28 .. v28}, Lo/invalidateOptionsMenu;->extraCallback(I)Lo/addCustomAction;

    move-result-object v4

    .line 40114
    iput-object v4, v14, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    .line 1938
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v28, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 40130
    :goto_1
    iput-boolean v4, v14, Lo/getErrorCode;->ICustomTabsCallback:Z

    .line 1943
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 40148
    :goto_2
    iput-boolean v4, v14, Lo/getErrorCode;->onMessageChannelReady:Z

    .line 1948
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    .line 40164
    :goto_3
    iput-boolean v4, v14, Lo/getErrorCode;->onPostMessage:Z

    .line 1953
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    .line 40180
    :goto_4
    iput-boolean v4, v14, Lo/getErrorCode;->ICustomTabsCallback$Stub:Z

    move/from16 v30, v5

    .line 1957
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 40198
    iput-wide v4, v14, Lo/getErrorCode;->asBinder:J

    .line 1960
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 40216
    iput-wide v4, v14, Lo/getErrorCode;->asInterface:J

    .line 1964
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1965
    invoke-static {v4}, Lo/invalidateOptionsMenu;->onNavigationEvent([B)Lo/getErrorMessage;

    move-result-object v4

    .line 40226
    iput-object v4, v14, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    .line 1967
    new-instance v4, Lo/onDestroy;

    invoke-direct {v4, v1, v12}, Lo/onDestroy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1970
    invoke-static {v1}, Lo/invalidateOptionsMenu;->onPostMessage(I)Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v1

    iput-object v1, v4, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 1971
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lo/onDestroy;->onPostMessage:Ljava/lang/String;

    .line 1973
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1974
    invoke-static {v1}, Lo/PlaybackStateCompat$Builder;->ICustomTabsCallback([B)Lo/PlaybackStateCompat$Builder;

    move-result-object v1

    iput-object v1, v4, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    move/from16 v1, v25

    .line 1976
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 1977
    invoke-static {v5}, Lo/PlaybackStateCompat$Builder;->ICustomTabsCallback([B)Lo/PlaybackStateCompat$Builder;

    move-result-object v5

    iput-object v5, v4, Lo/onDestroy;->ICustomTabsCallback$Stub:Lo/PlaybackStateCompat$Builder;

    move/from16 v5, p1

    move/from16 p1, v0

    move/from16 v25, v1

    .line 1978
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->onTransact:J

    move/from16 v0, p2

    move v1, v5

    move/from16 p2, v6

    .line 1979
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lo/onDestroy;->onRelationshipValidationResult:J

    move v6, v0

    move v12, v1

    move/from16 v5, v17

    .line 1980
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->asBinder:J

    move/from16 v0, v18

    .line 1981
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v4, Lo/onDestroy;->getInterfaceDescriptor:I

    move/from16 v1, v19

    .line 1983
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    move/from16 v18, v0

    .line 1984
    invoke-static/range {v17 .. v17}, Lo/invalidateOptionsMenu;->onMessageChannelReady(I)Lo/getPlaybackSpeed;

    move-result-object v0

    iput-object v0, v4, Lo/onDestroy;->ICustomTabsService:Lo/getPlaybackSpeed;

    move/from16 v17, v5

    move/from16 v19, v6

    move/from16 v0, v20

    .line 1985
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lo/onDestroy;->ICustomTabsCallback$Stub$Proxy:J

    move/from16 v20, v0

    move v6, v1

    move/from16 v5, v21

    .line 1986
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->newSession:J

    move/from16 v21, v5

    move v1, v6

    move/from16 v0, v22

    .line 1987
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lo/onDestroy;->mayLaunchUrl:J

    move/from16 v22, v0

    move v6, v1

    move/from16 v5, v23

    .line 1988
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->extraCommand:J

    move/from16 v0, v24

    .line 1990
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    .line 1991
    :goto_5
    iput-boolean v1, v4, Lo/onDestroy;->requestPostMessageChannel:Z

    .line 1992
    iput-object v14, v4, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 1993
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v24, v0

    move/from16 v23, v5

    move/from16 v14, v27

    move/from16 v4, v29

    move/from16 v5, v30

    move/from16 v0, p1

    move/from16 p1, v12

    move/from16 v12, v26

    move/from16 v31, v6

    move/from16 v6, p2

    move/from16 p2, v19

    move/from16 v19, v31

    goto/16 :goto_0

    .line 1997
    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1998
    invoke-virtual/range {v16 .. v16}, Lo/setRccState;->onNavigationEvent()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 1997
    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1998
    invoke-virtual/range {v16 .. v16}, Lo/setRccState;->onNavigationEvent()V

    .line 1999
    throw v0
.end method

.method public final onPostMessage()I
    .locals 5

    .line 352
    iget-object v0, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 353
    iget-object v0, p0, Lo/onStart;->ICustomTabsCallback$Stub:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    .line 354
    iget-object v1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 15351
    invoke-virtual {v1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 15352
    iget-object v2, v1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    .line 15353
    iget-object v1, v1, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v1, v2}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 15354
    invoke-interface {v2}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 v1, 0x0

    .line 356
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    move-result v2

    .line 357
    iget-object v3, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 15395
    iget-object v3, v3, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v3}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v3

    invoke-interface {v3}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    iget-object v3, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 361
    iget-object v3, p0, Lo/onStart;->ICustomTabsCallback$Stub:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 16096
    iget-object v4, v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v4, :cond_0

    .line 16097
    iget-object v0, v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return v2

    :catchall_0
    move-exception v2

    .line 360
    iget-object v3, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 361
    iget-object v3, p0, Lo/onStart;->ICustomTabsCallback$Stub:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 17096
    iget-object v4, v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v4, :cond_1

    .line 17097
    iget-object v0, v3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 362
    :cond_1
    throw v2
.end method

.method public final onPostMessage(Ljava/lang/String;)I
    .locals 4

    .line 287
    iget-object v0, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 288
    iget-object v0, p0, Lo/onStart;->asInterface:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 291
    invoke-interface {v0, v1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 293
    :cond_0
    invoke-interface {v0, v1, p1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 295
    :goto_0
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 9351
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 9352
    iget-object v1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 9353
    iget-object p1, p1, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {p1, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 9354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 p1, 0x0

    .line 297
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    move-result v1

    .line 298
    iget-object v2, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 9395
    iget-object v2, v2, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v2

    invoke-interface {v2}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    iget-object v2, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 302
    iget-object v2, p0, Lo/onStart;->asInterface:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 10096
    iget-object v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v3, :cond_1

    .line 10097
    iget-object v0, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return v1

    :catchall_0
    move-exception v1

    .line 301
    iget-object v2, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 302
    iget-object v2, p0, Lo/onStart;->asInterface:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 11096
    iget-object v3, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v3, :cond_2

    .line 11097
    iget-object v0, v2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 303
    :cond_2
    throw v1
.end method

.method public final onPostMessage(I)Ljava/util/List;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lo/onDestroy;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v0, 0x1

    const-string v2, "SELECT `required_network_type`, `requires_charging`, `requires_device_idle`, `requires_battery_not_low`, `requires_storage_not_low`, `trigger_content_update_delay`, `trigger_max_content_delay`, `content_uri_triggers`, `WorkSpec`.`id` AS `id`, `WorkSpec`.`state` AS `state`, `WorkSpec`.`worker_class_name` AS `worker_class_name`, `WorkSpec`.`input_merger_class_name` AS `input_merger_class_name`, `WorkSpec`.`input` AS `input`, `WorkSpec`.`output` AS `output`, `WorkSpec`.`initial_delay` AS `initial_delay`, `WorkSpec`.`interval_duration` AS `interval_duration`, `WorkSpec`.`flex_duration` AS `flex_duration`, `WorkSpec`.`run_attempt_count` AS `run_attempt_count`, `WorkSpec`.`backoff_policy` AS `backoff_policy`, `WorkSpec`.`backoff_delay_duration` AS `backoff_delay_duration`, `WorkSpec`.`period_start_time` AS `period_start_time`, `WorkSpec`.`minimum_retention_duration` AS `minimum_retention_duration`, `WorkSpec`.`schedule_requested_at` AS `schedule_requested_at`, `WorkSpec`.`run_in_foreground` AS `run_in_foreground` FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY period_start_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND state NOT IN (2, 3, 5))"

    .line 1446
    invoke-static {v2, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v2

    move/from16 v3, p1

    int-to-long v3, v3

    .line 30239
    iget-object v5, v2, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v6, 0x2

    aput v6, v5, v0

    .line 30240
    iget-object v5, v2, Lo/setRccState;->onMessageChannelReady:[J

    aput-wide v3, v5, v0

    .line 1449
    iget-object v3, v1, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 1450
    iget-object v3, v1, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 31323
    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 31324
    invoke-virtual {v3}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 31328
    iget-object v3, v3, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v3}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v3

    invoke-interface {v3, v2}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    const-string v4, "required_network_type"

    .line 1452
    invoke-static {v3, v4}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    const-string v5, "requires_charging"

    .line 1453
    invoke-static {v3, v5}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    const-string v6, "requires_device_idle"

    .line 1454
    invoke-static {v3, v6}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    const-string v7, "requires_battery_not_low"

    .line 1455
    invoke-static {v3, v7}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    const-string v8, "requires_storage_not_low"

    .line 1456
    invoke-static {v3, v8}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    const-string v9, "trigger_content_update_delay"

    .line 1457
    invoke-static {v3, v9}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    const-string v10, "trigger_max_content_delay"

    .line 1458
    invoke-static {v3, v10}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    const-string v11, "content_uri_triggers"

    .line 1459
    invoke-static {v3, v11}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    const-string v12, "id"

    .line 1460
    invoke-static {v3, v12}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    const-string v13, "state"

    .line 1461
    invoke-static {v3, v13}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    const-string v14, "worker_class_name"

    .line 1462
    invoke-static {v3, v14}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    const-string v15, "input_merger_class_name"

    .line 1463
    invoke-static {v3, v15}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    const-string v0, "input"

    .line 1464
    invoke-static {v3, v0}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    const-string v1, "output"

    .line 1465
    invoke-static {v3, v1}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v16, v2

    :try_start_1
    const-string v2, "initial_delay"

    .line 1466
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 p1, v2

    const-string v2, "interval_duration"

    .line 1467
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v17, v2

    const-string v2, "flex_duration"

    .line 1468
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v18, v2

    const-string v2, "run_attempt_count"

    .line 1469
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v19, v2

    const-string v2, "backoff_policy"

    .line 1470
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v20, v2

    const-string v2, "backoff_delay_duration"

    .line 1471
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v21, v2

    const-string v2, "period_start_time"

    .line 1472
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v22, v2

    const-string v2, "minimum_retention_duration"

    .line 1473
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v23, v2

    const-string v2, "schedule_requested_at"

    .line 1474
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v24, v2

    const-string v2, "run_in_foreground"

    .line 1475
    invoke-static {v3, v2}, Lo/extraCallback;->onPostMessage(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    move/from16 v25, v2

    .line 1476
    new-instance v2, Ljava/util/ArrayList;

    move/from16 v26, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1477
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1480
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v27, v12

    .line 1482
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move/from16 v28, v14

    .line 1484
    new-instance v14, Lo/getErrorCode;

    invoke-direct {v14}, Lo/getErrorCode;-><init>()V

    .line 1487
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    move/from16 v30, v4

    .line 1488
    invoke-static/range {v29 .. v29}, Lo/invalidateOptionsMenu;->extraCallback(I)Lo/addCustomAction;

    move-result-object v4

    .line 32114
    iput-object v4, v14, Lo/getErrorCode;->onNavigationEvent:Lo/addCustomAction;

    .line 1492
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/16 v29, 0x0

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    .line 32130
    :goto_1
    iput-boolean v4, v14, Lo/getErrorCode;->ICustomTabsCallback:Z

    .line 1497
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 32148
    :goto_2
    iput-boolean v4, v14, Lo/getErrorCode;->onMessageChannelReady:Z

    .line 1502
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_3

    :cond_2
    const/4 v4, 0x0

    .line 32164
    :goto_3
    iput-boolean v4, v14, Lo/getErrorCode;->onPostMessage:Z

    .line 1507
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_4

    :cond_3
    const/4 v4, 0x0

    .line 32180
    :goto_4
    iput-boolean v4, v14, Lo/getErrorCode;->ICustomTabsCallback$Stub:Z

    move/from16 v31, v5

    .line 1511
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 32198
    iput-wide v4, v14, Lo/getErrorCode;->asBinder:J

    .line 1514
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 32216
    iput-wide v4, v14, Lo/getErrorCode;->asInterface:J

    .line 1518
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 1519
    invoke-static {v4}, Lo/invalidateOptionsMenu;->onNavigationEvent([B)Lo/getErrorMessage;

    move-result-object v4

    .line 32226
    iput-object v4, v14, Lo/getErrorCode;->onRelationshipValidationResult:Lo/getErrorMessage;

    .line 1521
    new-instance v4, Lo/onDestroy;

    invoke-direct {v4, v1, v12}, Lo/onDestroy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 1524
    invoke-static {v1}, Lo/invalidateOptionsMenu;->onPostMessage(I)Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    move-result-object v1

    iput-object v1, v4, Lo/onDestroy;->onMessageChannelReady:Lo/PlaybackStateCompat$CustomAction$onPostMessage;

    .line 1525
    invoke-interface {v3, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v4, Lo/onDestroy;->onPostMessage:Ljava/lang/String;

    .line 1527
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 1528
    invoke-static {v1}, Lo/PlaybackStateCompat$Builder;->ICustomTabsCallback([B)Lo/PlaybackStateCompat$Builder;

    move-result-object v1

    iput-object v1, v4, Lo/onDestroy;->asInterface:Lo/PlaybackStateCompat$Builder;

    move/from16 v1, v26

    .line 1530
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    .line 1531
    invoke-static {v5}, Lo/PlaybackStateCompat$Builder;->ICustomTabsCallback([B)Lo/PlaybackStateCompat$Builder;

    move-result-object v5

    iput-object v5, v4, Lo/onDestroy;->ICustomTabsCallback$Stub:Lo/PlaybackStateCompat$Builder;

    move/from16 v5, p1

    move/from16 p1, v0

    move/from16 v26, v1

    .line 1532
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->onTransact:J

    move v12, v5

    move v1, v6

    move/from16 v0, v17

    .line 1533
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lo/onDestroy;->onRelationshipValidationResult:J

    move/from16 v17, v0

    move v6, v1

    move/from16 v5, v18

    .line 1534
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->asBinder:J

    move/from16 v0, v19

    .line 1535
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v4, Lo/onDestroy;->getInterfaceDescriptor:I

    move/from16 v1, v20

    .line 1537
    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v19, v0

    .line 1538
    invoke-static/range {v18 .. v18}, Lo/invalidateOptionsMenu;->onMessageChannelReady(I)Lo/getPlaybackSpeed;

    move-result-object v0

    iput-object v0, v4, Lo/onDestroy;->ICustomTabsService:Lo/getPlaybackSpeed;

    move/from16 v18, v5

    move/from16 v20, v6

    move/from16 v0, v21

    .line 1539
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lo/onDestroy;->ICustomTabsCallback$Stub$Proxy:J

    move/from16 v21, v0

    move v6, v1

    move/from16 v5, v22

    .line 1540
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->newSession:J

    move/from16 v22, v5

    move v1, v6

    move/from16 v0, v23

    .line 1541
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v4, Lo/onDestroy;->mayLaunchUrl:J

    move/from16 v23, v0

    move v6, v1

    move/from16 v5, v24

    .line 1542
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v4, Lo/onDestroy;->extraCommand:J

    move/from16 v0, v25

    .line 1544
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    .line 1545
    :goto_5
    iput-boolean v1, v4, Lo/onDestroy;->requestPostMessageChannel:Z

    .line 1546
    iput-object v14, v4, Lo/onDestroy;->warmup:Lo/getErrorCode;

    .line 1547
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v25, v0

    move/from16 v24, v5

    move/from16 v14, v28

    move/from16 v4, v30

    move/from16 v5, v31

    move/from16 v0, p1

    move/from16 p1, v12

    move/from16 v12, v27

    move/from16 v32, v20

    move/from16 v20, v6

    move/from16 v6, v32

    goto/16 :goto_0

    .line 1551
    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1552
    invoke-virtual/range {v16 .. v16}, Lo/setRccState;->onNavigationEvent()V

    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v16, v2

    .line 1551
    :goto_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1552
    invoke-virtual/range {v16 .. v16}, Lo/setRccState;->onNavigationEvent()V

    .line 1553
    throw v0
.end method

.method public final onPostMessage(Ljava/lang/String;J)V
    .locals 2

    .line 265
    iget-object v0, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 266
    iget-object v0, p0, Lo/onStart;->ICustomTabsCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    invoke-virtual {v0}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->onMessageChannelReady()Lo/getDrawerToggleDelegate$onNavigationEvent;

    move-result-object v0

    const/4 v1, 0x1

    .line 268
    invoke-interface {v0, v1, p2, p3}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(IJ)V

    const/4 p2, 0x2

    if-nez p1, :cond_0

    .line 271
    invoke-interface {v0, p2}, Lo/getDrawerToggleDelegate$onNavigationEvent;->ICustomTabsCallback(I)V

    goto :goto_0

    .line 273
    :cond_0
    invoke-interface {v0, p2, p1}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onNavigationEvent(ILjava/lang/String;)V

    .line 275
    :goto_0
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 7351
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 7352
    iget-object p2, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p2

    .line 7353
    iget-object p1, p1, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {p1, p2}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 7354
    invoke-interface {p2}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    const/4 p1, 0x0

    .line 277
    :try_start_0
    invoke-interface {v0}, Lo/getDrawerToggleDelegate$onNavigationEvent;->onPostMessage()I

    .line 278
    iget-object p2, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 7395
    iget-object p2, p2, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p2}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p2

    invoke-interface {p2}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    iget-object p2, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {p2}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 281
    iget-object p2, p0, Lo/onStart;->ICustomTabsCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 8096
    iget-object p3, p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, p3, :cond_1

    .line 8097
    iget-object p2, p2, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    return-void

    :catchall_0
    move-exception p2

    .line 280
    iget-object p3, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {p3}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 281
    iget-object p3, p0, Lo/onStart;->ICustomTabsCallback:Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;

    .line 9096
    iget-object v1, p3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->asInterface:Lo/getDrawerToggleDelegate$onNavigationEvent;

    if-ne v0, v1, :cond_2

    .line 9097
    iget-object p3, p3, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$extraCallback;->ICustomTabsCallback$Stub:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p3, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 282
    :cond_2
    throw p2
.end method

.method public final onPostMessage(Lo/onDestroy;)V
    .locals 2

    .line 205
    iget-object v0, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 206
    iget-object v0, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 2351
    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 2352
    iget-object v1, v0, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {v1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object v1

    .line 2353
    iget-object v0, v0, Lo/setCurrentControllerInfo;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImpl;

    invoke-virtual {v0, v1}, Lo/MediaSessionCompat$MediaSessionImpl;->onNavigationEvent(Lo/MediaControllerCompatApi21$Callback;)V

    .line 2354
    invoke-interface {v1}, Lo/MediaControllerCompatApi21$Callback;->onNavigationEvent()V

    .line 208
    :try_start_0
    iget-object v0, p0, Lo/onStart;->extraCallback:Lo/MediaSessionCompat$Callback$StubApi23;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$Callback$StubApi23;->onNavigationEvent(Ljava/lang/Object;)V

    .line 209
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 2395
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1}, Lo/MediaControllerCompatApi21$Callback;->extraCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {v0}, Lo/setCurrentControllerInfo;->onMessageChannelReady()V

    .line 212
    throw p1
.end method

.method public final onTransact(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/PlaybackStateCompat$Builder;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)"

    .line 1346
    invoke-static {v1, v0}, Lo/setRccState;->onMessageChannelReady(Ljava/lang/String;I)Lo/setRccState;

    move-result-object v1

    if-nez p1, :cond_0

    .line 23234
    iget-object p1, v1, Lo/setRccState;->ICustomTabsCallback:[I

    aput v0, p1, v0

    goto :goto_0

    .line 23251
    :cond_0
    iget-object v2, v1, Lo/setRccState;->ICustomTabsCallback:[I

    const/4 v3, 0x4

    aput v3, v2, v0

    .line 23252
    iget-object v2, v1, Lo/setRccState;->onPostMessage:[Ljava/lang/String;

    aput-object p1, v2, v0

    .line 1353
    :goto_0
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 1354
    iget-object p1, p0, Lo/onStart;->onPostMessage:Lo/setCurrentControllerInfo;

    .line 24323
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->ICustomTabsCallback()V

    .line 24324
    invoke-virtual {p1}, Lo/setCurrentControllerInfo;->onPostMessage()V

    .line 24328
    iget-object p1, p1, Lo/setCurrentControllerInfo;->ICustomTabsCallback:Lo/update;

    invoke-interface {p1}, Lo/update;->ICustomTabsCallback()Lo/MediaControllerCompatApi21$Callback;

    move-result-object p1

    invoke-interface {p1, v1}, Lo/MediaControllerCompatApi21$Callback;->onPostMessage(Landroidx/preference/PreferenceGroup$onMessageChannelReady;)Landroid/database/Cursor;

    move-result-object p1

    .line 1356
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 1357
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 1360
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1361
    invoke-static {v2}, Lo/PlaybackStateCompat$Builder;->ICustomTabsCallback([B)Lo/PlaybackStateCompat$Builder;

    move-result-object v2

    .line 1362
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1366
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1367
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 1366
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1367
    invoke-virtual {v1}, Lo/setRccState;->onNavigationEvent()V

    .line 1368
    throw v0
.end method
