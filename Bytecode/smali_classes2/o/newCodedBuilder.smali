.class public Lo/newCodedBuilder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/newCodedBuilder$onNavigationEvent;
    }
.end annotation


# static fields
.field private static final BACKOFF_END_TIME_IN_MILLIS_KEY:Ljava/lang/String; = "backoff_end_time_in_millis"

.field private static final DEVELOPER_MODE_KEY:Ljava/lang/String; = "is_developer_mode_enabled"

.field private static final FETCH_TIMEOUT_IN_SECONDS_KEY:Ljava/lang/String; = "fetch_timeout_in_seconds"

.field private static final LAST_FETCH_ETAG_KEY:Ljava/lang/String; = "last_fetch_etag"

.field private static final LAST_FETCH_STATUS_KEY:Ljava/lang/String; = "last_fetch_status"

.field public static final LAST_FETCH_TIME_IN_MILLIS_NO_FETCH_YET:J = -0x1L

.field static final LAST_FETCH_TIME_NO_FETCH_YET:Ljava/util/Date;

.field private static final LAST_SUCCESSFUL_FETCH_TIME_IN_MILLIS_KEY:Ljava/lang/String; = "last_fetch_time_in_millis"

.field private static final MINIMUM_FETCH_INTERVAL_IN_SECONDS_KEY:Ljava/lang/String; = "minimum_fetch_interval_in_seconds"

.field static final NO_BACKOFF_TIME:Ljava/util/Date;

.field private static final NO_BACKOFF_TIME_IN_MILLIS:J = -0x1L

.field static final NO_FAILED_FETCHES:I = 0x0

.field private static final NUM_FAILED_FETCHES_KEY:Ljava/lang/String; = "num_failed_fetches"


# instance fields
.field private final backoffMetadataLock:Ljava/lang/Object;

.field private final frcInfoLock:Ljava/lang/Object;

