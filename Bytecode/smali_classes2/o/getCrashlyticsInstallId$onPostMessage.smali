.class Lo/getCrashlyticsInstallId$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCrashlyticsInstallId;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/getCrashlyticsInstallId$onPostMessage;",
        ">;"
    }
.end annotation


# instance fields
.field private abortReason:Lo/getMarkerFile;

.field private applyLocally:Z

.field private currentInputSnapshot:Lo/LogFileManager$DirectoryProvider;

.field private currentOutputSnapshotRaw:Lo/LogFileManager$DirectoryProvider;

.field private currentOutputSnapshotResolved:Lo/LogFileManager$DirectoryProvider;

.field private currentWriteId:J

.field private handler:Lo/populateExecutionData$onMessageChannelReady;

.field private order:J

.field private outstandingListener:Lo/populateSessionDeviceData;

.field private path:Lo/ExecutorUtils$2;

.field private retryCount:I

.field private status:Lo/getCrashlyticsInstallId$onMessageChannelReady;


# direct methods
.method private constructor <init>(Lo/ExecutorUtils$2;Lo/populateExecutionData$onMessageChannelReady;Lo/populateSessionDeviceData;Lo/getCrashlyticsInstallId$onMessageChannelReady;ZJ)V
    .locals 0

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-object p1, p0, Lo/getCrashlyticsInstallId$onPostMessage;->path:Lo/ExecutorUtils$2;

    .line 760
    iput-object p2, p0, Lo/getCrashlyticsInstallId$onPostMessage;->handler:Lo/populateExecutionData$onMessageChannelReady;

    .line 761
    iput-object p3, p0, Lo/getCrashlyticsInstallId$onPostMessage;->outstandingListener:Lo/populateSessionDeviceData;

    .line 762
    iput-object p4, p0, Lo/getCrashlyticsInstallId$onPostMessage;->status:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    const/4 p1, 0x0

    .line 763
    iput p1, p0, Lo/getCrashlyticsInstallId$onPostMessage;->retryCount:I

    .line 764
    iput-boolean p5, p0, Lo/getCrashlyticsInstallId$onPostMessage;->applyLocally:Z

    .line 765
    iput-wide p6, p0, Lo/getCrashlyticsInstallId$onPostMessage;->order:J

    const/4 p1, 0x0

    .line 766
    iput-object p1, p0, Lo/getCrashlyticsInstallId$onPostMessage;->abortReason:Lo/getMarkerFile;

    .line 767
    iput-object p1, p0, Lo/getCrashlyticsInstallId$onPostMessage;->currentInputSnapshot:Lo/LogFileManager$DirectoryProvider;

    .line 768
    iput-object p1, p0, Lo/getCrashlyticsInstallId$onPostMessage;->currentOutputSnapshotRaw:Lo/LogFileManager$DirectoryProvider;

    .line 769
    iput-object p1, p0, Lo/getCrashlyticsInstallId$onPostMessage;->currentOutputSnapshotResolved:Lo/LogFileManager$DirectoryProvider;

    return-void
.end method

.method synthetic constructor <init>(Lo/ExecutorUtils$2;Lo/populateExecutionData$onMessageChannelReady;Lo/populateSessionDeviceData;Lo/getCrashlyticsInstallId$onMessageChannelReady;ZJLo/getCrashlyticsInstallId$2;)V
    .locals 0

    .line 738
    invoke-direct/range {p0 .. p7}, Lo/getCrashlyticsInstallId$onPostMessage;-><init>(Lo/ExecutorUtils$2;Lo/populateExecutionData$onMessageChannelReady;Lo/populateSessionDeviceData;Lo/getCrashlyticsInstallId$onMessageChannelReady;ZJ)V

    return-void
.end method

