.class public final Lo/isNormalPriorityEventFile;
.super Ljava/io/OutputStream;
.source ""


# instance fields
.field private final zzgo:Lo/aY;

.field private zzgt:Ljava/io/OutputStream;

.field private zzgu:J

.field private zzgv:Lo/aN;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lo/aN;Lo/aY;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lo/isNormalPriorityEventFile;->zzgu:J

    .line 3
    iput-object p1, p0, Lo/isNormalPriorityEventFile;->zzgt:Ljava/io/OutputStream;

    .line 4
    iput-object p2, p0, Lo/isNormalPriorityEventFile;->zzgv:Lo/aN;

    .line 5
    iput-object p3, p0, Lo/isNormalPriorityEventFile;->zzgo:Lo/aY;

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    iget-wide v0, p0, Lo/isNormalPriorityEventFile;->zzgu:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 8
    iget-object v2, p0, Lo/isNormalPriorityEventFile;->zzgv:Lo/aN;

    invoke-virtual {v2, v0, v1}, Lo/aN;->onMessageChannelReady(J)Lo/aN;

    .line 9
    :cond_0
    iget-object v0, p0, Lo/isNormalPriorityEventFile;->zzgv:Lo/aN;

    iget-object v1, p0, Lo/isNormalPriorityEventFile;->zzgo:Lo/aY;

    invoke-virtual {v1}, Lo/aY;->onNavigationEvent()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/aN;->onPostMessage(J)Lo/aN;

    .line 10
    :try_start_0
    iget-object v0, p0, Lo/isNormalPriorityEventFile;->zzgt:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lo/isNormalPriorityEventFile;->zzgv:Lo/aN;

    iget-object v2, p0, Lo/isNormalPriorityEventFile;->zzgo:Lo/aY;

    invoke-virtual {v2}, Lo/aY;->onNavigationEvent()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 14
    iget-object v1, p0, Lo/isNormalPriorityEventFile;->zzgv:Lo/aN;

    invoke-static {v1}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 15
    throw v0
.end method

.method public final flush()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    :try_start_0
    iget-object v0, p0, Lo/isNormalPriorityEventFile;->zzgt:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 19
    iget-object v1, p0, Lo/isNormalPriorityEventFile;->zzgv:Lo/aN;

    iget-object v2, p0, Lo/isNormalPriorityEventFile;->zzgo:Lo/aY;

    invoke-virtual {v2}, Lo/aY;->onNavigationEvent()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 20
    iget-object v1, p0, Lo/isNormalPriorityEventFile;->zzgv:Lo/aN;

    invoke-static {v1}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 21
    throw v0
.end method

.method public final write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    :try_start_0
    iget-object v0, p0, Lo/isNormalPriorityEventFile;->zzgt:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 23
    iget-wide v0, p0, Lo/isNormalPriorityEventFile;->zzgu:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/isNormalPriorityEventFile;->zzgu:J

    .line 24
    iget-object p1, p0, Lo/isNormalPriorityEventFile;->zzgv:Lo/aN;

    invoke-virtual {p1, v0, v1}, Lo/aN;->onMessageChannelReady(J)Lo/aN;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 27
    iget-object v0, p0, Lo/isNormalPriorityEventFile;->zzgv:Lo/aN;

    iget-object v1, p0, Lo/isNormalPriorityEventFile;->zzgo:Lo/aY;

    invoke-virtual {v1}, Lo/aY;->onNavigationEvent()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 28
    iget-object v0, p0, Lo/isNormalPriorityEventFile;->zzgv:Lo/aN;

    invoke-static {v0}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 29
    throw p1
.end method

.method public final write([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    :try_start_0
    iget-object v0, p0, Lo/isNormalPriorityEventFile;->zzgt:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 31
    iget-wide v0, p0, Lo/isNormalPriorityEventFile;->zzgu:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lo/isNormalPriorityEventFile;->zzgu:J

    .line 32
    iget-object p1, p0, Lo/isNormalPriorityEventFile;->zzgv:Lo/aN;

    invoke-virtual {p1, v0, v1}, Lo/aN;->onMessageChannelReady(J)Lo/aN;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 35
    iget-object v0, p0, Lo/isNormalPriorityEventFile;->zzgv:Lo/aN;

    iget-object v1, p0, Lo/isNormalPriorityEventFile;->zzgo:Lo/aY;

    invoke-virtual {v1}, Lo/aY;->onNavigationEvent()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 36
    iget-object v0, p0, Lo/isNormalPriorityEventFile;->zzgv:Lo/aN;

    invoke-static {v0}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 37
    throw p1
.end method

.method public final write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    :try_start_0
    iget-object v0, p0, Lo/isNormalPriorityEventFile;->zzgt:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 39
    iget-wide p1, p0, Lo/isNormalPriorityEventFile;->zzgu:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lo/isNormalPriorityEventFile;->zzgu:J

    .line 40
    iget-object p3, p0, Lo/isNormalPriorityEventFile;->zzgv:Lo/aN;

    invoke-virtual {p3, p1, p2}, Lo/aN;->onMessageChannelReady(J)Lo/aN;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 43
    iget-object p2, p0, Lo/isNormalPriorityEventFile;->zzgv:Lo/aN;

    iget-object p3, p0, Lo/isNormalPriorityEventFile;->zzgo:Lo/aY;

    invoke-virtual {p3}, Lo/aY;->onNavigationEvent()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lo/aN;->extraCallback(J)Lo/aN;

    .line 44
    iget-object p2, p0, Lo/isNormalPriorityEventFile;->zzgv:Lo/aN;

    invoke-static {p2}, Lo/extraCallback;->zza(Lo/aN;)V

    .line 45
    throw p1
.end method
