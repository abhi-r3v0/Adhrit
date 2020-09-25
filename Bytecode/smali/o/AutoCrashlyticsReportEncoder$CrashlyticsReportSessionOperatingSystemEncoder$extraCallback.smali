.class public final Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field private cacheSizeBytes:J

.field private host:Ljava/lang/String;

.field private persistenceEnabled:Z

.field private sslEnabled:Z

.field private timestampsInSnapshotsEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "firestore.googleapis.com"

    .line 47
    iput-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->host:Ljava/lang/String;

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->sslEnabled:Z

    .line 49
    iput-boolean v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->persistenceEnabled:Z

    .line 50
    iput-boolean v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->timestampsInSnapshotsEnabled:Z

    const-wide/32 v0, 0x6400000

    .line 51
    iput-wide v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->cacheSizeBytes:J

    return-void
.end method

.method public constructor <init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Provided settings must not be null."

    .line 59
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->access$000(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->host:Ljava/lang/String;

    .line 61
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->access$100(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)Z

    move-result v0

    iput-boolean v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->sslEnabled:Z

    .line 62
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->access$200(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)Z

    move-result v0

    iput-boolean v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->persistenceEnabled:Z

    .line 63
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->access$300(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)Z

    move-result p1

    iput-boolean p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->timestampsInSnapshotsEnabled:Z

    return-void
.end method

.method static synthetic access$500(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->host:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->sslEnabled:Z

    return p0
.end method

.method static synthetic access$700(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->persistenceEnabled:Z

    return p0
.end method

.method static synthetic access$800(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->timestampsInSnapshotsEnabled:Z

    return p0
.end method

.method static synthetic access$900(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;)J
    .locals 2

    .line 38
    iget-wide v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->cacheSizeBytes:J

    return-wide v0
.end method


# virtual methods
.method public final build()Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;
    .locals 2

    .line 172
    iget-boolean v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->sslEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->host:Ljava/lang/String;

    const-string v1, "firestore.googleapis.com"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You can\'t set the \'sslEnabled\' setting unless you also set a non-default \'host\'."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_1
    :goto_0
    new-instance v0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;-><init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$2;)V

    return-object v0
.end method

.method public final getCacheSizeBytes()J
    .locals 2

    .line 167
    iget-wide v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->cacheSizeBytes:J

    return-wide v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final isPersistenceEnabled()Z
    .locals 1

    .line 162
    iget-boolean v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->persistenceEnabled:Z

    return v0
.end method

.method public final isSslEnabled()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->sslEnabled:Z

    return v0
.end method

.method public final setCacheSizeBytes(J)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;
    .locals 3

    const-wide/16 v0, -0x1

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    const-wide/32 v0, 0x100000

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cache size must be set to at least 1048576 bytes"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 145
    :cond_1
    :goto_0
    iput-wide p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->cacheSizeBytes:J

    return-object p0
.end method

.method public final setHost(Ljava/lang/String;)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;
    .locals 1

    const-string v0, "Provided host must not be null."

    .line 74
    invoke-static {p1, v0}, Lo/toStringMap$onNavigationEvent;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->host:Ljava/lang/String;

    return-object p0
.end method

.method public final setPersistenceEnabled(Z)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;
    .locals 0

    .line 97
    iput-boolean p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->persistenceEnabled:Z

    return-object p0
.end method

.method public final setSslEnabled(Z)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;
    .locals 0

    .line 85
    iput-boolean p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->sslEnabled:Z

    return-object p0
.end method

.method public final setTimestampsInSnapshotsEnabled(Z)Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 124
    iput-boolean p1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->timestampsInSnapshotsEnabled:Z

    return-object p0
.end method