.method static synthetic access$1400(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/LogFileManager$DirectoryProvider;
    .locals 0

    .line 738
    iget-object p0, p0, Lo/getCrashlyticsInstallId$onPostMessage;->currentInputSnapshot:Lo/LogFileManager$DirectoryProvider;

    return-object p0
.end method

.method static synthetic access$1402(Lo/getCrashlyticsInstallId$onPostMessage;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 0

    .line 738
    iput-object p1, p0, Lo/getCrashlyticsInstallId$onPostMessage;->currentInputSnapshot:Lo/LogFileManager$DirectoryProvider;

    return-object p1
.end method

.method static synthetic access$1500(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/LogFileManager$DirectoryProvider;
    .locals 0

    .line 738
    iget-object p0, p0, Lo/getCrashlyticsInstallId$onPostMessage;->currentOutputSnapshotRaw:Lo/LogFileManager$DirectoryProvider;

    return-object p0
.end method

.method static synthetic access$1502(Lo/getCrashlyticsInstallId$onPostMessage;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 0

    .line 738
    iput-object p1, p0, Lo/getCrashlyticsInstallId$onPostMessage;->currentOutputSnapshotRaw:Lo/LogFileManager$DirectoryProvider;

    return-object p1
.end method

.method static synthetic access$1600(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/LogFileManager$DirectoryProvider;
    .locals 0

    .line 738
    iget-object p0, p0, Lo/getCrashlyticsInstallId$onPostMessage;->currentOutputSnapshotResolved:Lo/LogFileManager$DirectoryProvider;

    return-object p0
.end method

.method static synthetic access$1602(Lo/getCrashlyticsInstallId$onPostMessage;Lo/LogFileManager$DirectoryProvider;)Lo/LogFileManager$DirectoryProvider;
    .locals 0

    .line 738
    iput-object p1, p0, Lo/getCrashlyticsInstallId$onPostMessage;->currentOutputSnapshotResolved:Lo/LogFileManager$DirectoryProvider;

    return-object p1
.end method

.method static synthetic access$1700(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/getCrashlyticsInstallId$onMessageChannelReady;
    .locals 0

    .line 738
    iget-object p0, p0, Lo/getCrashlyticsInstallId$onPostMessage;->status:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    return-object p0
.end method

.method static synthetic access$1702(Lo/getCrashlyticsInstallId$onPostMessage;Lo/getCrashlyticsInstallId$onMessageChannelReady;)Lo/getCrashlyticsInstallId$onMessageChannelReady;
    .locals 0

    .line 738
    iput-object p1, p0, Lo/getCrashlyticsInstallId$onPostMessage;->status:Lo/getCrashlyticsInstallId$onMessageChannelReady;

    return-object p1
.end method

.method static synthetic access$1800(Lo/getCrashlyticsInstallId$onPostMessage;)J
    .locals 2

    .line 738
    iget-wide v0, p0, Lo/getCrashlyticsInstallId$onPostMessage;->currentWriteId:J

    return-wide v0
.end method

.method static synthetic access$1802(Lo/getCrashlyticsInstallId$onPostMessage;J)J
    .locals 0

    .line 738
    iput-wide p1, p0, Lo/getCrashlyticsInstallId$onPostMessage;->currentWriteId:J

    return-wide p1
.end method

.method static synthetic access$2000(Lo/getCrashlyticsInstallId$onPostMessage;)I
    .locals 0

    .line 738
    iget p0, p0, Lo/getCrashlyticsInstallId$onPostMessage;->retryCount:I

    return p0
.end method

.method static synthetic access$2008(Lo/getCrashlyticsInstallId$onPostMessage;)I
    .locals 2

    .line 738
    iget v0, p0, Lo/getCrashlyticsInstallId$onPostMessage;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo/getCrashlyticsInstallId$onPostMessage;->retryCount:I

    return v0
.end method

.method static synthetic access$2100(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/ExecutorUtils$2;
    .locals 0

    .line 738
    iget-object p0, p0, Lo/getCrashlyticsInstallId$onPostMessage;->path:Lo/ExecutorUtils$2;

    return-object p0
.end method

.method static synthetic access$2300(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/populateExecutionData$onMessageChannelReady;
    .locals 0

    .line 738
    iget-object p0, p0, Lo/getCrashlyticsInstallId$onPostMessage;->handler:Lo/populateExecutionData$onMessageChannelReady;

    return-object p0
.end method

.method static synthetic access$2400(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/populateSessionDeviceData;
    .locals 0

    .line 738
    iget-object p0, p0, Lo/getCrashlyticsInstallId$onPostMessage;->outstandingListener:Lo/populateSessionDeviceData;

    return-object p0
.end method

.method static synthetic access$2800(Lo/getCrashlyticsInstallId$onPostMessage;)Lo/getMarkerFile;
    .locals 0

    .line 738
    iget-object p0, p0, Lo/getCrashlyticsInstallId$onPostMessage;->abortReason:Lo/getMarkerFile;

    return-object p0
.end method

.method static synthetic access$2802(Lo/getCrashlyticsInstallId$onPostMessage;Lo/getMarkerFile;)Lo/getMarkerFile;
    .locals 0

    .line 738
    iput-object p1, p0, Lo/getCrashlyticsInstallId$onPostMessage;->abortReason:Lo/getMarkerFile;

    return-object p1
.end method

.method static synthetic access$2900(Lo/getCrashlyticsInstallId$onPostMessage;)Z
    .locals 0

    .line 738
    iget-boolean p0, p0, Lo/getCrashlyticsInstallId$onPostMessage;->applyLocally:Z

    return p0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 738
    check-cast p1, Lo/getCrashlyticsInstallId$onPostMessage;

    invoke-virtual {p0, p1}, Lo/getCrashlyticsInstallId$onPostMessage;->compareTo(Lo/getCrashlyticsInstallId$onPostMessage;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lo/getCrashlyticsInstallId$onPostMessage;)I
    .locals 4

    .line 774
    iget-wide v0, p0, Lo/getCrashlyticsInstallId$onPostMessage;->order:J

    iget-wide v2, p1, Lo/getCrashlyticsInstallId$onPostMessage;->order:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
