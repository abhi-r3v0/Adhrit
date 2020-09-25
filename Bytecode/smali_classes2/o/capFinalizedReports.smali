.class final Lo/capFinalizedReports;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final zzet:J


# instance fields
.field private zzai:Lo/b$b;

.field private final zzcd:Lo/b$a;

.field private final zzdp:Z

.field private zzeu:J

.field private zzev:D

.field private zzew:Lo/aY;

.field private zzex:J

.field private zzey:D

.field private zzez:J

.field private zzfa:D

.field private zzfb:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    sput-wide v0, Lo/capFinalizedReports;->zzet:J

    return-void
.end method

.method constructor <init>(DJLo/b$a;Lo/setPhone;Ljava/lang/String;Z)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object p1

    iput-object p1, p0, Lo/capFinalizedReports;->zzai:Lo/b$b;

    .line 3
    iput-object p5, p0, Lo/capFinalizedReports;->zzcd:Lo/b$a;

    const-wide/16 p1, 0x1f4

    .line 4
    iput-wide p1, p0, Lo/capFinalizedReports;->zzeu:J

    const-wide/high16 p3, 0x4059000000000000L    # 100.0

    .line 5
    iput-wide p3, p0, Lo/capFinalizedReports;->zzev:D

    .line 6
    iput-wide p1, p0, Lo/capFinalizedReports;->zzex:J

    .line 8
    new-instance p1, Lo/aY;

    invoke-direct {p1}, Lo/aY;-><init>()V

    .line 9
    iput-object p1, p0, Lo/capFinalizedReports;->zzew:Lo/aY;

    .line 12
    invoke-virtual {p6}, Lo/setPhone;->extraCommand()J

    move-result-wide p1

    const-string p3, "Trace"

    if-ne p7, p3, :cond_0

    .line 16
    invoke-virtual {p6}, Lo/setPhone;->getInterfaceDescriptor()J

    move-result-wide p4

    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p6}, Lo/setPhone;->requestPostMessageChannel()J

    move-result-wide p4

    :goto_0
    long-to-double v0, p4

    long-to-double p1, p1

    div-double/2addr v0, p1

    .line 19
    iput-wide v0, p0, Lo/capFinalizedReports;->zzey:D

    .line 20
    iput-wide p4, p0, Lo/capFinalizedReports;->zzez:J

    const/4 p1, 0x2

    const/4 p2, 0x1

    const/4 p4, 0x0

    const/4 p5, 0x3

    if-eqz p8, :cond_1

    .line 22
    iget-object v0, p0, Lo/capFinalizedReports;->zzai:Lo/b$b;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array v2, p5, [Ljava/lang/Object;

    aput-object p7, v2, p4

    iget-wide v3, p0, Lo/capFinalizedReports;->zzey:D

    .line 23
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, p2

    iget-wide v3, p0, Lo/capFinalizedReports;->zzez:J

    .line 24
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, p1

    const-string v3, "Foreground %s logging rate:%f, burst capacity:%d"

    .line 25
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 28
    :cond_1
    invoke-virtual {p6}, Lo/setPhone;->extraCommand()J

    move-result-wide v0

    if-ne p7, p3, :cond_2

    .line 32
    invoke-virtual {p6}, Lo/setPhone;->ICustomTabsService()J

    move-result-wide v2

    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {p6}, Lo/setPhone;->postMessage()J

    move-result-wide v2

    :goto_1
    long-to-double v4, v2

    long-to-double v0, v0

    div-double/2addr v4, v0

    .line 35
    iput-wide v4, p0, Lo/capFinalizedReports;->zzfa:D

    .line 36
    iput-wide v2, p0, Lo/capFinalizedReports;->zzfb:J

    if-eqz p8, :cond_3

    .line 38
    iget-object p3, p0, Lo/capFinalizedReports;->zzai:Lo/b$b;

    sget-object p6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p7, p5, p4

    iget-wide v0, p0, Lo/capFinalizedReports;->zzfa:D

    .line 39
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    aput-object p4, p5, p2

    iget-wide v0, p0, Lo/capFinalizedReports;->zzfb:J

    .line 40
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, p5, p1

    const-string p1, "Background %s logging rate:%f, capacity:%d"

    .line 41
    invoke-static {p6, p1, p5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 42
    invoke-virtual {p3, p1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 43
    :cond_3
    iput-boolean p8, p0, Lo/capFinalizedReports;->zzdp:Z

    return-void
.end method


# virtual methods
.method final declared-synchronized zzb(Z)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 58
    :try_start_0
    iget-wide v0, p0, Lo/capFinalizedReports;->zzey:D

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lo/capFinalizedReports;->zzfa:D

    :goto_0
    iput-wide v0, p0, Lo/capFinalizedReports;->zzev:D

    if-eqz p1, :cond_1

    .line 59
    iget-wide v0, p0, Lo/capFinalizedReports;->zzez:J

    goto :goto_1

    :cond_1
    iget-wide v0, p0, Lo/capFinalizedReports;->zzfb:J

    :goto_1
    iput-wide v0, p0, Lo/capFinalizedReports;->zzeu:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized zzb(Lo/onMenuItemActionCollapse;)Z
    .locals 6

    monitor-enter p0

    .line 45
    :try_start_0
    new-instance p1, Lo/aY;

    invoke-direct {p1}, Lo/aY;-><init>()V

    .line 47
    iget-object v0, p0, Lo/capFinalizedReports;->zzew:Lo/aY;

    .line 48
    invoke-virtual {v0, p1}, Lo/aY;->onNavigationEvent(Lo/aY;)J

    move-result-wide v0

    long-to-double v0, v0

    iget-wide v2, p0, Lo/capFinalizedReports;->zzev:D

    mul-double v0, v0, v2

    sget-wide v2, Lo/capFinalizedReports;->zzet:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    double-to-long v0, v0

    const-wide/16 v2, 0x0

    .line 49
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 50
    iget-wide v4, p0, Lo/capFinalizedReports;->zzex:J

    add-long/2addr v4, v0

    iget-wide v0, p0, Lo/capFinalizedReports;->zzeu:J

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lo/capFinalizedReports;->zzex:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    .line 52
    iput-wide v0, p0, Lo/capFinalizedReports;->zzex:J

    .line 53
    iput-object p1, p0, Lo/capFinalizedReports;->zzew:Lo/aY;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    .line 54
    monitor-exit p0

    return p1

    .line 55
    :cond_0
    :try_start_1
    iget-boolean p1, p0, Lo/capFinalizedReports;->zzdp:Z

    if-eqz p1, :cond_1

    .line 56
    iget-object p1, p0, Lo/capFinalizedReports;->zzai:Lo/b$b;

    const-string v0, "Exceeded log rate limit, dropping the log."

    invoke-virtual {p1, v0}, Lo/b$b;->onNavigationEvent(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    const/4 p1, 0x0

    .line 57
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
