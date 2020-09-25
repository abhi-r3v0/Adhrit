.class final Lo/zzzv;
.super Lo/setHintTextColor;
.source ""


# static fields
.field private static final ICustomTabsCallback:[Ljava/lang/String;

.field private static final ICustomTabsCallback$Stub:[Ljava/lang/String;

.field private static final asBinder:[Ljava/lang/String;

.field private static final onMessageChannelReady:[Ljava/lang/String;

.field private static final onNavigationEvent:[Ljava/lang/String;

.field private static final onPostMessage:[Ljava/lang/String;

.field private static final onRelationshipValidationResult:[Ljava/lang/String;

.field private static final onTransact:[Ljava/lang/String;


# instance fields
.field private final ICustomTabsCallback$Stub$Proxy:Lo/setBoxCornerRadiiResources;

.field private final asInterface:Lo/zzco;


# direct methods
.method static constructor <clinit>()V
    .locals 53

    const-string v0, "last_bundled_timestamp"

    const-string v1, "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;"

    const-string v2, "last_bundled_day"

    const-string v3, "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;"

    const-string v4, "last_sampled_complex_event_id"

    const-string v5, "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;"

    const-string v6, "last_sampling_rate"

    const-string v7, "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;"

    const-string v8, "last_exempt_from_sampling"

    const-string v9, "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;"

    const-string v10, "current_session_count"

    const-string v11, "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"

    .line 1706
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/zzzv;->onMessageChannelReady:[Ljava/lang/String;

    const-string v0, "origin"

    const-string v1, "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"

    .line 1707
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/zzzv;->onNavigationEvent:[Ljava/lang/String;

    const-string v1, "app_version"

    const-string v2, "ALTER TABLE apps ADD COLUMN app_version TEXT;"

    const-string v3, "app_store"

    const-string v4, "ALTER TABLE apps ADD COLUMN app_store TEXT;"

    const-string v5, "gmp_version"

    const-string v6, "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;"

    const-string v7, "dev_cert_hash"

    const-string v8, "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;"

    const-string v9, "measurement_enabled"

    const-string v10, "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;"

    const-string v11, "last_bundle_start_timestamp"

    const-string v12, "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;"

    const-string v13, "day"

    const-string v14, "ALTER TABLE apps ADD COLUMN day INTEGER;"

    const-string v15, "daily_public_events_count"

    const-string v16, "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;"

    const-string v17, "daily_events_count"

    const-string v18, "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;"

    const-string v19, "daily_conversions_count"

    const-string v20, "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;"

    const-string v21, "remote_config"

    const-string v22, "ALTER TABLE apps ADD COLUMN remote_config BLOB;"

    const-string v23, "config_fetched_time"

    const-string v24, "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;"

    const-string v25, "failed_config_fetch_time"

    const-string v26, "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;"

    const-string v27, "app_version_int"

    const-string v28, "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;"

    const-string v29, "firebase_instance_id"

    const-string v30, "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;"

    const-string v31, "daily_error_events_count"

    const-string v32, "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;"

    const-string v33, "daily_realtime_events_count"

    const-string v34, "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;"

    const-string v35, "health_monitor_sample"

    const-string v36, "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;"

    const-string v37, "android_id"

    const-string v38, "ALTER TABLE apps ADD COLUMN android_id INTEGER;"

    const-string v39, "adid_reporting_enabled"

    const-string v40, "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;"

    const-string v41, "ssaid_reporting_enabled"

    const-string v42, "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;"

    const-string v43, "admob_app_id"

    const-string v44, "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;"

    const-string v45, "linked_admob_app_id"

    const-string v46, "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;"

    const-string v47, "dynamite_version"

    const-string v48, "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;"

    const-string v49, "safelisted_events"

    const-string v50, "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;"

    const-string v51, "ga_app_id"

    const-string v52, "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;"

    .line 1708
    filled-new-array/range {v1 .. v52}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/zzzv;->ICustomTabsCallback:[Ljava/lang/String;

    const-string v0, "realtime"

    const-string v1, "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"

    .line 1709
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/zzzv;->onPostMessage:[Ljava/lang/String;

    const-string v0, "has_realtime"

    const-string v1, "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;"

    const-string v2, "retry_count"

    const-string v3, "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"

    .line 1710
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/zzzv;->onRelationshipValidationResult:[Ljava/lang/String;

    const-string v0, "session_scoped"

    const-string v1, "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"

    .line 1711
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lo/zzzv;->ICustomTabsCallback$Stub:[Ljava/lang/String;

    const-string v1, "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"

    .line 1712
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/zzzv;->asBinder:[Ljava/lang/String;

    const-string v0, "previous_install_count"

    const-string v1, "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"

    .line 1713
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lo/zzzv;->onTransact:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lo/setHint;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lo/setHintTextColor;-><init>(Lo/setHint;)V

    .line 2
    new-instance p1, Lo/setBoxCornerRadiiResources;

    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/setBoxCornerRadiiResources;-><init>(Lo/component15;)V

    iput-object p1, p0, Lo/zzzv;->ICustomTabsCallback$Stub$Proxy:Lo/setBoxCornerRadiiResources;

    .line 5
    new-instance p1, Lo/zzco;

    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement.db"

    invoke-direct {p1, p0, v0, v1}, Lo/zzco;-><init>(Lo/zzzv;Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lo/zzzv;->asInterface:Lo/zzco;

    return-void
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)J
    .locals 3

    .line 17
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 19
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 21
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 23
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide p1

    .line 25
    :cond_1
    :try_start_1
    new-instance p2, Landroid/database/sqlite/SQLiteException;

    const-string v0, "Database returned empty set"

    invoke-direct {p2, v0}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 27
    :try_start_2
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Database error"

    invoke-virtual {v0, v2, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 28
    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v1, :cond_2

    .line 30
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 31
    :cond_2
    throw p1
.end method

.method private final ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 50
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 52
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 53
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 54
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 56
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :cond_1
    if-eqz v1, :cond_2

    .line 60
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 63
    :try_start_1
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p3

    invoke-virtual {p3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p3

    const-string v0, "Database error"

    invoke-virtual {p3, v0, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_3

    .line 66
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 67
    :cond_3
    throw p1
.end method

.method static synthetic INotificationSideChannel()[Ljava/lang/String;
    .locals 1

    .line 1698
    sget-object v0, Lo/zzzv;->onMessageChannelReady:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic INotificationSideChannel$Default()[Ljava/lang/String;
    .locals 1

    .line 1705
    sget-object v0, Lo/zzzv;->onTransact:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic INotificationSideChannel$Stub()[Ljava/lang/String;
    .locals 1

    .line 1703
    sget-object v0, Lo/zzzv;->ICustomTabsCallback$Stub:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic INotificationSideChannel$Stub$Proxy()[Ljava/lang/String;
    .locals 1

    .line 1704
    sget-object v0, Lo/zzzv;->asBinder:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic cancel()[Ljava/lang/String;
    .locals 1

    .line 1700
    sget-object v0, Lo/zzzv;->ICustomTabsCallback:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic cancelAll()[Ljava/lang/String;
    .locals 1

    .line 1699
    sget-object v0, Lo/zzzv;->onNavigationEvent:[Ljava/lang/String;

    return-object v0
.end method

.method private static extraCallback(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1257
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 1258
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1260
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 1261
    :cond_0
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 1262
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    .line 1263
    :cond_1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_2

    .line 1264
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    return-void

    .line 1265
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid value type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final extraCallback(Ljava/lang/String;Ljava/util/List;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 1173
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 1174
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 1175
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1176
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "select count(1) from audience_filter_values where app_id=?"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 1178
    invoke-direct {p0, v2, v4}, Lo/zzzv;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1185
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    .line 1186
    sget-object v6, Lo/zziq;->INotificationSideChannel$Stub:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, p1, v6}, Lo/setStartIconTintList;->onMessageChannelReady(Ljava/lang/String;Lo/setStatusBarForegroundColor;)I

    move-result v2

    const/16 v6, 0x7d0

    .line 1187
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1188
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-long v6, v2

    cmp-long v8, v4, v6

    if-gtz v8, :cond_0

    return v1

    .line 1192
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    .line 1193
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1194
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_2

    .line 1195
    instance-of v7, v6, Ljava/lang/Integer;

    if-nez v7, :cond_1

    goto :goto_1

    .line 1197
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1

    :cond_3
    const-string p2, ","

    .line 1199
    invoke-static {p2, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    add-int/2addr v4, v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "("

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1200
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit16 v4, v4, 0x8c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " order by rowid desc limit -1 offset ?)"

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v4, v5, [Ljava/lang/String;

    aput-object p1, v4, v1

    .line 1201
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    const-string p1, "audience_filter_values"

    .line 1202
    invoke-virtual {v0, p1, p2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_4

    return v3

    :cond_4
    return v1

    :catch_0
    move-exception p2

    .line 1181
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 1182
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    .line 1183
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Database error querying filters. appId"

    invoke-virtual {v0, v2, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method static synthetic getDefaultImpl()[Ljava/lang/String;
    .locals 1

    .line 1702
    sget-object v0, Lo/zzzv;->onPostMessage:[Ljava/lang/String;

    return-object v0
.end method

.method private final onMessageChannelReady(Landroid/database/Cursor;I)Ljava/lang/Object;
    .locals 3

    .line 1267
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getType(I)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    .line 1277
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "Loaded invalid unknown value type, ignoring it"

    invoke-virtual {p1, v0, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1

    .line 1275
    :cond_0
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Loaded invalid blob type value, ignoring it"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-object v1

    .line 1274
    :cond_1
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1273
    :cond_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 1272
    :cond_3
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 1270
    :cond_4
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Loaded invalid null value from database"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic onMessageChannelReady(Lo/zzzv;)Lo/setBoxCornerRadiiResources;
    .locals 0

    .line 1697
    iget-object p0, p0, Lo/zzzv;->ICustomTabsCallback$Stub$Proxy:Lo/setBoxCornerRadiiResources;

    return-object p0
.end method

.method private final onNavigationEvent(Ljava/lang/String;[Ljava/lang/String;J)J
    .locals 2

    .line 32
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    .line 34
    :try_start_0
    invoke-virtual {v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 35
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 36
    invoke-interface {v1, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 38
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide p1

    :cond_1
    if-eqz v1, :cond_2

    .line 42
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-wide p3

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p2

    .line 45
    :try_start_1
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p3

    invoke-virtual {p3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p3

    const-string p4, "Database error"

    invoke-virtual {p3, p4, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 46
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_3

    .line 48
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_3
    throw p1
.end method

.method private final onNavigationEvent(Ljava/lang/String;ILo/cB$onNavigationEvent;)Z
    .locals 5

    .line 922
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 923
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 924
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 925
    invoke-static {p3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    invoke-virtual {p3}, Lo/cB$onNavigationEvent;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 927
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 928
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    .line 929
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 930
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 931
    invoke-virtual {p3}, Lo/cB$onNavigationEvent;->onNavigationEvent()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Lo/cB$onNavigationEvent;->ICustomTabsCallback()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "Event filter had no event name. Audience definition ignored. appId, audienceId, filterId"

    .line 932
    invoke-virtual {v0, v2, p1, p2, p3}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 934
    :cond_1
    invoke-virtual {p3}, Lo/ab$a;->setInternalConnectionCallback()[B

    move-result-object v0

    .line 935
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_id"

    .line 936
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v4, "audience_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 938
    invoke-virtual {p3}, Lo/cB$onNavigationEvent;->onNavigationEvent()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lo/cB$onNavigationEvent;->ICustomTabsCallback()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v2

    :goto_0
    const-string v4, "filter_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 939
    invoke-virtual {p3}, Lo/cB$onNavigationEvent;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p2

    const-string v4, "event_name"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-virtual {p3}, Lo/cB$onNavigationEvent;->ICustomTabsCallback$Stub()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p3}, Lo/cB$onNavigationEvent;->warmup()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v2

    :goto_1
    const-string p3, "session_scoped"

    .line 942
    invoke-virtual {v3, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p2, "data"

    .line 943
    invoke-virtual {v3, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 944
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "event_filters"

    const/4 v0, 0x5

    .line 946
    invoke-virtual {p2, p3, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-nez v0, :cond_4

    .line 948
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 949
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Failed to insert event filter (got -1). appId"

    .line 950
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 953
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p3

    .line 954
    invoke-virtual {p3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p3

    .line 955
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Error storing event filter. appId"

    invoke-virtual {p3, v0, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method private final onPostMessage(Ljava/lang/String;ILo/cB$onPostMessage;)Z
    .locals 5

    .line 958
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 959
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 960
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 961
    invoke-static {p3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    invoke-virtual {p3}, Lo/cB$onPostMessage;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 963
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 964
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    .line 965
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 966
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 967
    invoke-virtual {p3}, Lo/cB$onPostMessage;->onPostMessage()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p3}, Lo/cB$onPostMessage;->ICustomTabsCallback()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v2, "Property filter had no property name. Audience definition ignored. appId, audienceId, filterId"

    .line 968
    invoke-virtual {v0, v2, p1, p2, p3}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    .line 970
    :cond_1
    invoke-virtual {p3}, Lo/ab$a;->setInternalConnectionCallback()[B

    move-result-object v0

    .line 971
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "app_id"

    .line 972
    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v4, "audience_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 974
    invoke-virtual {p3}, Lo/cB$onPostMessage;->onPostMessage()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Lo/cB$onPostMessage;->ICustomTabsCallback()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v2

    :goto_0
    const-string v4, "filter_id"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 975
    invoke-virtual {p3}, Lo/cB$onPostMessage;->onMessageChannelReady()Ljava/lang/String;

    move-result-object p2

    const-string v4, "property_name"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    invoke-virtual {p3}, Lo/cB$onPostMessage;->asInterface()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p3}, Lo/cB$onPostMessage;->asBinder()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v2

    :goto_1
    const-string p3, "session_scoped"

    .line 978
    invoke-virtual {v3, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p2, "data"

    .line 979
    invoke-virtual {v3, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 980
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string p3, "property_filters"

    const/4 v0, 0x5

    .line 982
    invoke-virtual {p2, p3, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p2

    const-wide/16 v2, -0x1

    cmp-long v0, p2, v2

    if-nez v0, :cond_4

    .line 984
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 985
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string p3, "Failed to insert property filter (got -1). appId"

    .line 986
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, p3, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :cond_4
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 990
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p3

    .line 991
    invoke-virtual {p3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p3

    .line 992
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Error storing property filter. appId"

    invoke-virtual {p3, v0, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method static synthetic setDefaultImpl()[Ljava/lang/String;
    .locals 1

    .line 1701
    sget-object v0, Lo/zzzv;->onRelationshipValidationResult:[Ljava/lang/String;

    return-object v0
.end method

.method private final write()Z
    .locals 2

    .line 1694
    invoke-virtual {p0}, Lo/setChipTextResource;->warmup()Landroid/content/Context;

    move-result-object v0

    const-string v1, "google_app_measurement.db"

    .line 1696
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/setStartIconVisible;",
            ">;"
        }
    .end annotation

    .line 461
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 462
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 463
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 465
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "app_id=?"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 468
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, " and origin=?"

    .line 469
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 471
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "*"

    invoke-virtual {p2, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p2, " and name glob ?"

    .line 472
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 474
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lo/zzzv;->extraCallback(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method final ICustomTabsCallback(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lo/cB$onNavigationEvent;",
            ">;>;"
        }
    .end annotation

    .line 1044
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 1045
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    .line 1046
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v9, 0x0

    :try_start_0
    const-string v2, "event_filters"

    const-string v3, "audience_id"

    const-string v4, "data"

    .line 1048
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=?"

    const/4 v10, 0x1

    new-array v5, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object p1, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1049
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1050
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1051
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_0

    .line 1053
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    .line 1055
    :cond_1
    :try_start_1
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1056
    :try_start_2
    invoke-static {}, Lo/cB$onNavigationEvent;->newSession()Lo/cB$onNavigationEvent$extraCallback;

    move-result-object v2

    invoke-static {v2, v1}, Lo/setErrorTextColor;->onPostMessage(Lo/startRecording;[B)Lo/startRecording;

    move-result-object v1

    check-cast v1, Lo/cB$onNavigationEvent$extraCallback;

    invoke-virtual {v1}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v1

    check-cast v1, Lo/fa;

    check-cast v1, Lo/cB$onNavigationEvent;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1063
    :try_start_3
    invoke-virtual {v1}, Lo/cB$onNavigationEvent;->onRelationshipValidationResult()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1064
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1065
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    .line 1067
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1068
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1059
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 1060
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Failed to merge filter. appId"

    .line 1061
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1070
    :cond_3
    :goto_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v1, :cond_1

    if-eqz v9, :cond_4

    .line 1072
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1074
    :try_start_4
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 1075
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Database error querying filters. appId"

    .line 1076
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1077
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v9, :cond_5

    .line 1079
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object p1

    :goto_1
    if-eqz v9, :cond_6

    .line 1082
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1083
    :cond_6
    throw p1
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)Lo/setStartIconVisible;
    .locals 29

    move-object/from16 v7, p2

    .line 395
    invoke-static/range {p1 .. p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 396
    invoke-static/range {p2 .. p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 397
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 398
    invoke-virtual/range {p0 .. p0}, Lo/setHintTextColor;->read()V

    const/4 v8, 0x0

    .line 400
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    const-string v10, "conditional_properties"

    const-string v11, "origin"

    const-string v12, "value"

    const-string v13, "active"

    const-string v14, "trigger_event_name"

    const-string v15, "trigger_timeout"

    const-string v16, "timed_out_event"

    const-string v17, "creation_timestamp"

    const-string v18, "triggered_event"

    const-string v19, "triggered_timestamp"

    const-string v20, "time_to_live"

    const-string v21, "expired_event"

    .line 401
    filled-new-array/range {v11 .. v21}, [Ljava/lang/String;

    move-result-object v11

    const-string v12, "app_id=? and name=?"

    const/4 v0, 0x2

    new-array v13, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v13, v1

    const/4 v2, 0x1

    aput-object v7, v13, v2

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 402
    invoke-virtual/range {v9 .. v16}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 403
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    if-eqz v9, :cond_0

    .line 406
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v8

    .line 408
    :cond_1
    :try_start_2
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v10, p0

    .line 409
    :try_start_3
    invoke-direct {v10, v9, v2}, Lo/zzzv;->onMessageChannelReady(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v5

    .line 410
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_2

    const/16 v20, 0x1

    goto :goto_0

    :cond_2
    const/16 v20, 0x0

    :goto_0
    const/4 v0, 0x3

    .line 411
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/4 v0, 0x4

    .line 412
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 414
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lo/zzir;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1, v2}, Lo/setErrorTextColor;->onPostMessage([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lo/zzir;

    const/4 v0, 0x6

    .line 415
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 417
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lo/zzir;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1, v2}, Lo/setErrorTextColor;->onPostMessage([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v25, v0

    check-cast v25, Lo/zzir;

    const/16 v0, 0x8

    .line 418
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/16 v0, 0x9

    .line 419
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 421
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v0

    const/16 v1, 0xa

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    sget-object v2, Lo/zzir;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v0, v1, v2}, Lo/setErrorTextColor;->onPostMessage([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    move-object/from16 v28, v0

    check-cast v28, Lo/zzir;

    .line 422
    new-instance v17, Lo/setError;

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lo/setError;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 423
    new-instance v0, Lo/setStartIconVisible;

    move-object v14, v0

    move-object/from16 v15, p1

    invoke-direct/range {v14 .. v28}, Lo/setStartIconVisible;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/setError;JZLjava/lang/String;Lo/zzir;JLo/zzir;JLo/zzir;)V

    .line 424
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 425
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 426
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Got multiple records for conditional property, expected one"

    .line 427
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 428
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v4

    invoke-virtual {v4, v7}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 429
    invoke-virtual {v1, v2, v3, v4}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    if-eqz v9, :cond_4

    .line 432
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v10, p0

    move-object v9, v8

    .line 435
    :goto_1
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 436
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Error querying conditional property"

    .line 437
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 438
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v4

    invoke-virtual {v4, v7}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 439
    invoke-virtual {v1, v2, v3, v4, v0}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v9, :cond_5

    .line 441
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v8

    :catchall_2
    move-exception v0

    :goto_2
    move-object v8, v9

    :goto_3
    if-eqz v8, :cond_6

    .line 444
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 445
    :cond_6
    throw v0
.end method

.method public final ICustomTabsCallback(JLjava/lang/String;JZZZZZ)Lo/zzew;
    .locals 14

    .line 668
    invoke-static/range {p3 .. p3}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 669
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 670
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    .line 672
    new-instance v3, Lo/zzew;

    invoke-direct {v3}, Lo/zzew;-><init>()V

    const/4 v4, 0x0

    .line 674
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v13

    const-string v6, "apps"

    const-string v7, "day"

    const-string v8, "daily_events_count"

    const-string v9, "daily_public_events_count"

    const-string v10, "daily_conversions_count"

    const-string v11, "daily_error_events_count"

    const-string v12, "daily_realtime_events_count"

    .line 675
    filled-new-array/range {v7 .. v12}, [Ljava/lang/String;

    move-result-object v7

    const-string v8, "app_id=?"

    new-array v9, v0, [Ljava/lang/String;

    aput-object p3, v9, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v5, v13

    .line 676
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 677
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-nez v5, :cond_1

    .line 678
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 679
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Not updating daily counts, app is not known. appId"

    .line 680
    invoke-static/range {p3 .. p3}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_0

    .line 683
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v3

    .line 685
    :cond_1
    :try_start_1
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v2, v5, p1

    if-nez v2, :cond_2

    .line 687
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lo/zzew;->onPostMessage:J

    const/4 v0, 0x2

    .line 688
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lo/zzew;->extraCallback:J

    const/4 v0, 0x3

    .line 689
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lo/zzew;->onNavigationEvent:J

    const/4 v0, 0x4

    .line 690
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lo/zzew;->ICustomTabsCallback:J

    const/4 v0, 0x5

    .line 691
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    iput-wide v5, v3, Lo/zzew;->onMessageChannelReady:J

    :cond_2
    if-eqz p6, :cond_3

    .line 693
    iget-wide v5, v3, Lo/zzew;->onPostMessage:J

    add-long v5, v5, p4

    iput-wide v5, v3, Lo/zzew;->onPostMessage:J

    :cond_3
    if-eqz p7, :cond_4

    .line 695
    iget-wide v5, v3, Lo/zzew;->extraCallback:J

    add-long v5, v5, p4

    iput-wide v5, v3, Lo/zzew;->extraCallback:J

    :cond_4
    if-eqz p8, :cond_5

    .line 697
    iget-wide v5, v3, Lo/zzew;->onNavigationEvent:J

    add-long v5, v5, p4

    iput-wide v5, v3, Lo/zzew;->onNavigationEvent:J

    :cond_5
    if-eqz p9, :cond_6

    .line 699
    iget-wide v5, v3, Lo/zzew;->ICustomTabsCallback:J

    add-long v5, v5, p4

    iput-wide v5, v3, Lo/zzew;->ICustomTabsCallback:J

    :cond_6
    if-eqz p10, :cond_7

    .line 701
    iget-wide v5, v3, Lo/zzew;->onMessageChannelReady:J

    add-long v5, v5, p4

    iput-wide v5, v3, Lo/zzew;->onMessageChannelReady:J

    .line 702
    :cond_7
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "day"

    .line 703
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "daily_public_events_count"

    .line 704
    iget-wide v5, v3, Lo/zzew;->extraCallback:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "daily_events_count"

    .line 705
    iget-wide v5, v3, Lo/zzew;->onPostMessage:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "daily_conversions_count"

    .line 706
    iget-wide v5, v3, Lo/zzew;->onNavigationEvent:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "daily_error_events_count"

    .line 707
    iget-wide v5, v3, Lo/zzew;->ICustomTabsCallback:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "daily_realtime_events_count"

    .line 708
    iget-wide v5, v3, Lo/zzew;->onMessageChannelReady:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "apps"

    const-string v5, "app_id=?"

    .line 709
    invoke-virtual {v13, v2, v0, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_8

    .line 712
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v3

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 715
    :try_start_2
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 716
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Error updating daily counts. appId"

    .line 717
    invoke-static/range {p3 .. p3}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_9

    .line 720
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v3

    :goto_0
    if-eqz v4, :cond_a

    .line 723
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 724
    :cond_a
    throw v0
.end method

.method public final ICustomTabsCallback(JLjava/lang/String;ZZZZZ)Lo/zzew;
    .locals 11

    const-wide/16 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move/from16 v8, p6

    move/from16 v10, p8

    .line 667
    invoke-virtual/range {v0 .. v10}, Lo/zzzv;->ICustomTabsCallback(JLjava/lang/String;JZZZZZ)Lo/zzew;

    move-result-object v0

    return-object v0
.end method

.method final ICustomTabsCallback(Ljava/lang/String;Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lo/cB$extraCallback;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    const-string v3, "app_id=? and audience_id=?"

    const-string v4, "event_filters"

    const-string v5, "app_id=?"

    const-string v6, "property_filters"

    .line 1572
    invoke-static/range {p2 .. p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v8, 0x0

    .line 1573
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 1574
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lo/cB$extraCallback;

    .line 1575
    invoke-virtual {v9}, Lo/fa;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal()Lo/fa$onNavigationEvent;

    move-result-object v9

    .line 1576
    check-cast v9, Lo/fa$onNavigationEvent;

    check-cast v9, Lo/cB$extraCallback$ICustomTabsCallback;

    .line 1577
    invoke-virtual {v9}, Lo/cB$extraCallback$ICustomTabsCallback;->ICustomTabsCallback()I

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x0

    .line 1579
    :goto_1
    invoke-virtual {v9}, Lo/cB$extraCallback$ICustomTabsCallback;->ICustomTabsCallback()I

    move-result v12

    if-ge v11, v12, :cond_4

    .line 1580
    invoke-virtual {v9, v11}, Lo/cB$extraCallback$ICustomTabsCallback;->extraCallback(I)Lo/cB$onNavigationEvent;

    move-result-object v12

    .line 1581
    invoke-virtual {v12}, Lo/fa;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal()Lo/fa$onNavigationEvent;

    move-result-object v12

    .line 1582
    check-cast v12, Lo/fa$onNavigationEvent;

    check-cast v12, Lo/cB$onNavigationEvent$extraCallback;

    .line 1583
    invoke-virtual {v12}, Lo/eE;->clone()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lo/fa$onNavigationEvent;

    check-cast v13, Lo/cB$onNavigationEvent$extraCallback;

    .line 1585
    invoke-virtual {v12}, Lo/cB$onNavigationEvent$extraCallback;->onPostMessage()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lo/setChipIconResource;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 1587
    invoke-virtual {v13, v14}, Lo/cB$onNavigationEvent$extraCallback;->onNavigationEvent(Ljava/lang/String;)Lo/cB$onNavigationEvent$extraCallback;

    const/4 v14, 0x1

    goto :goto_2

    :cond_0
    const/4 v14, 0x0

    :goto_2
    const/4 v15, 0x0

    .line 1589
    :goto_3
    invoke-virtual {v12}, Lo/cB$onNavigationEvent$extraCallback;->onMessageChannelReady()I

    move-result v7

    if-ge v15, v7, :cond_2

    .line 1590
    invoke-virtual {v12, v15}, Lo/cB$onNavigationEvent$extraCallback;->onNavigationEvent(I)Lo/cB$onMessageChannelReady;

    move-result-object v7

    .line 1591
    invoke-virtual {v7}, Lo/cB$onMessageChannelReady;->onTransact()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lo/setCloseIconVisible;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 1594
    invoke-virtual {v7}, Lo/fa;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal()Lo/fa$onNavigationEvent;

    move-result-object v7

    .line 1595
    check-cast v7, Lo/fa$onNavigationEvent;

    check-cast v7, Lo/cB$onMessageChannelReady$onMessageChannelReady;

    invoke-virtual {v7, v10}, Lo/cB$onMessageChannelReady$onMessageChannelReady;->extraCallback(Ljava/lang/String;)Lo/cB$onMessageChannelReady$onMessageChannelReady;

    move-result-object v7

    invoke-virtual {v7}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v7

    check-cast v7, Lo/fa;

    check-cast v7, Lo/cB$onMessageChannelReady;

    .line 1596
    invoke-virtual {v13, v15, v7}, Lo/cB$onNavigationEvent$extraCallback;->onNavigationEvent(ILo/cB$onMessageChannelReady;)Lo/cB$onNavigationEvent$extraCallback;

    const/4 v14, 0x1

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_2
    if-eqz v14, :cond_3

    .line 1600
    invoke-virtual {v9, v11, v13}, Lo/cB$extraCallback$ICustomTabsCallback;->ICustomTabsCallback(ILo/cB$onNavigationEvent$extraCallback;)Lo/cB$extraCallback$ICustomTabsCallback;

    move-result-object v9

    .line 1601
    invoke-virtual {v9}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v7

    check-cast v7, Lo/fa;

    check-cast v7, Lo/cB$extraCallback;

    invoke-interface {v2, v8, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 1603
    :cond_4
    invoke-virtual {v9}, Lo/cB$extraCallback$ICustomTabsCallback;->onPostMessage()I

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    .line 1605
    :goto_4
    invoke-virtual {v9}, Lo/cB$extraCallback$ICustomTabsCallback;->onPostMessage()I

    move-result v10

    if-ge v7, v10, :cond_6

    .line 1606
    invoke-virtual {v9, v7}, Lo/cB$extraCallback$ICustomTabsCallback;->onPostMessage(I)Lo/cB$onPostMessage;

    move-result-object v10

    .line 1608
    invoke-virtual {v10}, Lo/cB$onPostMessage;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lo/setChipIcon;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_5

    .line 1611
    invoke-virtual {v10}, Lo/fa;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackInternal()Lo/fa$onNavigationEvent;

    move-result-object v10

    .line 1612
    check-cast v10, Lo/fa$onNavigationEvent;

    check-cast v10, Lo/cB$onPostMessage$onPostMessage;

    invoke-virtual {v10, v11}, Lo/cB$onPostMessage$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)Lo/cB$onPostMessage$onPostMessage;

    move-result-object v10

    .line 1613
    invoke-virtual {v9, v7, v10}, Lo/cB$extraCallback$ICustomTabsCallback;->onMessageChannelReady(ILo/cB$onPostMessage$onPostMessage;)Lo/cB$extraCallback$ICustomTabsCallback;

    move-result-object v9

    .line 1614
    invoke-virtual {v9}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v10

    check-cast v10, Lo/fa;

    check-cast v10, Lo/cB$extraCallback;

    invoke-interface {v2, v8, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 1618
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lo/setHintTextColor;->read()V

    .line 1619
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1620
    invoke-static/range {p1 .. p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 1621
    invoke-static/range {p2 .. p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    invoke-virtual/range {p0 .. p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 1623
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1625
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lo/setHintTextColor;->read()V

    .line 1626
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1627
    invoke-static/range {p1 .. p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 1628
    invoke-virtual/range {p0 .. p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    .line 1629
    invoke-virtual {v8, v6, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v10, v9, [Ljava/lang/String;

    aput-object v0, v10, v11

    .line 1630
    invoke-virtual {v8, v4, v5, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1631
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/cB$extraCallback;

    .line 1633
    invoke-virtual/range {p0 .. p0}, Lo/setHintTextColor;->read()V

    .line 1634
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1635
    invoke-static/range {p1 .. p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 1636
    invoke-static {v8}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1637
    invoke-virtual {v8}, Lo/cB$extraCallback;->onNavigationEvent()Z

    move-result v9

    if-nez v9, :cond_8

    .line 1638
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v8

    invoke-virtual {v8}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v8

    const-string v9, "Audience with no ID. appId"

    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_5

    .line 1640
    :cond_8
    invoke-virtual {v8}, Lo/cB$extraCallback;->onMessageChannelReady()I

    move-result v9

    .line 1641
    invoke-virtual {v8}, Lo/cB$extraCallback;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/cB$onNavigationEvent;

    .line 1642
    invoke-virtual {v11}, Lo/cB$onNavigationEvent;->onNavigationEvent()Z

    move-result v11

    if-nez v11, :cond_9

    .line 1643
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v8

    .line 1644
    invoke-virtual {v8}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v8

    const-string v10, "Event filter with no ID. Audience definition ignored. appId, audienceId"

    .line 1645
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1646
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1647
    invoke-virtual {v8, v10, v11, v9}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    .line 1650
    :cond_a
    invoke-virtual {v8}, Lo/cB$extraCallback;->onPostMessage()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_b
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/cB$onPostMessage;

    .line 1651
    invoke-virtual {v11}, Lo/cB$onPostMessage;->onPostMessage()Z

    move-result v11

    if-nez v11, :cond_b

    .line 1652
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v8

    .line 1653
    invoke-virtual {v8}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v8

    const-string v10, "Property filter with no ID. Audience definition ignored. appId, audienceId"

    .line 1654
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    .line 1655
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 1656
    invoke-virtual {v8, v10, v11, v9}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1660
    :cond_c
    invoke-virtual {v8}, Lo/cB$extraCallback;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_d
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/cB$onNavigationEvent;

    .line 1661
    invoke-direct {v1, v0, v9, v11}, Lo/zzzv;->onNavigationEvent(Ljava/lang/String;ILo/cB$onNavigationEvent;)Z

    move-result v11

    if-nez v11, :cond_d

    const/4 v10, 0x0

    goto :goto_6

    :cond_e
    const/4 v10, 0x1

    :goto_6
    if-eqz v10, :cond_10

    .line 1666
    invoke-virtual {v8}, Lo/cB$extraCallback;->onPostMessage()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lo/cB$onPostMessage;

    .line 1667
    invoke-direct {v1, v0, v9, v11}, Lo/zzzv;->onPostMessage(Ljava/lang/String;ILo/cB$onPostMessage;)Z

    move-result v11

    if-nez v11, :cond_f

    const/4 v10, 0x0

    :cond_10
    if-nez v10, :cond_11

    .line 1673
    invoke-virtual/range {p0 .. p0}, Lo/setHintTextColor;->read()V

    .line 1674
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1675
    invoke-static/range {p1 .. p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 1676
    invoke-virtual/range {p0 .. p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v8

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    .line 1678
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    aput-object v12, v11, v13

    .line 1679
    invoke-virtual {v8, v6, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    .line 1681
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x1

    aput-object v9, v10, v12

    .line 1682
    invoke-virtual {v8, v4, v3, v10}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_11
    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_5

    .line 1684
    :cond_12
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1685
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/cB$extraCallback;

    .line 1686
    invoke-virtual {v4}, Lo/cB$extraCallback;->onNavigationEvent()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-virtual {v4}, Lo/cB$extraCallback;->onMessageChannelReady()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_8

    :cond_13
    const/4 v4, 0x0

    :goto_8
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 1688
    :cond_14
    invoke-direct {v1, v0, v3}, Lo/zzzv;->extraCallback(Ljava/lang/String;Ljava/util/List;)Z

    .line 1689
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1690
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    .line 1692
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1693
    throw v0
.end method

.method final ICustomTabsCallback(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 904
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 905
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 906
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(I)I

    .line 908
    invoke-direct {p0}, Lo/zzzv;->write()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, ","

    .line 911
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 912
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x50

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "SELECT COUNT(1) FROM queue WHERE rowid IN "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " AND retry_count =  2147483647 LIMIT 1"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lo/zzzv;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 913
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 914
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "The number of upload retries exceeds the limit. Will remain unchanged."

    .line 915
    invoke-virtual {v0, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V

    .line 916
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 917
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND (retry_count IS NULL OR retry_count < 2147483647)"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 920
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Error incrementing retry count. error"

    invoke-virtual {v0, v1, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected final ICustomTabsCallback$Stub(Ljava/lang/String;Ljava/lang/String;)J
    .locals 17

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1280
    invoke-static/range {p1 .. p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 1281
    invoke-static/range {p2 .. p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 1282
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1283
    invoke-virtual/range {p0 .. p0}, Lo/setHintTextColor;->read()V

    .line 1285
    invoke-virtual/range {p0 .. p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 1286
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-wide/16 v4, 0x0

    .line 1287
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "select "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from app2 where app_id=?"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v1, v7, v8
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v9, -0x1

    move-object/from16 v11, p0

    .line 1288
    :try_start_1
    invoke-direct {v11, v0, v7, v9, v10}, Lo/zzzv;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v12
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v0, "app2"

    const-string v7, "app_id"

    cmp-long v14, v12, v9

    if-nez v14, :cond_1

    .line 1291
    :try_start_2
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 1292
    invoke-virtual {v12, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "first_open_count"

    .line 1293
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "previous_install_count"

    .line 1294
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v13, 0x0

    const/4 v14, 0x5

    .line 1296
    invoke-virtual {v3, v0, v13, v12, v14}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v12

    cmp-long v14, v12, v9

    if-nez v14, :cond_0

    .line 1298
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 1299
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v6, "Failed to insert column (got -1). appId"

    .line 1300
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7, v2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1301
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v9

    :cond_0
    move-wide v12, v4

    .line 1303
    :cond_1
    :try_start_3
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 1304
    invoke-virtual {v14, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v15, 0x1

    add-long/2addr v15, v12

    .line 1305
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v14, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v7, "app_id = ?"

    new-array v6, v6, [Ljava/lang/String;

    aput-object v1, v6, v8

    .line 1306
    invoke-virtual {v3, v0, v14, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    int-to-long v6, v0

    cmp-long v0, v6, v4

    if-nez v0, :cond_2

    .line 1308
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 1309
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v4, "Failed to update column (got 0). appId"

    .line 1310
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5, v2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1311
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-wide v9

    .line 1313
    :cond_2
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1314
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_1

    :catch_0
    move-exception v0

    move-wide v4, v12

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v11, p0

    .line 1317
    :goto_0
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v6

    .line 1318
    invoke-virtual {v6}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v6

    const-string v7, "Error inserting column. appId"

    .line 1319
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v6, v7, v1, v2, v0}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1320
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move-wide v12, v4

    :goto_1
    return-wide v12

    :catchall_1
    move-exception v0

    .line 1322
    :goto_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1323
    throw v0
.end method

.method public final ICustomTabsCallback$Stub(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    .line 1492
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1493
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    const/4 v0, 0x0

    .line 1495
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select parameters from default_event_params where app_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 1497
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1498
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1499
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string v2, "Default event parameters not found"

    invoke-virtual {p1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 1501
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 1503
    :cond_1
    :try_start_2
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1504
    :try_start_3
    invoke-static {}, Lo/cH$ICustomTabsCallback;->onTransact()Lo/cH$ICustomTabsCallback$onNavigationEvent;

    move-result-object v3

    invoke-static {v3, v2}, Lo/setErrorTextColor;->onPostMessage(Lo/startRecording;[B)Lo/startRecording;

    move-result-object v2

    check-cast v2, Lo/cH$ICustomTabsCallback$onNavigationEvent;

    invoke-virtual {v2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v2

    check-cast v2, Lo/fa;

    check-cast v2, Lo/cH$ICustomTabsCallback;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1514
    :try_start_4
    invoke-virtual {p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    invoke-virtual {v2}, Lo/cH$ICustomTabsCallback;->onNavigationEvent()Ljava/util/List;

    move-result-object p1

    .line 1515
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1516
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/cH$onNavigationEvent;

    .line 1517
    invoke-virtual {v3}, Lo/cH$onNavigationEvent;->extraCallback()Ljava/lang/String;

    move-result-object v4

    .line 1518
    invoke-virtual {v3}, Lo/cH$onNavigationEvent;->asInterface()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1519
    invoke-virtual {v3}, Lo/cH$onNavigationEvent;->onRelationshipValidationResult()D

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 1520
    :cond_3
    invoke-virtual {v3}, Lo/cH$onNavigationEvent;->asBinder()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1521
    invoke-virtual {v3}, Lo/cH$onNavigationEvent;->onTransact()F

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 1522
    :cond_4
    invoke-virtual {v3}, Lo/cH$onNavigationEvent;->onMessageChannelReady()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1523
    invoke-virtual {v3}, Lo/cH$onNavigationEvent;->onPostMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1524
    :cond_5
    invoke-virtual {v3}, Lo/cH$onNavigationEvent;->ICustomTabsCallback()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1525
    invoke-virtual {v3}, Lo/cH$onNavigationEvent;->ICustomTabsCallback$Stub()J

    move-result-wide v5

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :cond_6
    if-eqz v1, :cond_7

    .line 1530
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v2

    :catch_0
    move-exception v2

    .line 1507
    :try_start_5
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 1508
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v4, "Failed to retrieve default event parameters. appId"

    .line 1509
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1510
    invoke-virtual {v3, v4, p1, v2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_8

    .line 1512
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v0

    :catch_1
    move-exception p1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    move-object v1, v0

    .line 1533
    :goto_1
    :try_start_6
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Error selecting default event parameters"

    invoke-virtual {v2, v3, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_9

    .line 1535
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_a

    .line 1537
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1538
    :cond_a
    throw p1
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 5

    const-string v0, "select count(1) > 0 from queue where has_realtime = 1"

    const/4 v1, 0x0

    .line 825
    invoke-direct {p0, v0, v1}, Lo/zzzv;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ICustomTabsService$Stub()J
    .locals 4

    const-string v0, "select max(timestamp) from raw_events"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 1325
    invoke-direct {p0, v0, v1, v2, v3}, Lo/zzzv;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method final ICustomTabsService$Stub$Proxy()V
    .locals 7

    .line 879
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 880
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 881
    invoke-direct {p0}, Lo/zzzv;->write()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 883
    :cond_0
    invoke-virtual {p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->onTransact:Lo/setIconTint;

    invoke-virtual {v0}, Lo/setIconTint;->onMessageChannelReady()J

    move-result-wide v0

    .line 884
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v2

    invoke-interface {v2}, Lo/component15;->onPostMessage()J

    move-result-wide v2

    sub-long v0, v2, v0

    .line 885
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 886
    sget-object v4, Lo/zziq;->IPostMessageService$Stub:Lo/setStatusBarForegroundColor;

    const/4 v5, 0x0

    .line 887
    invoke-virtual {v4, v5}, Lo/setStatusBarForegroundColor;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 888
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    .line 890
    invoke-virtual {p0}, Lo/setChipTextResource;->extraCommand()Lo/setBackgroundTintList;

    move-result-object v0

    iget-object v0, v0, Lo/setBackgroundTintList;->onTransact:Lo/setIconTint;

    invoke-virtual {v0, v2, v3}, Lo/setIconTint;->ICustomTabsCallback(J)V

    .line 892
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 893
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 894
    invoke-direct {p0}, Lo/zzzv;->write()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 895
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 897
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v3

    invoke-interface {v3}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 898
    invoke-static {}, Lo/setStartIconTintList;->onRelationshipValidationResult()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "queue"

    const-string v3, "abs(bundle_end_timestamp - ?) > cast(? as integer)"

    .line 900
    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 902
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "Deleted stale rows. rowsDeleted"

    invoke-virtual {v1, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final IPostMessageService()Z
    .locals 5

    const-string v0, "select count(1) > 0 from raw_events where realtime = 1"

    const/4 v1, 0x0

    .line 1349
    invoke-direct {p0, v0, v1}, Lo/zzzv;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final IPostMessageService$Stub()J
    .locals 4

    const-string v0, "select max(bundle_end_timestamp) from queue"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 1279
    invoke-direct {p0, v0, v1, v2, v3}, Lo/zzzv;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final IPostMessageService$Stub$Proxy()J
    .locals 6

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    .line 1378
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "select rowid from raw_events order by rowid desc limit 1;"

    .line 1379
    invoke-virtual {v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1380
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    .line 1383
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-wide v0

    :cond_1
    const/4 v3, 0x0

    .line 1385
    :try_start_1
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 1387
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1390
    :try_start_2
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v4

    const-string v5, "Error querying raw events"

    invoke-virtual {v4, v5, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    .line 1392
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-wide v0

    :goto_0
    if-eqz v2, :cond_4

    .line 1394
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1395
    :cond_4
    throw v0
.end method

.method final asBinder(Ljava/lang/String;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1132
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 1133
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1134
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 1135
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    .line 1136
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "select audience_id, filter_id from event_filters where app_id = ? and session_scoped = 1 UNION select audience_id, filter_id from property_filters where app_id = ? and session_scoped = 1;"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v6, 0x1

    aput-object p1, v4, v6

    .line 1139
    invoke-virtual {v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1140
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1141
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 1143
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    .line 1145
    :cond_1
    :try_start_2
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1146
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_2

    .line 1148
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    :cond_2
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1151
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1152
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_1

    if-eqz v1, :cond_3

    .line 1154
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v1, v2

    .line 1156
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 1157
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v4, "Database error querying scoped filters. appId"

    .line 1158
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1159
    invoke-static {}, Lo/AdUrlAdapter;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1160
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v3, Lo/zziq;->getStateLabel:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, p1, v3}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1161
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    .line 1163
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p1

    :cond_5
    if-eqz v1, :cond_6

    .line 1167
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v2

    :catchall_1
    move-exception p1

    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_7

    .line 1170
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1171
    :cond_7
    throw p1
.end method

.method public final asBinder()V
    .locals 1

    .line 11
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 12
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    return-void
.end method

.method final asInterface(Ljava/lang/String;)Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lo/cH$asBinder;",
            ">;"
        }
    .end annotation

    .line 1204
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 1205
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1206
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 1207
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v8, 0x0

    :try_start_0
    const-string v1, "audience_filter_values"

    const-string v2, "audience_id"

    const-string v3, "current_results"

    .line 1209
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id=?"

    const/4 v9, 0x1

    new-array v4, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v4, v10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1210
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1212
    invoke-static {}, Lo/AdUrlAdapter;->onNavigationEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1213
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    sget-object v2, Lo/zziq;->getStateLabel:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, p1, v2}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1214
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    .line 1216
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    :cond_1
    if-eqz v0, :cond_2

    .line 1220
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v8

    .line 1222
    :cond_3
    :try_start_2
    new-instance v1, Lo/postOrRun;

    invoke-direct {v1}, Lo/postOrRun;-><init>()V

    .line 1223
    :cond_4
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1224
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1225
    :try_start_3
    invoke-static {}, Lo/cH$asBinder;->ICustomTabsCallback$Stub()Lo/cH$asBinder$onPostMessage;

    move-result-object v4

    invoke-static {v4, v3}, Lo/setErrorTextColor;->onPostMessage(Lo/startRecording;[B)Lo/startRecording;

    move-result-object v3

    check-cast v3, Lo/cH$asBinder$onPostMessage;

    invoke-virtual {v3}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v3

    check-cast v3, Lo/fa;

    check-cast v3, Lo/cH$asBinder;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1234
    :try_start_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v3

    .line 1228
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    .line 1229
    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v4

    const-string v5, "Failed to merge filter results. appId, audienceId, error"

    .line 1230
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 1231
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1232
    invoke-virtual {v4, v5, v6, v2, v3}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1235
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v2, :cond_4

    if-eqz v0, :cond_5

    .line 1238
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v1

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception v1

    move-object v0, v8

    .line 1241
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 1242
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Database error querying filter results. appId"

    .line 1243
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1244
    invoke-static {}, Lo/AdUrlAdapter;->onNavigationEvent()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1245
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    sget-object v2, Lo/zziq;->getStateLabel:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, p1, v2}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1246
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_6

    .line 1248
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object p1

    :cond_7
    if-eqz v0, :cond_8

    .line 1252
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v8

    :catchall_1
    move-exception p1

    move-object v8, v0

    :goto_2
    if-eqz v8, :cond_9

    .line 1255
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1256
    :cond_9
    throw p1
.end method

.method final asInterface(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lo/cB$onPostMessage;",
            ">;>;"
        }
    .end annotation

    .line 1085
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 1086
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1087
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 1088
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 1089
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    .line 1090
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v9, 0x0

    :try_start_0
    const-string v2, "property_filters"

    const-string v3, "audience_id"

    const-string v4, "data"

    .line 1092
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=? AND property_name=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v11, 0x1

    aput-object p2, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1093
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1094
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1095
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_0

    .line 1097
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    .line 1099
    :cond_1
    :try_start_2
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1100
    :try_start_3
    invoke-static {}, Lo/cB$onPostMessage;->onRelationshipValidationResult()Lo/cB$onPostMessage$onPostMessage;

    move-result-object v2

    invoke-static {v2, v1}, Lo/setErrorTextColor;->onPostMessage(Lo/startRecording;[B)Lo/startRecording;

    move-result-object v1

    check-cast v1, Lo/cB$onPostMessage$onPostMessage;

    invoke-virtual {v1}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v1

    check-cast v1, Lo/fa;

    check-cast v1, Lo/cB$onPostMessage;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1105
    :try_start_4
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    .line 1108
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1109
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1103
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Failed to merge filter"

    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1111
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_1

    if-eqz p2, :cond_3

    .line 1113
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p2, v9

    .line 1115
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 1116
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Database error querying filters. appId"

    .line 1117
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1118
    invoke-static {}, Lo/AdUrlAdapter;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1119
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->getStateLabel:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, p1, v1}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1120
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p2, :cond_4

    .line 1122
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p1

    :cond_5
    if-eqz p2, :cond_6

    .line 1126
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v9

    :catchall_1
    move-exception p1

    move-object v9, p2

    :goto_2
    if-eqz v9, :cond_7

    .line 1129
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1130
    :cond_7
    throw p1
.end method

.method public final asInterface()V
    .locals 1

    .line 14
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 15
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/setErrorIconDrawable;",
            ">;"
        }
    .end annotation

    .line 244
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 246
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 249
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_attributes"

    const-string v4, "name"

    const-string v5, "origin"

    const-string v6, "set_timestamp"

    const-string v7, "value"

    .line 250
    filled-new-array {v4, v5, v6, v7}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id=?"

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p1, v6, v12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    const-string v10, "1000"

    .line 252
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    .line 256
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 258
    :cond_1
    :try_start_2
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 259
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    :cond_2
    move-object v6, v3

    const/4 v3, 0x2

    .line 262
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v3, 0x3

    .line 263
    invoke-direct {p0, v2, v3}, Lo/zzzv;->onMessageChannelReady(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_3

    .line 265
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 266
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v4, "Read invalid user property value, ignoring it. appId"

    .line 267
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 268
    invoke-virtual {v3, v4, v5}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 269
    :cond_3
    new-instance v3, Lo/setErrorIconDrawable;

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lo/setErrorIconDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 270
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v3, :cond_1

    if-eqz v2, :cond_4

    .line 274
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v2, v1

    .line 277
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 278
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v4, "Error querying user properties. appId"

    .line 279
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 280
    invoke-static {}, Lo/AdUrlAdapter;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 281
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v3, Lo/zziq;->getStateLabel:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, p1, v3}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 282
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_5

    .line 284
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object p1

    :cond_6
    if-eqz v2, :cond_7

    .line 288
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    return-object v1

    :catchall_1
    move-exception p1

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_8

    .line 291
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 292
    :cond_8
    throw p1
.end method

.method public final extraCallback(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/setStartIconVisible;",
            ">;"
        }
    .end annotation

    .line 475
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 476
    invoke-virtual/range {p0 .. p0}, Lo/setHintTextColor;->read()V

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 479
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "conditional_properties"

    const-string v4, "app_id"

    const-string v5, "origin"

    const-string v6, "name"

    const-string v7, "value"

    const-string v8, "active"

    const-string v9, "trigger_event_name"

    const-string v10, "trigger_timeout"

    const-string v11, "timed_out_event"

    const-string v12, "creation_timestamp"

    const-string v13, "triggered_event"

    const-string v14, "triggered_timestamp"

    const-string v15, "time_to_live"

    const-string v16, "expired_event"

    .line 480
    filled-new-array/range {v4 .. v16}, [Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "rowid"

    const-string v10, "1001"

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    .line 482
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 483
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    .line 486
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 488
    :cond_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x3e8

    if-lt v2, v3, :cond_2

    .line 489
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 490
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v4, "Read more than the max allowed conditional properties, ignoring extra"

    .line 491
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 492
    invoke-virtual {v2, v4, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 494
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x1

    .line 495
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v5, 0x2

    .line 496
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x3

    move-object/from16 v15, p0

    .line 497
    invoke-direct {v15, v1, v5}, Lo/zzzv;->onMessageChannelReady(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v9

    const/4 v5, 0x4

    .line 498
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    :cond_3
    const/4 v3, 0x5

    .line 499
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v3, 0x6

    .line 500
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 502
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v3

    const/4 v5, 0x7

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    sget-object v7, Lo/zzir;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v5, v7}, Lo/setErrorTextColor;->onPostMessage([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Lo/zzir;

    const/16 v3, 0x8

    .line 503
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    .line 505
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v3

    const/16 v5, 0x9

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    sget-object v7, Lo/zzir;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v5, v7}, Lo/setErrorTextColor;->onPostMessage([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Lo/zzir;

    const/16 v3, 0xa

    .line 506
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/16 v3, 0xb

    .line 507
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 509
    invoke-virtual/range {p0 .. p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v3

    const/16 v5, 0xc

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    sget-object v10, Lo/zzir;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v3, v5, v10}, Lo/setErrorTextColor;->onPostMessage([BLandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v3

    move-object/from16 v22, v3

    check-cast v22, Lo/zzir;

    .line 510
    new-instance v23, Lo/setError;

    move-object/from16 v5, v23

    move-object v10, v11

    invoke-direct/range {v5 .. v10}, Lo/setError;-><init>(Ljava/lang/String;JLjava/lang/Object;Ljava/lang/String;)V

    .line 511
    new-instance v10, Lo/setStartIconVisible;

    move-object v3, v10

    move-object v5, v11

    move-object/from16 v6, v23

    move-wide/from16 v7, v17

    move v9, v2

    move-object v2, v10

    move-object v10, v12

    move-object/from16 v11, v16

    move-wide v12, v13

    move-object/from16 v14, v19

    move-wide/from16 v15, v20

    move-object/from16 v17, v22

    invoke-direct/range {v3 .. v17}, Lo/setStartIconVisible;-><init>(Ljava/lang/String;Ljava/lang/String;Lo/setError;JZLjava/lang/String;Lo/zzir;JLo/zzir;JLo/zzir;)V

    .line 512
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    :goto_0
    if-eqz v1, :cond_4

    .line 516
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 519
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Error querying conditional user property value"

    invoke-virtual {v2, v3, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 520
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    .line 522
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v0

    :goto_1
    if-eqz v1, :cond_6

    .line 525
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 526
    :cond_6
    throw v0
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 155
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 156
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 158
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 159
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "user_attributes"

    const-string v2, "app_id=? and name=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    .line 161
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 165
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 166
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 167
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v2

    invoke-virtual {v2, p2}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "Error deleting user property. appId"

    .line 168
    invoke-virtual {v1, v2, p1, p2, v0}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method final extraCallback(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 11

    .line 1464
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1465
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 1466
    new-instance v10, Lo/sendMessageAtTime;

    iget-object v1, p0, Lo/zzzv;->validateRelationship:Lo/setCheckedIcon;

    const-string v2, ""

    const-string v4, "dep"

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v0, v10

    move-object v3, p1

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Lo/sendMessageAtTime;-><init>(Lo/setCheckedIcon;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/os/Bundle;)V

    .line 1467
    invoke-virtual {p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object p2

    invoke-virtual {p2, v10}, Lo/setErrorTextColor;->onPostMessage(Lo/sendMessageAtTime;)Lo/cH$ICustomTabsCallback;

    move-result-object p2

    invoke-virtual {p2}, Lo/ab$a;->setInternalConnectionCallback()[B

    move-result-object p2

    .line 1468
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 1469
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    .line 1470
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    array-length v2, p2

    .line 1471
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Saving default event parameters, appId, data size"

    .line 1472
    invoke-virtual {v0, v3, v1, v2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1473
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    .line 1474
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "parameters"

    .line 1475
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p2, 0x0

    .line 1476
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "default_event_params"

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 1478
    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1480
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 1481
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Failed to insert default event parameters (got -1). appId"

    .line 1482
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 1483
    invoke-virtual {v0, v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 1487
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 1488
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 1489
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing default event parameters. appId"

    invoke-virtual {v1, v2, p1, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return p2
.end method

.method public final extraCallback(Lo/sendMessageAtTime;JZ)Z
    .locals 4

    .line 1546
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1547
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 1548
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    iget-object v0, p1, Lo/sendMessageAtTime;->onPostMessage:Ljava/lang/String;

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 1550
    invoke-virtual {p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/setErrorTextColor;->onPostMessage(Lo/sendMessageAtTime;)Lo/cH$ICustomTabsCallback;

    move-result-object v0

    invoke-virtual {v0}, Lo/ab$a;->setInternalConnectionCallback()[B

    move-result-object v0

    .line 1551
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1552
    iget-object v2, p1, Lo/sendMessageAtTime;->onPostMessage:Ljava/lang/String;

    const-string v3, "app_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    iget-object v2, p1, Lo/sendMessageAtTime;->onNavigationEvent:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1554
    iget-wide v2, p1, Lo/sendMessageAtTime;->onMessageChannelReady:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1555
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "metadata_fingerprint"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "data"

    .line 1556
    invoke-virtual {v1, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1557
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "realtime"

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 p2, 0x0

    .line 1558
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const-string p4, "raw_events"

    const/4 v0, 0x0

    .line 1559
    invoke-virtual {p3, p4, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p3

    const-wide/16 v0, -0x1

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    .line 1561
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p3

    .line 1562
    invoke-virtual {p3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p3

    const-string p4, "Failed to insert raw event (got -1). appId"

    iget-object v0, p1, Lo/sendMessageAtTime;->onPostMessage:Ljava/lang/String;

    .line 1563
    invoke-static {v0}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p4, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p3

    .line 1567
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p4

    .line 1568
    invoke-virtual {p4}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p4

    iget-object p1, p1, Lo/sendMessageAtTime;->onPostMessage:Ljava/lang/String;

    .line 1569
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Error storing raw event. appId"

    invoke-virtual {p4, v0, p1, p3}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return p2
.end method

.method public final extraCallback(Lo/setErrorIconDrawable;)Z
    .locals 7

    .line 170
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 172
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 173
    iget-object v0, p1, Lo/setErrorIconDrawable;->onNavigationEvent:Ljava/lang/String;

    iget-object v1, p1, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/setErrorIconDrawable;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 175
    iget-object v0, p1, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    .line 176
    iget-object v3, p1, Lo/setErrorIconDrawable;->onNavigationEvent:Ljava/lang/String;

    aput-object v3, v0, v2

    const-string v3, "select count(1) from user_attributes where app_id=? and name not like \'!_%\' escape \'!\'"

    .line 177
    invoke-direct {p0, v3, v0}, Lo/zzzv;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    .line 178
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    iget-object v5, p1, Lo/setErrorIconDrawable;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lo/setStartIconTintList;->onMessageChannelReady(Ljava/lang/String;)I

    move-result v0

    int-to-long v5, v0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    return v2

    .line 181
    :cond_0
    iget-object v0, p1, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "_npa"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 182
    iget-object v3, p1, Lo/setErrorIconDrawable;->onNavigationEvent:Ljava/lang/String;

    aput-object v3, v0, v2

    iget-object v3, p1, Lo/setErrorIconDrawable;->onPostMessage:Ljava/lang/String;

    aput-object v3, v0, v1

    const-string v3, "select count(1) from user_attributes where app_id=? and origin=? AND name like \'!_%\' escape \'!\'"

    .line 183
    invoke-direct {p0, v3, v0}, Lo/zzzv;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x19

    cmp-long v0, v3, v5

    if-ltz v0, :cond_1

    return v2

    .line 186
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 187
    iget-object v2, p1, Lo/setErrorIconDrawable;->onNavigationEvent:Ljava/lang/String;

    const-string v3, "app_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v2, p1, Lo/setErrorIconDrawable;->onPostMessage:Ljava/lang/String;

    const-string v3, "origin"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v2, p1, Lo/setErrorIconDrawable;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-wide v2, p1, Lo/setErrorIconDrawable;->onMessageChannelReady:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "set_timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 191
    iget-object v2, p1, Lo/setErrorIconDrawable;->extraCallback:Ljava/lang/Object;

    const-string v3, "value"

    invoke-static {v0, v3, v2}, Lo/zzzv;->extraCallback(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "user_attributes"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 194
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 196
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Failed to insert/update user property (got -1). appId"

    iget-object v3, p1, Lo/setErrorIconDrawable;->onNavigationEvent:Ljava/lang/String;

    .line 198
    invoke-static {v3}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 199
    invoke-virtual {v0, v2, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 202
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    iget-object p1, p1, Lo/setErrorIconDrawable;->onNavigationEvent:Ljava/lang/String;

    .line 204
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Error storing user property. appId"

    invoke-virtual {v2, v3, p1, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return v1
.end method

.method public final extraCallback(Lo/setStartIconVisible;)Z
    .locals 8

    .line 357
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 359
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 360
    iget-object v0, p1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v1, v1, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lo/zzzv;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/setErrorIconDrawable;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [Ljava/lang/String;

    .line 362
    iget-object v2, p1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "SELECT COUNT(1) FROM conditional_properties WHERE app_id=?"

    .line 363
    invoke-direct {p0, v2, v0}, Lo/zzzv;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    cmp-long v0, v4, v6

    if-ltz v0, :cond_0

    return v3

    .line 366
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 367
    iget-object v2, p1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    const-string v3, "app_id"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v2, p1, Lo/setStartIconVisible;->onNavigationEvent:Ljava/lang/String;

    const-string v3, "origin"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v2, p1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-object v2, v2, Lo/setError;->onNavigationEvent:Ljava/lang/String;

    const-string v3, "name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v2, p1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    invoke-virtual {v2}, Lo/setError;->extraCallback()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "value"

    invoke-static {v0, v3, v2}, Lo/zzzv;->extraCallback(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/Object;)V

    .line 371
    iget-boolean v2, p1, Lo/setStartIconVisible;->onPostMessage:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "active"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 372
    iget-object v2, p1, Lo/setStartIconVisible;->onTransact:Ljava/lang/String;

    const-string v3, "trigger_event_name"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    iget-wide v2, p1, Lo/setStartIconVisible;->onRelationshipValidationResult:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "trigger_timeout"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 374
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    iget-object v2, p1, Lo/setStartIconVisible;->asInterface:Lo/zzir;

    invoke-static {v2}, Lo/setHelperTextEnabled;->onPostMessage(Landroid/os/Parcelable;)[B

    move-result-object v2

    const-string v3, "timed_out_event"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 375
    iget-wide v2, p1, Lo/setStartIconVisible;->extraCallback:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "creation_timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 376
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    iget-object v2, p1, Lo/setStartIconVisible;->asBinder:Lo/zzir;

    invoke-static {v2}, Lo/setHelperTextEnabled;->onPostMessage(Landroid/os/Parcelable;)[B

    move-result-object v2

    const-string v3, "triggered_event"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 377
    iget-object v2, p1, Lo/setStartIconVisible;->onMessageChannelReady:Lo/setError;

    iget-wide v2, v2, Lo/setError;->extraCallback:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "triggered_timestamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 378
    iget-wide v2, p1, Lo/setStartIconVisible;->ICustomTabsCallback$Stub:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "time_to_live"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 379
    invoke-virtual {p0}, Lo/setChipTextResource;->newSession()Lo/setHelperTextEnabled;

    iget-object v2, p1, Lo/setStartIconVisible;->ICustomTabsCallback$Stub$Proxy:Lo/zzir;

    invoke-static {v2}, Lo/setHelperTextEnabled;->onPostMessage(Landroid/os/Parcelable;)[B

    move-result-object v2

    const-string v3, "expired_event"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 380
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "conditional_properties"

    const/4 v4, 0x0

    const/4 v5, 0x5

    .line 382
    invoke-virtual {v2, v3, v4, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 384
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 385
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v2, "Failed to insert/update conditional user property (got -1)"

    iget-object v3, p1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    .line 386
    invoke-static {v3}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 387
    invoke-virtual {v0, v2, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 390
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 391
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    iget-object p1, p1, Lo/setStartIconVisible;->ICustomTabsCallback:Ljava/lang/String;

    .line 392
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v3, "Error storing conditional user property"

    .line 393
    invoke-virtual {v2, v3, p1, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;II)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lo/cH$onTransact;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 827
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 828
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 829
    :goto_0
    invoke-static {v2}, Lo/extraCallback$onNavigationEvent;->onMessageChannelReady(Z)V

    if-lez p3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 830
    :goto_1
    invoke-static {v2}, Lo/extraCallback$onNavigationEvent;->onMessageChannelReady(Z)V

    .line 831
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x0

    .line 833
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "queue"

    const-string v5, "rowid"

    const-string v6, "data"

    const-string v7, "retry_count"

    .line 834
    filled-new-array {v5, v6, v7}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_id=?"

    new-array v7, v0, [Ljava/lang/String;

    aput-object p1, v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, "rowid"

    .line 835
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 836
    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 837
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-nez p2, :cond_3

    .line 838
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    .line 840
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    .line 842
    :cond_3
    :try_start_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 844
    :cond_4
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 845
    :try_start_2
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 846
    invoke-virtual {p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v7

    invoke-virtual {v7, v6}, Lo/setErrorTextColor;->extraCallback([B)[B

    move-result-object v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 853
    :try_start_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_5

    array-length v7, v6
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/2addr v7, v3

    if-gt v7, p3, :cond_7

    .line 854
    :cond_5
    :try_start_4
    invoke-static {}, Lo/cH$onTransact;->MediaBrowserCompat$ConnectionCallback$ConnectionCallbackApi21()Lo/cH$onTransact$extraCallback;

    move-result-object v7

    invoke-static {v7, v6}, Lo/setErrorTextColor;->onPostMessage(Lo/startRecording;[B)Lo/startRecording;

    move-result-object v7

    check-cast v7, Lo/cH$onTransact$extraCallback;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v8, 0x2

    .line 861
    :try_start_5
    invoke-interface {v2, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_6

    .line 862
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Lo/cH$onTransact$extraCallback;->ICustomTabsCallback$Stub(I)Lo/cH$onTransact$extraCallback;

    .line 863
    :cond_6
    array-length v6, v6

    add-int/2addr v3, v6

    .line 864
    invoke-virtual {v7}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v6

    check-cast v6, Lo/fa;

    check-cast v6, Lo/cH$onTransact;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_0
    move-exception v4

    .line 857
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v5

    .line 858
    invoke-virtual {v5}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v5

    const-string v6, "Failed to merge queued bundle. appId"

    .line 859
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v4

    .line 849
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v5

    .line 850
    invoke-virtual {v5}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v5

    const-string v6, "Failed to unzip queued bundle. appId"

    .line 851
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v4}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 865
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_7

    if-le v3, p3, :cond_4

    :cond_7
    if-eqz v2, :cond_8

    .line 868
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p2

    .line 871
    :try_start_6
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p3

    invoke-virtual {p3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p3

    const-string v0, "Error querying bundles. appId"

    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, v0, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 872
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_9

    .line 874
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_9
    return-object p1

    :goto_3
    if-eqz v2, :cond_a

    .line 877
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 878
    :cond_a
    throw p1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lo/setErrorIconDrawable;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p1

    .line 293
    invoke-static/range {p1 .. p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 294
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 295
    invoke-virtual/range {p0 .. p0}, Lo/setHintTextColor;->read()V

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 298
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v10, 0x3

    invoke-direct {v1, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 299
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "app_id=?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-static/range {p2 .. p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v3, :cond_0

    move-object/from16 v3, p2

    .line 302
    :try_start_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, " and origin=?"

    .line 303
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    .line 304
    :goto_0
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 305
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v4, " and name glob ?"

    .line 306
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, [Ljava/lang/String;

    .line 308
    invoke-virtual/range {p0 .. p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v12, "user_attributes"

    const-string v1, "name"

    const-string v4, "set_timestamp"

    const-string v5, "value"

    const-string v6, "origin"

    .line 309
    filled-new-array {v1, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v13

    .line 310
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v18, "rowid"

    const-string v19, "1001"

    .line 312
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 313
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_3

    if-eqz v11, :cond_2

    .line 316
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    .line 318
    :cond_3
    :goto_1
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_4

    .line 319
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 320
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v4, "Read more than the max allowed user properties, ignoring excess"

    .line 321
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 322
    invoke-virtual {v1, v4, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    move-object/from16 v12, p0

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 324
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    .line 325
    invoke-interface {v11, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v1, 0x2

    move-object/from16 v12, p0

    .line 326
    :try_start_4
    invoke-direct {v12, v11, v1}, Lo/zzzv;->onMessageChannelReady(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v7

    .line 327
    invoke-interface {v11, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-nez v7, :cond_5

    .line 329
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 330
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "(2)Read invalid user property value, ignoring it"

    .line 331
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v14, p3

    .line 332
    invoke-virtual {v1, v2, v3, v13, v14}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    move-object/from16 v14, p3

    .line 333
    new-instance v15, Lo/setErrorIconDrawable;

    move-object v1, v15

    move-object/from16 v2, p1

    move-object v3, v13

    invoke-direct/range {v1 .. v7}, Lo/setErrorIconDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 334
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-nez v1, :cond_7

    :goto_3
    if-eqz v11, :cond_6

    .line 338
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v0

    :cond_7
    move-object v3, v13

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v13

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object/from16 v12, p0

    goto :goto_7

    :catch_4
    move-exception v0

    move-object/from16 v12, p0

    move-object/from16 v3, p2

    :goto_4
    move-object v11, v9

    .line 341
    :goto_5
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 342
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "(2)Error querying user properties"

    .line 343
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4, v3, v0}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 344
    invoke-static {}, Lo/AdUrlAdapter;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 345
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->getStateLabel:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v8, v1}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 346
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v11, :cond_8

    .line 348
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_8
    return-object v0

    :cond_9
    if-eqz v11, :cond_a

    .line 352
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object v9

    :catchall_2
    move-exception v0

    :goto_6
    move-object v9, v11

    :goto_7
    if-eqz v9, :cond_b

    .line 355
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 356
    :cond_b
    throw v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/setErrorIconDrawable;
    .locals 18

    move-object/from16 v8, p2

    .line 206
    invoke-static/range {p1 .. p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 207
    invoke-static/range {p2 .. p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lo/setHintTextColor;->read()V

    const/4 v9, 0x0

    .line 211
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    const-string v11, "user_attributes"

    const-string v0, "set_timestamp"

    const-string v1, "value"

    const-string v2, "origin"

    .line 212
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v12

    const-string v13, "app_id=? and name=?"

    const/4 v0, 0x2

    new-array v14, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v14, v1

    const/4 v2, 0x1

    aput-object v8, v14, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 213
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 214
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_1

    if-eqz v10, :cond_0

    .line 217
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v9

    .line 219
    :cond_1
    :try_start_2
    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v11, p0

    .line 220
    :try_start_3
    invoke-direct {v11, v10, v2}, Lo/zzzv;->onMessageChannelReady(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object v7

    .line 221
    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 222
    new-instance v0, Lo/setErrorIconDrawable;

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v4, p2

    invoke-direct/range {v1 .. v7}, Lo/setErrorIconDrawable;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V

    .line 223
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 224
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 225
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Got multiple records for user property, expected one. appId"

    .line 226
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 227
    invoke-virtual {v1, v2, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_2
    if-eqz v10, :cond_3

    .line 230
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v11, p0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v11, p0

    move-object v10, v9

    .line 233
    :goto_0
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 234
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Error querying user property. appId"

    .line 235
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 236
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v4

    invoke-virtual {v4, v8}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 237
    invoke-virtual {v1, v2, v3, v4, v0}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v10, :cond_4

    .line 239
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v9

    :catchall_2
    move-exception v0

    :goto_1
    move-object v9, v10

    :goto_2
    if-eqz v9, :cond_5

    .line 242
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 243
    :cond_5
    throw v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Lo/setFabAnimationMode;
    .locals 34

    move-object/from16 v1, p1

    .line 527
    invoke-static/range {p1 .. p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 528
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 529
    invoke-virtual/range {p0 .. p0}, Lo/setHintTextColor;->read()V

    const/4 v2, 0x0

    .line 531
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "apps"

    const-string v5, "app_instance_id"

    const-string v6, "gmp_app_id"

    const-string v7, "resettable_device_id_hash"

    const-string v8, "last_bundle_index"

    const-string v9, "last_bundle_start_timestamp"

    const-string v10, "last_bundle_end_timestamp"

    const-string v11, "app_version"

    const-string v12, "app_store"

    const-string v13, "gmp_version"

    const-string v14, "dev_cert_hash"

    const-string v15, "measurement_enabled"

    const-string v16, "day"

    const-string v17, "daily_public_events_count"

    const-string v18, "daily_events_count"

    const-string v19, "daily_conversions_count"

    const-string v20, "config_fetched_time"

    const-string v21, "failed_config_fetch_time"

    const-string v22, "app_version_int"

    const-string v23, "firebase_instance_id"

    const-string v24, "daily_error_events_count"

    const-string v25, "daily_realtime_events_count"

    const-string v26, "health_monitor_sample"

    const-string v27, "android_id"

    const-string v28, "adid_reporting_enabled"

    const-string v29, "ssaid_reporting_enabled"

    const-string v30, "admob_app_id"

    const-string v31, "dynamite_version"

    const-string v32, "safelisted_events"

    const-string v33, "ga_app_id"

    .line 532
    filled-new-array/range {v5 .. v33}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "app_id=?"

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v1, v7, v11

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 533
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 534
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_1

    if-eqz v3, :cond_0

    .line 537
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v2

    .line 539
    :cond_1
    :try_start_2
    new-instance v4, Lo/setFabAnimationMode;
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v5, p0

    :try_start_3
    iget-object v6, v5, Lo/zzzv;->extraCallback:Lo/setHint;

    invoke-virtual {v6}, Lo/setHint;->IPostMessageService()Lo/setCheckedIcon;

    move-result-object v6

    invoke-direct {v4, v6, v1}, Lo/setFabAnimationMode;-><init>(Lo/setCheckedIcon;Ljava/lang/String;)V

    .line 540
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lo/setFabAnimationMode;->onPostMessage(Ljava/lang/String;)V

    .line 541
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lo/setFabAnimationMode;->onNavigationEvent(Ljava/lang/String;)V

    const/4 v6, 0x2

    .line 542
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lo/setFabAnimationMode;->extraCallback(Ljava/lang/String;)V

    const/4 v6, 0x3

    .line 543
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lo/setFabAnimationMode;->asInterface(J)V

    const/4 v6, 0x4

    .line 544
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lo/setFabAnimationMode;->onPostMessage(J)V

    const/4 v6, 0x5

    .line 545
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lo/setFabAnimationMode;->onMessageChannelReady(J)V

    const/4 v6, 0x6

    .line 546
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub(Ljava/lang/String;)V

    const/4 v6, 0x7

    .line 547
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lo/setFabAnimationMode;->onRelationshipValidationResult(Ljava/lang/String;)V

    const/16 v6, 0x8

    .line 548
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lo/setFabAnimationMode;->extraCallback(J)V

    const/16 v6, 0x9

    .line 549
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lo/setFabAnimationMode;->ICustomTabsCallback(J)V

    const/16 v6, 0xa

    .line 550
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v4, v6}, Lo/setFabAnimationMode;->onMessageChannelReady(Z)V

    const/16 v6, 0xb

    .line 551
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lo/setFabAnimationMode;->onTransact(J)V

    const/16 v6, 0xc

    .line 552
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lo/setFabAnimationMode;->newSession(J)V

    const/16 v6, 0xd

    .line 553
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lo/setFabAnimationMode;->ICustomTabsService(J)V

    const/16 v6, 0xe

    .line 554
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub$Proxy(J)V

    const/16 v6, 0xf

    .line 555
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lo/setFabAnimationMode;->onRelationshipValidationResult(J)V

    const/16 v6, 0x10

    .line 556
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub(J)V

    const/16 v6, 0x11

    .line 557
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-eqz v7, :cond_4

    const-wide/32 v6, -0x80000000

    goto :goto_2

    :cond_4
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    int-to-long v6, v6

    :goto_2
    invoke-virtual {v4, v6, v7}, Lo/setFabAnimationMode;->onNavigationEvent(J)V

    const/16 v6, 0x12

    .line 558
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lo/setFabAnimationMode;->asInterface(Ljava/lang/String;)V

    const/16 v6, 0x13

    .line 559
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lo/setFabAnimationMode;->warmup(J)V

    const/16 v6, 0x14

    .line 560
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lo/setFabAnimationMode;->getInterfaceDescriptor(J)V

    const/16 v6, 0x15

    .line 561
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lo/setFabAnimationMode;->onTransact(Ljava/lang/String;)V

    .line 562
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v6

    sget-object v7, Lo/zziq;->MediaBrowserCompat$MediaBrowserImplApi21$4:Lo/setStatusBarForegroundColor;

    invoke-virtual {v6, v7}, Lo/setStartIconTintList;->onNavigationEvent(Lo/setStatusBarForegroundColor;)Z

    move-result v6

    const-wide/16 v7, 0x0

    if-nez v6, :cond_6

    const/16 v6, 0x16

    .line 563
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-eqz v9, :cond_5

    move-wide v9, v7

    goto :goto_3

    :cond_5
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    :goto_3
    invoke-virtual {v4, v9, v10}, Lo/setFabAnimationMode;->extraCommand(J)V

    :cond_6
    const/16 v6, 0x17

    .line 564
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_8

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_4

    :cond_7
    const/4 v6, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 v6, 0x1

    :goto_5
    invoke-virtual {v4, v6}, Lo/setFabAnimationMode;->onNavigationEvent(Z)V

    const/16 v6, 0x18

    .line 565
    invoke-interface {v3, v6}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_a

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    :cond_a
    :goto_6
    invoke-virtual {v4, v0}, Lo/setFabAnimationMode;->extraCallback(Z)V

    const/16 v0, 0x19

    .line 566
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lo/setFabAnimationMode;->onMessageChannelReady(Ljava/lang/String;)V

    const/16 v0, 0x1a

    .line 567
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_7

    :cond_b
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    :goto_7
    invoke-virtual {v4, v7, v8}, Lo/setFabAnimationMode;->asBinder(J)V

    const/16 v0, 0x1b

    .line 568
    invoke-interface {v3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v6

    if-nez v6, :cond_c

    .line 570
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, ","

    const/4 v7, -0x1

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 571
    invoke-virtual {v4, v0}, Lo/setFabAnimationMode;->onPostMessage(Ljava/util/List;)V

    .line 572
    :cond_c
    invoke-static {}, Lo/AudioSink$InitializationException;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v6, Lo/zziq;->onConnectionFailed:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, v1, v6}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x1c

    .line 573
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lo/setFabAnimationMode;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 574
    :cond_d
    invoke-virtual {v4}, Lo/setFabAnimationMode;->onMessageChannelReady()V

    .line 575
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 576
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v6, "Got multiple records for app, expected one. appId"

    .line 578
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_e
    if-eqz v3, :cond_f

    .line 581
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_f
    return-object v4

    :catch_0
    move-exception v0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_9

    :catch_1
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v5, p0

    move-object v3, v2

    .line 584
    :goto_8
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v4

    invoke-virtual {v4}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v4

    const-string v6, "Error querying app. appId"

    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v4, v6, v1, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v3, :cond_10

    .line 586
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_10
    return-object v2

    :catchall_2
    move-exception v0

    :goto_9
    move-object v2, v3

    :goto_a
    if-eqz v2, :cond_11

    .line 589
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 590
    :cond_11
    throw v0
.end method

.method public final onMessageChannelReady(Lo/dispatchMessageTraced;)V
    .locals 5

    .line 122
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 124
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 125
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 126
    iget-object v1, p1, Lo/dispatchMessageTraced;->onPostMessage:Ljava/lang/String;

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v1, p1, Lo/dispatchMessageTraced;->ICustomTabsCallback:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-wide v1, p1, Lo/dispatchMessageTraced;->onNavigationEvent:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lifetime_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    iget-wide v1, p1, Lo/dispatchMessageTraced;->onMessageChannelReady:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "current_bundle_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    iget-wide v1, p1, Lo/dispatchMessageTraced;->onTransact:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_fire_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    iget-wide v1, p1, Lo/dispatchMessageTraced;->onRelationshipValidationResult:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "last_bundled_timestamp"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    iget-object v1, p1, Lo/dispatchMessageTraced;->asBinder:Ljava/lang/Long;

    const-string v2, "last_bundled_day"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 133
    iget-object v1, p1, Lo/dispatchMessageTraced;->ICustomTabsCallback$Stub:Ljava/lang/Long;

    const-string v2, "last_sampled_complex_event_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 134
    iget-object v1, p1, Lo/dispatchMessageTraced;->asInterface:Ljava/lang/Long;

    const-string v2, "last_sampling_rate"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 135
    iget-wide v1, p1, Lo/dispatchMessageTraced;->extraCallback:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "current_session_count"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 137
    iget-object v1, p1, Lo/dispatchMessageTraced;->newSession:Ljava/lang/Boolean;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lo/dispatchMessageTraced;->newSession:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v3, 0x1

    .line 138
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "last_exempt_from_sampling"

    .line 139
    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 140
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v3, "events"

    const/4 v4, 0x5

    .line 142
    invoke-virtual {v1, v3, v2, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 144
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Failed to insert/update event aggregates (got -1). appId"

    iget-object v2, p1, Lo/dispatchMessageTraced;->onPostMessage:Ljava/lang/String;

    .line 146
    invoke-static {v2}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 147
    invoke-virtual {v0, v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    iget-object p1, p1, Lo/dispatchMessageTraced;->onPostMessage:Ljava/lang/String;

    .line 152
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing event aggregates. appId"

    .line 153
    invoke-virtual {v1, v2, p1, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/setFabAnimationMode;)V
    .locals 8

    const-string v0, "apps"

    .line 591
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 593
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 594
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 595
    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-virtual {p1}, Lo/setFabAnimationMode;->onNavigationEvent()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_instance_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual {p1}, Lo/setFabAnimationMode;->extraCallback()Ljava/lang/String;

    move-result-object v2

    const-string v3, "gmp_app_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual {p1}, Lo/setFabAnimationMode;->asBinder()Ljava/lang/String;

    move-result-object v2

    const-string v3, "resettable_device_id_hash"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {p1}, Lo/setFabAnimationMode;->mayLaunchUrl()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_bundle_index"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 600
    invoke-virtual {p1}, Lo/setFabAnimationMode;->asInterface()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_bundle_start_timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 601
    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsService()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "last_bundle_end_timestamp"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 602
    invoke-virtual {p1}, Lo/setFabAnimationMode;->newSession()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_version"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {p1}, Lo/setFabAnimationMode;->warmup()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_store"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub$Proxy()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "gmp_version"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 605
    invoke-virtual {p1}, Lo/setFabAnimationMode;->extraCommand()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "dev_cert_hash"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 606
    invoke-virtual {p1}, Lo/setFabAnimationMode;->requestPostMessageChannel()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "measurement_enabled"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 607
    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsService$Stub$Proxy()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "day"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 608
    invoke-virtual {p1}, Lo/setFabAnimationMode;->IPostMessageService$Stub()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_public_events_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 609
    invoke-virtual {p1}, Lo/setFabAnimationMode;->validateRelationship()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_events_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 610
    invoke-virtual {p1}, Lo/setFabAnimationMode;->INotificationSideChannel()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_conversions_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 611
    invoke-virtual {p1}, Lo/setFabAnimationMode;->postMessage()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "config_fetched_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 612
    invoke-virtual {p1}, Lo/setFabAnimationMode;->IPostMessageService()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "failed_config_fetch_time"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 613
    invoke-virtual {p1}, Lo/setFabAnimationMode;->getInterfaceDescriptor()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "app_version_int"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 614
    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub()Ljava/lang/String;

    move-result-object v2

    const-string v3, "firebase_instance_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    invoke-virtual {p1}, Lo/setFabAnimationMode;->cancel()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_error_events_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 616
    invoke-virtual {p1}, Lo/setFabAnimationMode;->IPostMessageService$Stub$Proxy()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "daily_realtime_events_count"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 617
    invoke-virtual {p1}, Lo/setFabAnimationMode;->cancelAll()Ljava/lang/String;

    move-result-object v2

    const-string v3, "health_monitor_sample"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    invoke-virtual {p1}, Lo/setFabAnimationMode;->setDefaultImpl()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "android_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 619
    invoke-virtual {p1}, Lo/setFabAnimationMode;->INotificationSideChannel$Stub()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "adid_reporting_enabled"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 620
    invoke-virtual {p1}, Lo/setFabAnimationMode;->INotificationSideChannel$Default()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "ssaid_reporting_enabled"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 621
    invoke-virtual {p1}, Lo/setFabAnimationMode;->onRelationshipValidationResult()Ljava/lang/String;

    move-result-object v2

    const-string v3, "admob_app_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p1}, Lo/setFabAnimationMode;->updateVisuals()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "dynamite_version"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 623
    invoke-virtual {p1}, Lo/setFabAnimationMode;->IconCompatParcelizer()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 624
    invoke-virtual {p1}, Lo/setFabAnimationMode;->IconCompatParcelizer()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 625
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 626
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v2

    .line 627
    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Safelisted events should not be an empty list. appId"

    invoke-virtual {v2, v4, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 629
    :cond_0
    invoke-virtual {p1}, Lo/setFabAnimationMode;->IconCompatParcelizer()Ljava/util/List;

    move-result-object v2

    const-string v3, ","

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "safelisted_events"

    .line 630
    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    :cond_1
    :goto_0
    invoke-static {}, Lo/AudioSink$InitializationException;->onPostMessage()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v2

    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lo/zziq;->onConnectionFailed:Lo/setStatusBarForegroundColor;

    invoke-virtual {v2, v3, v4}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 632
    invoke-virtual {p1}, Lo/setFabAnimationMode;->onTransact()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ga_app_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "app_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 635
    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x5

    .line 638
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    .line 640
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 641
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Failed to insert/update app (got -1). appId"

    .line 642
    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 643
    invoke-virtual {v0, v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception v0

    .line 646
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 647
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 648
    invoke-virtual {p1}, Lo/setFabAnimationMode;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing app. appId"

    invoke-virtual {v1, v2, p1, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/Long;JLo/cH$ICustomTabsCallback;)Z
    .locals 4

    .line 1433
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1434
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 1435
    invoke-static {p5}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1436
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 1437
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    invoke-virtual {p5}, Lo/ab$a;->setInternalConnectionCallback()[B

    move-result-object p5

    .line 1439
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 1440
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v0

    .line 1441
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v1

    invoke-virtual {v1, p1}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    array-length v2, p5

    .line 1442
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Saving complex main event, appId, data size"

    .line 1443
    invoke-virtual {v0, v3, v1, v2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1444
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "app_id"

    .line 1445
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "event_id"

    .line 1446
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1447
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "children_to_process"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "main_event"

    .line 1448
    invoke-virtual {v0, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 p2, 0x0

    .line 1449
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    const-string p4, "main_event_params"

    const/4 p5, 0x0

    const/4 v1, 0x5

    .line 1451
    invoke-virtual {p3, p4, p5, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p3

    const-wide/16 v0, -0x1

    cmp-long p5, p3, v0

    if-nez p5, :cond_0

    .line 1453
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p3

    .line 1454
    invoke-virtual {p3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p3

    const-string p4, "Failed to insert complex main event (got -1). appId"

    .line 1455
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p3, p4, p5}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return p2

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p3

    .line 1459
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p4

    .line 1460
    invoke-virtual {p4}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p4

    .line 1461
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string p5, "Error storing complex main event. appId"

    invoke-virtual {p4, p5, p1, p3}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return p2
.end method

.method public final onMessageChannelReady(Lo/cH$onTransact;Z)Z
    .locals 7

    .line 757
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 758
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 759
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    invoke-virtual {p1}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 761
    invoke-virtual {p1}, Lo/cH$onTransact;->getInterfaceDescriptor()Z

    move-result v0

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Z)V

    .line 762
    invoke-virtual {p0}, Lo/zzzv;->ICustomTabsService$Stub$Proxy()V

    .line 763
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v0

    invoke-interface {v0}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v0

    .line 764
    invoke-virtual {p1}, Lo/cH$onTransact;->warmup()J

    move-result-wide v2

    invoke-static {}, Lo/setStartIconTintList;->onRelationshipValidationResult()J

    move-result-wide v4

    sub-long v4, v0, v4

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 765
    invoke-virtual {p1}, Lo/cH$onTransact;->warmup()J

    move-result-wide v2

    invoke-static {}, Lo/setStartIconTintList;->onRelationshipValidationResult()J

    move-result-wide v4

    add-long/2addr v4, v0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    .line 766
    :cond_0
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 767
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v2

    .line 768
    invoke-virtual {p1}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 769
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 770
    invoke-virtual {p1}, Lo/cH$onTransact;->warmup()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Storing bundle outside of the max uploading time span. appId, now, timestamp"

    .line 771
    invoke-virtual {v2, v4, v3, v0, v1}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 772
    :cond_1
    invoke-virtual {p1}, Lo/ab$a;->setInternalConnectionCallback()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 773
    :try_start_0
    invoke-virtual {p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/setErrorTextColor;->ICustomTabsCallback([B)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 781
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object v2

    array-length v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Saving bundle, size"

    invoke-virtual {v2, v4, v3}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 782
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 783
    invoke-virtual {p1}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    invoke-virtual {p1}, Lo/cH$onTransact;->warmup()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "bundle_end_timestamp"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "data"

    .line 785
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 786
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "has_realtime"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 787
    invoke-virtual {p1}, Lo/cH$onTransact;->search()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 788
    invoke-virtual {p1}, Lo/cH$onTransact;->getItem()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "retry_count"

    invoke-virtual {v2, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 789
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    const-string v0, "queue"

    const/4 v3, 0x0

    .line 790
    invoke-virtual {p2, v0, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p2, v2, v4

    if-nez p2, :cond_3

    .line 792
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    .line 793
    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v0, "Failed to insert bundle (got -1). appId"

    .line 794
    invoke-virtual {p1}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 798
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 799
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    .line 800
    invoke-virtual {p1}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing bundle. appId"

    invoke-virtual {v0, v2, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1

    :catch_1
    move-exception p2

    .line 776
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    .line 778
    invoke-virtual {p1}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Data loss. Failed to serialize bundle. appId"

    .line 779
    invoke-virtual {v0, v2, p1, p2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return v1
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 446
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 447
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 448
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 449
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    const/4 v0, 0x0

    .line 450
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "conditional_properties"

    const-string v3, "app_id=? and name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v0

    const/4 v5, 0x1

    aput-object p2, v4, v5

    .line 452
    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v1

    .line 455
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 456
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    .line 457
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 458
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v3

    invoke-virtual {v3, p2}, Lo/setLiftOnScrollTargetViewId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v3, "Error deleting conditional property"

    .line 459
    invoke-virtual {v2, v3, p1, p2, v1}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return v0
.end method

.method protected final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)[B
    .locals 10

    .line 725
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 726
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 727
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    const/4 v0, 0x0

    .line 729
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "apps"

    const-string v3, "remote_config"

    .line 730
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 731
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    .line 735
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 737
    :cond_1
    :try_start_2
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 738
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 739
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 740
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v4, "Got multiple records for app config, expected one. appId"

    .line 741
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 742
    invoke-virtual {v3, v4, v5}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    if-eqz v1, :cond_3

    .line 745
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v1, v0

    .line 748
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 749
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v4, "Error querying remote config. appId"

    .line 750
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v3, v4, p1, v2}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_4

    .line 752
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_5

    .line 755
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 756
    :cond_5
    throw p1
.end method

.method public final onPostMessage(Ljava/lang/String;)J
    .locals 6

    .line 650
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 651
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 652
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 653
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 654
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v1

    .line 655
    sget-object v2, Lo/zziq;->getInterfaceDescriptor:Lo/setStatusBarForegroundColor;

    invoke-virtual {v1, p1, v2}, Lo/setStartIconTintList;->onMessageChannelReady(Ljava/lang/String;Lo/setStatusBarForegroundColor;)I

    move-result v1

    const v2, 0xf4240

    .line 656
    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    .line 657
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 658
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "raw_events"

    const-string v4, "rowid in (select rowid from raw_events where app_id=? order by rowid desc limit -1 offset ?)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object p1, v5, v2

    const/4 v2, 0x1

    aput-object v1, v5, v2

    .line 660
    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, p1

    return-wide v0

    :catch_0
    move-exception v0

    .line 663
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 664
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 665
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error deleting over the limit events. appId"

    invoke-virtual {v1, v2, p1, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final onPostMessage(Lo/cH$onTransact;)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1326
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1327
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 1328
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    invoke-virtual {p1}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 1330
    invoke-virtual {p1}, Lo/ab$a;->setInternalConnectionCallback()[B

    move-result-object v0

    .line 1331
    invoke-virtual {p0}, Lo/setHintEnabled;->O_()Lo/setErrorTextColor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/setErrorTextColor;->onNavigationEvent([B)J

    move-result-wide v1

    .line 1332
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1333
    invoke-virtual {p1}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object v4

    const-string v5, "app_id"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "metadata_fingerprint"

    invoke-virtual {v3, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "metadata"

    .line 1335
    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1336
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v4, "raw_events_metadata"

    const/4 v5, 0x0

    const/4 v6, 0x4

    .line 1337
    invoke-virtual {v0, v4, v5, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    :catch_0
    move-exception v0

    .line 1340
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 1341
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    .line 1342
    invoke-virtual {p1}, Lo/cH$onTransact;->validateRelationship()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v2, "Error storing raw event metadata. appId"

    .line 1343
    invoke-virtual {v1, v2, p1, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1344
    throw v0
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/Long;)Landroid/util/Pair;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")",
            "Landroid/util/Pair<",
            "Lo/cH$ICustomTabsCallback;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1397
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1398
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    const/4 v0, 0x0

    .line 1400
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select main_event, children_to_process from main_event_params where app_id=? and event_id=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 1402
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    .line 1403
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1404
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1405
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p1

    invoke-virtual {p1}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p1

    const-string p2, "Main event not found"

    invoke-virtual {p1, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    .line 1407
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 1409
    :cond_1
    :try_start_2
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 1410
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1411
    :try_start_3
    invoke-static {}, Lo/cH$ICustomTabsCallback;->onTransact()Lo/cH$ICustomTabsCallback$onNavigationEvent;

    move-result-object v4

    invoke-static {v4, v2}, Lo/setErrorTextColor;->onPostMessage(Lo/startRecording;[B)Lo/startRecording;

    move-result-object v2

    check-cast v2, Lo/cH$ICustomTabsCallback$onNavigationEvent;

    invoke-virtual {v2}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v2

    check-cast v2, Lo/fa;

    check-cast v2, Lo/cH$ICustomTabsCallback;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1421
    :try_start_4
    invoke-static {v2, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_2

    .line 1423
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p1

    :catch_0
    move-exception v2

    .line 1414
    :try_start_5
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    .line 1415
    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v4, "Failed to merge main event. appId, eventId"

    .line 1416
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 1417
    invoke-virtual {v3, v4, p1, p2, v2}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_3

    .line 1419
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v1, v0

    .line 1426
    :goto_0
    :try_start_6
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v2, "Error selecting main event"

    invoke-virtual {p2, v2, p1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v1, :cond_4

    .line 1428
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_5

    .line 1430
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1431
    :cond_5
    throw p1
.end method

.method public final onPostMessage(J)Ljava/lang/String;
    .locals 4

    .line 1353
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1354
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    const/4 v0, 0x0

    .line 1356
    :try_start_0
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "select app_id from apps where app_id in (select distinct app_id from raw_events) and config_fetched_time < ? order by failed_config_fetch_time limit 1;"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    .line 1358
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v3, p2

    .line 1359
    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1361
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object p2

    invoke-virtual {p2}, Lo/HideBottomViewOnScrollBehavior;->validateRelationship()Lo/setFabAlignmentMode;

    move-result-object p2

    const-string v1, "No expired configs for apps with pending events"

    invoke-virtual {p2, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 1363
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v0

    .line 1365
    :cond_1
    :try_start_2
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    .line 1367
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object p2

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    move-object p1, v0

    .line 1370
    :goto_0
    :try_start_3
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Error selecting expired configs"

    invoke-virtual {v1, v2, p2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_3

    .line 1372
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catchall_1
    move-exception p2

    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_4

    .line 1374
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1375
    :cond_4
    throw p2
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/dispatchMessageTraced;
    .locals 25

    move-object/from16 v15, p2

    .line 73
    invoke-static/range {p1 .. p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 74
    invoke-static/range {p2 .. p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 76
    invoke-virtual/range {p0 .. p0}, Lo/setHintTextColor;->read()V

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "lifetime_count"

    const-string v2, "current_bundle_count"

    const-string v3, "last_fire_timestamp"

    const-string v4, "last_bundled_timestamp"

    const-string v5, "last_bundled_day"

    const-string v6, "last_sampled_complex_event_id"

    const-string v7, "last_sampling_rate"

    const-string v8, "last_exempt_from_sampling"

    const-string v9, "current_session_count"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/16 v18, 0x0

    .line 80
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "events"

    const/4 v9, 0x0

    new-array v3, v9, [Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/String;

    const-string v4, "app_id=? and name=?"

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    aput-object p1, v5, v9

    const/4 v10, 0x1

    aput-object v15, v5, v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 83
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 84
    :try_start_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v1, :cond_1

    if-eqz v14, :cond_0

    .line 87
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v18

    .line 89
    :cond_1
    :try_start_2
    invoke-interface {v14, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 90
    invoke-interface {v14, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 91
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v0, 0x3

    .line 92
    invoke-interface {v14, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    move-wide/from16 v16, v2

    goto :goto_0

    :cond_2
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    move-wide/from16 v16, v0

    :goto_0
    const/4 v0, 0x4

    .line 93
    invoke-interface {v14, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object/from16 v0, v18

    goto :goto_1

    :cond_3
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_1
    const/4 v1, 0x5

    .line 94
    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_4

    move-object/from16 v19, v18

    goto :goto_2

    :cond_4
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v19, v1

    :goto_2
    const/4 v1, 0x6

    .line 95
    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_5

    move-object/from16 v20, v18

    goto :goto_3

    :cond_5
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v20, v1

    :goto_3
    const/4 v1, 0x7

    .line 97
    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v8, :cond_7

    .line 98
    :try_start_3
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    const-wide/16 v23, 0x1

    cmp-long v1, v21, v23

    if-nez v1, :cond_6

    const/4 v9, 0x1

    :cond_6
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object/from16 v21, v1

    goto :goto_4

    :catch_0
    move-exception v0

    goto/16 :goto_7

    :cond_7
    move-object/from16 v21, v18

    :goto_4
    const/16 v1, 0x8

    .line 99
    :try_start_4
    invoke-interface {v14, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v8

    if-eqz v8, :cond_8

    move-wide v8, v2

    goto :goto_5

    :cond_8
    invoke-interface {v14, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    move-wide v8, v1

    .line 100
    :goto_5
    new-instance v22, Lo/dispatchMessageTraced;
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-wide v10, v11

    move-wide/from16 v12, v16

    move-object/from16 v23, v14

    move-object v14, v0

    move-object/from16 v15, v19

    move-object/from16 v16, v20

    move-object/from16 v17, v21

    :try_start_5
    invoke-direct/range {v1 .. v17}, Lo/dispatchMessageTraced;-><init>(Ljava/lang/String;Ljava/lang/String;JJJJJLjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 101
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 102
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v0

    const-string v1, "Got multiple records for event aggregates, expected one. appId"

    .line 104
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 105
    invoke-virtual {v0, v1, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_9
    if-eqz v23, :cond_a

    .line 108
    invoke-interface/range {v23 .. v23}, Landroid/database/Cursor;->close()V

    :cond_a
    return-object v22

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    move-object/from16 v14, v23

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v23, v14

    :goto_6
    move-object/from16 v18, v23

    goto :goto_8

    :catch_2
    move-exception v0

    move-object/from16 v23, v14

    goto :goto_7

    :catchall_2
    move-exception v0

    goto :goto_8

    :catch_3
    move-exception v0

    move-object/from16 v14, v18

    .line 111
    :goto_7
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Error querying events. appId"

    .line 113
    invoke-static/range {p1 .. p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 114
    invoke-virtual/range {p0 .. p0}, Lo/setChipTextResource;->ICustomTabsService()Lo/setLiftOnScrollTargetViewId;

    move-result-object v4

    move-object/from16 v5, p2

    invoke-virtual {v4, v5}, Lo/setLiftOnScrollTargetViewId;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {v1, v2, v3, v4, v0}, Lo/setFabAlignmentMode;->extraCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v14, :cond_b

    .line 117
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_b
    return-object v18

    :catchall_3
    move-exception v0

    move-object/from16 v18, v14

    :goto_8
    if-eqz v18, :cond_c

    .line 120
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 121
    :cond_c
    throw v0
.end method

.method public final onPostMessage()V
    .locals 1

    .line 8
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 9
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method public final onRelationshipValidationResult(Ljava/lang/String;)J
    .locals 3

    .line 1351
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "select count(1) from events where app_id=? and name not like \'!_%\' escape \'!\'"

    const-wide/16 v1, 0x0

    .line 1352
    invoke-direct {p0, p1, v0, v1, v2}, Lo/zzzv;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final onRelationshipValidationResult()Ljava/lang/String;
    .locals 6

    .line 803
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "select app_id from queue order by has_realtime desc, rowid asc limit 1;"

    .line 806
    invoke-virtual {v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 807
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 808
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    .line 810
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v1

    :cond_1
    if-eqz v0, :cond_2

    .line 814
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v1

    :catch_0
    move-exception v2

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v0, v1

    .line 817
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v3

    invoke-virtual {v3}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v3

    const-string v4, "Database error getting next bundle app id"

    invoke-virtual {v3, v4, v2}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_3

    .line 819
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v1

    :catchall_1
    move-exception v1

    :goto_1
    if-eqz v0, :cond_4

    .line 822
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 823
    :cond_4
    throw v1
.end method

.method final onTransact()Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    .line 68
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 69
    :try_start_0
    iget-object v0, p0, Lo/zzzv;->asInterface:Lo/zzco;

    invoke-virtual {v0}, Lo/zzco;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Error opening database"

    invoke-virtual {v1, v2, v0}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    throw v0
.end method

.method final onTransact(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lo/cB$onNavigationEvent;",
            ">;>;"
        }
    .end annotation

    .line 995
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    .line 996
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 997
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 998
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 999
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    .line 1000
    invoke-virtual {p0}, Lo/zzzv;->onTransact()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v9, 0x0

    :try_start_0
    const-string v2, "event_filters"

    const-string v3, "audience_id"

    const-string v4, "data"

    .line 1002
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_id=? AND event_name=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v5, v10

    const/4 v11, 0x1

    aput-object p2, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1003
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1004
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1005
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_0

    .line 1007
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p1

    .line 1009
    :cond_1
    :try_start_2
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1010
    :try_start_3
    invoke-static {}, Lo/cB$onNavigationEvent;->newSession()Lo/cB$onNavigationEvent$extraCallback;

    move-result-object v2

    invoke-static {v2, v1}, Lo/setErrorTextColor;->onPostMessage(Lo/startRecording;[B)Lo/startRecording;

    move-result-object v1

    check-cast v1, Lo/cB$onNavigationEvent$extraCallback;

    invoke-virtual {v1}, Lo/fa$onNavigationEvent;->IPostMessageService$Stub()Lo/ek;

    move-result-object v1

    check-cast v1, Lo/fa;

    check-cast v1, Lo/cB$onNavigationEvent;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1017
    :try_start_4
    invoke-interface {p2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 1018
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_2

    .line 1020
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    :cond_2
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1013
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v2

    .line 1014
    invoke-virtual {v2}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v2

    const-string v3, "Failed to merge filter. appId"

    .line 1015
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1023
    :goto_0
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v1, :cond_1

    if-eqz p2, :cond_3

    .line 1025
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0

    :catch_1
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p2, v9

    .line 1027
    :goto_1
    :try_start_5
    invoke-virtual {p0}, Lo/setChipTextResource;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v1

    .line 1028
    invoke-virtual {v1}, Lo/HideBottomViewOnScrollBehavior;->onNavigationEvent()Lo/setFabAlignmentMode;

    move-result-object v1

    const-string v2, "Database error querying filters. appId"

    .line 1029
    invoke-static {p1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lo/setFabAlignmentMode;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1030
    invoke-static {}, Lo/AdUrlAdapter;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1031
    invoke-virtual {p0}, Lo/setChipTextResource;->requestPostMessageChannel()Lo/setStartIconTintList;

    move-result-object v0

    sget-object v1, Lo/zziq;->getStateLabel:Lo/setStatusBarForegroundColor;

    invoke-virtual {v0, p1, v1}, Lo/setStartIconTintList;->onNavigationEvent(Ljava/lang/String;Lo/setStatusBarForegroundColor;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1032
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p2, :cond_4

    .line 1034
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_4
    return-object p1

    :cond_5
    if-eqz p2, :cond_6

    .line 1038
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v9

    :catchall_1
    move-exception p1

    move-object v9, p2

    :goto_2
    if-eqz v9, :cond_7

    .line 1041
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1042
    :cond_7
    throw p1
.end method

.method public final onTransact(Ljava/lang/String;)Lo/zzq;
    .locals 2

    .line 1540
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1541
    invoke-virtual {p0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 1542
    invoke-virtual {p0}, Lo/setHintTextColor;->read()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "select consent_state from consent_settings where app_id=? limit 1;"

    const-string v1, "G1"

    .line 1544
    invoke-direct {p0, p1, v0, v1}, Lo/zzzv;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1545
    invoke-static {p1}, Lo/zzq;->onMessageChannelReady(Ljava/lang/String;)Lo/zzq;

    move-result-object p1

    return-object p1
.end method

.method public final validateRelationship()Z
    .locals 5

    const-string v0, "select count(1) > 0 from raw_events"

    const/4 v1, 0x0

    .line 1346
    invoke-direct {p0, v0, v1}, Lo/zzzv;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
