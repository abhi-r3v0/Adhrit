.class public Lo/CrashlyticsReportPersistence$$Lambda$6;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;
    }
.end annotation


# instance fields
.field private final enableDeveloperMode:Z

.field private final fetchTimeoutInSeconds:J

.field private final minimumFetchInterval:J


# direct methods
.method private constructor <init>(Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->access$000(Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;)Z

    move-result v0

    iput-boolean v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$6;->enableDeveloperMode:Z

    .line 34
    invoke-static {p1}, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->access$100(Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$6;->fetchTimeoutInSeconds:J

    .line 35
    invoke-static {p1}, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->access$200(Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$6;->minimumFetchInterval:J

    return-void
.end method

.method synthetic constructor <init>(Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;Lo/CrashlyticsReportPersistence$$Lambda$6$3;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lo/CrashlyticsReportPersistence$$Lambda$6;-><init>(Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;)V

    return-void
.end method


# virtual methods
.method public getFetchTimeoutInSeconds()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$6;->fetchTimeoutInSeconds:J

    return-wide v0
.end method

.method public getMinimumFetchIntervalInSeconds()J
    .locals 2

    .line 61
    iget-wide v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$6;->minimumFetchInterval:J

    return-wide v0
.end method

.method public isDeveloperModeEnabled()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 46
    iget-boolean v0, p0, Lo/CrashlyticsReportPersistence$$Lambda$6;->enableDeveloperMode:Z

    return v0
.end method

.method public toBuilder()Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;
    .locals 3

    .line 67
    new-instance v0, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;

    invoke-direct {v0}, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;-><init>()V

    .line 68
    invoke-virtual {p0}, Lo/CrashlyticsReportPersistence$$Lambda$6;->isDeveloperModeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->setDeveloperModeEnabled(Z)Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;

    .line 69
    invoke-virtual {p0}, Lo/CrashlyticsReportPersistence$$Lambda$6;->getFetchTimeoutInSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->setFetchTimeoutInSeconds(J)Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;

    .line 70
    invoke-virtual {p0}, Lo/CrashlyticsReportPersistence$$Lambda$6;->getMinimumFetchIntervalInSeconds()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;->setMinimumFetchIntervalInSeconds(J)Lo/CrashlyticsReportPersistence$$Lambda$6$onPostMessage;

    return-object v0
.end method
