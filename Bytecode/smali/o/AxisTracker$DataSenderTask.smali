.class public final Lo/AxisTracker$DataSenderTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/UpiSdkCallback;


# instance fields
.field public final ICustomTabsCallback:[J

.field private final ICustomTabsCallback$Stub:J

.field public final extraCallback:[I

.field public final onMessageChannelReady:I

.field public final onNavigationEvent:[J

.field public final onPostMessage:[J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lo/AxisTracker$DataSenderTask;->extraCallback:[I

    .line 61
    iput-object p2, p0, Lo/AxisTracker$DataSenderTask;->onPostMessage:[J

    .line 62
    iput-object p3, p0, Lo/AxisTracker$DataSenderTask;->onNavigationEvent:[J

    .line 63
    iput-object p4, p0, Lo/AxisTracker$DataSenderTask;->ICustomTabsCallback:[J

    .line 64
    array-length p1, p1

    iput p1, p0, Lo/AxisTracker$DataSenderTask;->onMessageChannelReady:I

    if-lez p1, :cond_0

    add-int/lit8 p2, p1, -0x1

    .line 66
    aget-wide p2, p3, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide v0, p4, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lo/AxisTracker$DataSenderTask;->ICustomTabsCallback$Stub:J

    return-void

    :cond_0
    const-wide/16 p1, 0x0

    .line 68
    iput-wide p1, p0, Lo/AxisTracker$DataSenderTask;->ICustomTabsCallback$Stub:J

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ChunkIndex(length="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lo/AxisTracker$DataSenderTask;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AxisTracker$DataSenderTask;->extraCallback:[I

    .line 112
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AxisTracker$DataSenderTask;->onPostMessage:[J

    .line 114
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AxisTracker$DataSenderTask;->ICustomTabsCallback:[J

    .line 116
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", durationsUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/AxisTracker$DataSenderTask;->onNavigationEvent:[J

    .line 118
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