.field private final frcMetadata:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, -0x1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lo/newCodedBuilder;->LAST_FETCH_TIME_NO_FETCH_YET:Ljava/util/Date;

    .line 58
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lo/newCodedBuilder;->NO_BACKOFF_TIME:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    .line 78
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/newCodedBuilder;->frcInfoLock:Ljava/lang/Object;

    .line 79
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/newCodedBuilder;->backoffMetadataLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 148
    iget-object v0, p0, Lo/newCodedBuilder;->frcInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 150
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getBackoffMetadata()Lo/newCodedBuilder$onNavigationEvent;
    .locals 8

    .line 223
    iget-object v0, p0, Lo/newCodedBuilder;->backoffMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    new-instance v1, Lo/newCodedBuilder$onNavigationEvent;

    iget-object v2, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    const-string v3, "num_failed_fetches"

    const/4 v4, 0x0

    .line 225
    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    const-string v5, "backoff_end_time_in_millis"

    const-wide/16 v6, -0x1

    .line 226
    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-direct {v1, v2, v3}, Lo/newCodedBuilder$onNavigationEvent;-><init>(ILjava/util/Date;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 227
    monitor-exit v0

    throw v1
.end method

.method public getFetchTimeoutInSeconds()J
    .locals 4

    .line 87
    iget-object v0, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    const-string v1, "fetch_timeout_in_seconds"

    const-wide/16 v2, 0x3c

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getInfo()Lo/getFilesDirPath;
    .locals 9

    .line 114
    iget-object v0, p0, Lo/newCodedBuilder;->frcInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    const-string v2, "last_fetch_time_in_millis"

    const-wide/16 v3, -0x1

    .line 116
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 119
    iget-object v3, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    const-string v4, "last_fetch_status"

    const/4 v5, 0x0

    .line 120
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 122
    new-instance v4, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;

    invoke-direct {v4}, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;-><init>()V

    iget-object v6, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    const-string v7, "is_developer_mode_enabled"

    .line 124
    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->setDeveloperModeEnabled(Z)Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;

    move-result-object v4

    iget-object v5, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    const-string v6, "fetch_timeout_in_seconds"

    const-wide/16 v7, 0x3c

    .line 126
    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 125
    invoke-virtual {v4, v5, v6}, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->setFetchTimeoutInSeconds(J)Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;

    move-result-object v4

    iget-object v5, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    const-string v6, "minimum_fetch_interval_in_seconds"

    sget-wide v7, Lo/toByteArray;->DEFAULT_MINIMUM_FETCH_INTERVAL_IN_SECONDS:J

    .line 128
    invoke-interface {v5, v6, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 127
    invoke-virtual {v4, v5, v6}, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->setMinimumFetchIntervalInSeconds(J)Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;

    move-result-object v4

    .line 131
    invoke-virtual {v4}, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->build()Lo/CrashlyticsReportPersistence$$Lambda$6;

    move-result-object v4

    .line 133
    invoke-static {}, Lo/toStringUtf8;->newBuilder()Lo/toStringUtf8$onNavigationEvent;

    move-result-object v5

    .line 134
    invoke-virtual {v5, v3}, Lo/toStringUtf8$onNavigationEvent;->withLastFetchStatus(I)Lo/toStringUtf8$onNavigationEvent;

    move-result-object v3

    .line 135
    invoke-virtual {v3, v1, v2}, Lo/toStringUtf8$onNavigationEvent;->withLastSuccessfulFetchTimeInMillis(J)Lo/toStringUtf8$onNavigationEvent;

    move-result-object v1

    .line 136
    invoke-virtual {v1, v4}, Lo/toStringUtf8$onNavigationEvent;->withConfigSettings(Lo/CrashlyticsReportPersistence$$Lambda$6;)Lo/toStringUtf8$onNavigationEvent;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lo/toStringUtf8$onNavigationEvent;->build()Lo/toStringUtf8;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    .line 138
    monitor-exit v0

    throw v1
.end method

.method getLastFetchETag()Ljava/lang/String;
    .locals 3

    .line 108
    iget-object v0, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    const-string v1, "last_fetch_etag"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLastFetchStatus()I
    .locals 3

    .line 97
    iget-object v0, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    const-string v1, "last_fetch_status"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method getLastSuccessfulFetchTime()Ljava/util/Date;
    .locals 5

    .line 101
    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    const-string v2, "last_fetch_time_in_millis"

    const-wide/16 v3, -0x1

    .line 102
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getMinimumFetchIntervalInSeconds()J
    .locals 4

    .line 91
    iget-object v0, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    sget-wide v1, Lo/toByteArray;->DEFAULT_MINIMUM_FETCH_INTERVAL_IN_SECONDS:J

    const-string v3, "minimum_fetch_interval_in_seconds"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public isDeveloperModeEnabled()Z
    .locals 3

    .line 83
    iget-object v0, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    const-string v1, "is_developer_mode_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method resetBackoff()V
    .locals 2

    .line 241
    sget-object v0, Lo/newCodedBuilder;->NO_BACKOFF_TIME:Ljava/util/Date;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lo/newCodedBuilder;->setBackoffMetadata(ILjava/util/Date;)V

    return-void
.end method

.method setBackoffMetadata(ILjava/util/Date;)V
    .locals 4

    .line 231
    iget-object v0, p0, Lo/newCodedBuilder;->backoffMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    .line 233
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "num_failed_fetches"

    .line 234
    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v1, "backoff_end_time_in_millis"

    .line 235
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 236
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 237
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public setConfigSettings(Lo/CrashlyticsReportPersistence$$Lambda$6;)V
    .locals 5

    .line 161
    iget-object v0, p0, Lo/newCodedBuilder;->frcInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    .line 163
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "is_developer_mode_enabled"

    .line 164
    invoke-virtual {p1}, Lo/CrashlyticsReportPersistence$$Lambda$6;->isDeveloperModeEnabled()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "fetch_timeout_in_seconds"

    .line 165
    invoke-virtual {p1}, Lo/CrashlyticsReportPersistence$$Lambda$6;->getFetchTimeoutInSeconds()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "minimum_fetch_interval_in_seconds"

    .line 167
    invoke-virtual {p1}, Lo/CrashlyticsReportPersistence$$Lambda$6;->getMinimumFetchIntervalInSeconds()J

    move-result-wide v3

    .line 166
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 168
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 169
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public setConfigSettingsWithoutWaitingOnDiskWrite(Lo/CrashlyticsReportPersistence$$Lambda$6;)V
    .locals 5

    .line 179
    iget-object v0, p0, Lo/newCodedBuilder;->frcInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 180
    :try_start_0
    iget-object v1, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    .line 181
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "is_developer_mode_enabled"

    .line 182
    invoke-virtual {p1}, Lo/CrashlyticsReportPersistence$$Lambda$6;->isDeveloperModeEnabled()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "fetch_timeout_in_seconds"

    .line 183
    invoke-virtual {p1}, Lo/CrashlyticsReportPersistence$$Lambda$6;->getFetchTimeoutInSeconds()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "minimum_fetch_interval_in_seconds"

    .line 185
    invoke-virtual {p1}, Lo/CrashlyticsReportPersistence$$Lambda$6;->getMinimumFetchIntervalInSeconds()J

    move-result-wide v3

    .line 184
    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 186
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 187
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method setLastFetchETag(Ljava/lang/String;)V
    .locals 3

    .line 213
    iget-object v0, p0, Lo/newCodedBuilder;->frcInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    iget-object v1, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_fetch_etag"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method updateLastFetchAsFailed()V
    .locals 4

    .line 201
    iget-object v0, p0, Lo/newCodedBuilder;->frcInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_0
    iget-object v1, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_fetch_status"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method updateLastFetchAsSuccessfulAt(Ljava/util/Date;)V
    .locals 5

    .line 191
    iget-object v0, p0, Lo/newCodedBuilder;->frcInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    .line 193
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_fetch_status"

    const/4 v3, -0x1

    .line 194
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_fetch_time_in_millis"

    .line 195
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 196
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 197
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method updateLastFetchAsThrottled()V
    .locals 4

    .line 207
    iget-object v0, p0, Lo/newCodedBuilder;->frcInfoLock:Ljava/lang/Object;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v1, p0, Lo/newCodedBuilder;->frcMetadata:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_fetch_status"

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
