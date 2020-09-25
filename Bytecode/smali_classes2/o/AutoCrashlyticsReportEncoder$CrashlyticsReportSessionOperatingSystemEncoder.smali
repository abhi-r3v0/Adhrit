.class public final Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE_UNLIMITED:J = -0x1L

.field private static final DEFAULT_CACHE_SIZE_BYTES:J = 0x6400000L

.field public static final DEFAULT_HOST:Ljava/lang/String; = "firestore.googleapis.com"

.field private static final DEFAULT_TIMESTAMPS_IN_SNAPSHOTS_ENABLED:Z = true

.field private static final MINIMUM_CACHE_BYTES:J = 0x100000L


# instance fields
.field private final cacheSizeBytes:J

.field private final host:Ljava/lang/String;

.field private final persistenceEnabled:Z

.field private final sslEnabled:Z

.field private final timestampsInSnapshotsEnabled:Z


# direct methods
.method private constructor <init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;)V
    .locals 2

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->access$500(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->host:Ljava/lang/String;

    .line 189
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->access$600(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->sslEnabled:Z

    .line 190
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->access$700(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->persistenceEnabled:Z

    .line 191
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->access$800(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->timestampsInSnapshotsEnabled:Z

    .line 192
    invoke-static {p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;->access$900(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;)J

    move-result-wide v0

    iput-wide v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->cacheSizeBytes:J

    return-void
.end method

.method synthetic constructor <init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$2;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;-><init>(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder$extraCallback;)V

    return-void
.end method

.method static synthetic access$000(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->host:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->sslEnabled:Z

    return p0
.end method

.method static synthetic access$200(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->persistenceEnabled:Z

    return p0
.end method

.method static synthetic access$300(Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;)Z
    .locals 0

    .line 23
    iget-boolean p0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->timestampsInSnapshotsEnabled:Z

    return p0
.end method


# virtual methods
.method public final areTimestampsInSnapshotsEnabled()Z
    .locals 1

    .line 260
    iget-boolean v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->timestampsInSnapshotsEnabled:Z

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 200
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 204
    :cond_1
    check-cast p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;

    .line 205
    iget-object v2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->host:Ljava/lang/String;

    iget-object v3, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->host:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->sslEnabled:Z

    iget-boolean v3, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->sslEnabled:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->persistenceEnabled:Z

    iget-boolean v3, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->persistenceEnabled:Z

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->timestampsInSnapshotsEnabled:Z

    iget-boolean v3, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->timestampsInSnapshotsEnabled:Z

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->cacheSizeBytes:J

    iget-wide v4, p1, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->cacheSizeBytes:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final getCacheSizeBytes()J
    .locals 2

    .line 268
    iget-wide v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->cacheSizeBytes:J

    return-wide v0
.end method

.method public final getHost()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->host:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 214
    iget-object v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->host:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 215
    iget-boolean v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->sslEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 216
    iget-boolean v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->persistenceEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 217
    iget-boolean v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->timestampsInSnapshotsEnabled:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 218
    iget-wide v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->cacheSizeBytes:J

    long-to-int v2, v1

    add-int/2addr v0, v2

    return v0
.end method

.method public final isPersistenceEnabled()Z
    .locals 1

    .line 252
    iget-boolean v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->persistenceEnabled:Z

    return v0
.end method

.method public final isSslEnabled()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->sslEnabled:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FirebaseFirestoreSettings{host="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sslEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->sslEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", persistenceEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->persistenceEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timestampsInSnapshotsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->timestampsInSnapshotsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cacheSizeBytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lo/AutoCrashlyticsReportEncoder$CrashlyticsReportSessionOperatingSystemEncoder;->cacheSizeBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
