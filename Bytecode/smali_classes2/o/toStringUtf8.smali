.class public Lo/toStringUtf8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getFilesDirPath;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/toStringUtf8$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final configSettings:Lo/CrashlyticsReportPersistence$$Lambda$6;

.field private final lastFetchStatus:I

.field private final lastSuccessfulFetchTimeInMillis:J


# direct methods
.method private constructor <init>(JILo/CrashlyticsReportPersistence$$Lambda$6;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-wide p1, p0, Lo/toStringUtf8;->lastSuccessfulFetchTimeInMillis:J

    .line 37
    iput p3, p0, Lo/toStringUtf8;->lastFetchStatus:I

    .line 38
    iput-object p4, p0, Lo/toStringUtf8;->configSettings:Lo/CrashlyticsReportPersistence$$Lambda$6;

    return-void
.end method

.method synthetic constructor <init>(JILo/CrashlyticsReportPersistence$$Lambda$6;Lo/toStringUtf8$3;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lo/toStringUtf8;-><init>(JILo/CrashlyticsReportPersistence$$Lambda$6;)V

    return-void
.end method

.method static newBuilder()Lo/toStringUtf8$onNavigationEvent;
    .locals 2

    .line 86
    new-instance v0, Lo/toStringUtf8$onNavigationEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/toStringUtf8$onNavigationEvent;-><init>(Lo/toStringUtf8$3;)V

    return-object v0
.end method


# virtual methods
.method public getConfigSettings()Lo/CrashlyticsReportPersistence$$Lambda$6;
    .locals 1

    .line 53
    iget-object v0, p0, Lo/toStringUtf8;->configSettings:Lo/CrashlyticsReportPersistence$$Lambda$6;

    return-object v0
.end method

.method public getFetchTimeMillis()J
    .locals 2

    .line 43
    iget-wide v0, p0, Lo/toStringUtf8;->lastSuccessfulFetchTimeInMillis:J

    return-wide v0
.end method

.method public getLastFetchStatus()I
    .locals 1

    .line 48
    iget v0, p0, Lo/toStringUtf8;->lastFetchStatus:I

    return v0
.end method
