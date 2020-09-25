.class public Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/CrashlyticsReportPersistence$$Lambda$6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field private enableDeveloperMode:Z

.field private fetchTimeoutInSeconds:J

.field private minimumFetchInterval:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->enableDeveloperMode:Z

    const-wide/16 v0, 0x3c

    .line 78
    iput-wide v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->fetchTimeoutInSeconds:J

    .line 79
    sget-wide v0, Lo/toByteArray;->DEFAULT_MINIMUM_FETCH_INTERVAL_IN_SECONDS:J

    iput-wide v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->minimumFetchInterval:J

    return-void
.end method

.method static synthetic access$000(Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;)Z
    .locals 0

    .line 75
    iget-boolean p0, p0, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->enableDeveloperMode:Z

    return p0
.end method

.method static synthetic access$100(Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;)J
    .locals 2

    .line 75
    iget-wide v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->fetchTimeoutInSeconds:J

    return-wide v0
.end method

.method static synthetic access$200(Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;)J
    .locals 2

    .line 75
    iget-wide v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->minimumFetchInterval:J

    return-wide v0
.end method


# virtual methods
.method public build()Lo/CrashlyticsReportPersistence$$Lambda$6;
    .locals 2

    .line 157
    new-instance v0, Lo/CrashlyticsReportPersistence$$Lambda$6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/CrashlyticsReportPersistence$$Lambda$6;-><init>(Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;Lo/CrashlyticsReportPersistence$$Lambda$6$3;)V

    return-object v0
.end method

.method public getFetchTimeoutInSeconds()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->fetchTimeoutInSeconds:J

    return-wide v0
.end method

.method public getMinimumFetchIntervalInSeconds()J
    .locals 2

    .line 149
    iget-wide v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->minimumFetchInterval:J

    return-wide v0
.end method

.method public setDeveloperModeEnabled(Z)Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    iput-boolean p1, p0, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->enableDeveloperMode:Z

    return-object p0
.end method

.method public setFetchTimeoutInSeconds(J)Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 113
    iput-wide p1, p0, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->fetchTimeoutInSeconds:J

    return-object p0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 111
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Fetch connection timeout has to be a non-negative number. %d is an invalid argument"

    .line 108
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinimumFetchIntervalInSeconds(J)Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 133
    iput-wide p1, p0, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->minimumFetchInterval:J

    return-object p0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Minimum interval between fetches has to be a non-negative number. "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " is an invalid argument"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
