.class public Lo/toStringUtf8$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/toStringUtf8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private builderConfigSettings:Lo/CrashlyticsReportPersistence$$Lambda$6;

.field private builderLastFetchStatus:I

.field private builderLastSuccessfulFetchTimeInMillis:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/toStringUtf8$3;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lo/toStringUtf8$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lo/toStringUtf8;
    .locals 7

    .line 80
    new-instance v6, Lo/toStringUtf8;

    iget-wide v1, p0, Lo/toStringUtf8$onNavigationEvent;->builderLastSuccessfulFetchTimeInMillis:J

    iget v3, p0, Lo/toStringUtf8$onNavigationEvent;->builderLastFetchStatus:I

    iget-object v4, p0, Lo/toStringUtf8$onNavigationEvent;->builderConfigSettings:Lo/CrashlyticsReportPersistence$$Lambda$6;

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lo/toStringUtf8;-><init>(JILo/CrashlyticsReportPersistence$$Lambda$6;Lo/toStringUtf8$3;)V

    return-object v6
.end method

.method withConfigSettings(Lo/CrashlyticsReportPersistence$$Lambda$6;)Lo/toStringUtf8$onNavigationEvent;
    .locals 0

    .line 75
    iput-object p1, p0, Lo/toStringUtf8$onNavigationEvent;->builderConfigSettings:Lo/CrashlyticsReportPersistence$$Lambda$6;

    return-object p0
.end method

.method withLastFetchStatus(I)Lo/toStringUtf8$onNavigationEvent;
    .locals 0

    .line 70
    iput p1, p0, Lo/toStringUtf8$onNavigationEvent;->builderLastFetchStatus:I

    return-object p0
.end method

.method public withLastSuccessfulFetchTimeInMillis(J)Lo/toStringUtf8$onNavigationEvent;
    .locals 0

    .line 65
    iput-wide p1, p0, Lo/toStringUtf8$onNavigationEvent;->builderLastSuccessfulFetchTimeInMillis:J

    return-object p0
.end method
