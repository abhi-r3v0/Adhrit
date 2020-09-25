.class public final Lo/releaseVelocityTracker$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/releaseVelocityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lending/dialog/LoanPaymentDialog$Companion;",
        "",
        "()V",
        "FAILURE_DIALOG",
        "",
        "TYPE",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final onPostMessage:Lo/addItemDecoration$onPostMessage;


# instance fields
.field private final ICustomTabsCallback:Lo/setBreadcrumbEventReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/setExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

.field private final extraCallback:Lo/setBreadcrumbEventReceiver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/toGraph;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:[B

.field private final onNavigationEvent:Lo/onVerificationFailed;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44000
    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "ExtractChunkTaskHandler"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/releaseVelocityTracker$extraCallback;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/onVerificationFailed;Lo/setBreadcrumbEventReceiver;Lo/setBreadcrumbEventReceiver;Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onVerificationFailed;",
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/toGraph;",
            ">;",
            "Lo/setBreadcrumbEventReceiver<",
            "Lo/setExecutor;",
            ">;",
            "Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;",
            ")V"
        }
    .end annotation

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lo/releaseVelocityTracker$extraCallback;->onMessageChannelReady:[B

    iput-object p1, p0, Lo/releaseVelocityTracker$extraCallback;->onNavigationEvent:Lo/onVerificationFailed;

    iput-object p2, p0, Lo/releaseVelocityTracker$extraCallback;->extraCallback:Lo/setBreadcrumbEventReceiver;

    iput-object p3, p0, Lo/releaseVelocityTracker$extraCallback;->ICustomTabsCallback:Lo/setBreadcrumbEventReceiver;

    iput-object p4, p0, Lo/releaseVelocityTracker$extraCallback;->asInterface:Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

    return-void
.end method

.method private onPostMessage(Lo/setOf;)Ljava/io/File;
    .locals 6

    .line 43000
    iget-object v0, p0, Lo/releaseVelocityTracker$extraCallback;->onNavigationEvent:Lo/onVerificationFailed;

    iget-object v1, p1, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v2, p1, Lo/setOf;->onMessageChannelReady:I

    iget-wide v3, p1, Lo/setOf;->onPostMessage:J

    iget-object v5, p1, Lo/setOf;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual/range {v0 .. v5}, Lo/onVerificationFailed;->onPostMessage(Ljava/lang/String;IJLjava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object p1
.end method


# virtual methods
.method public final extraCallback(Lo/setOf;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 2000
    new-instance v0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;

    iget-object v4, v1, Lo/releaseVelocityTracker$extraCallback;->onNavigationEvent:Lo/onVerificationFailed;

    iget-object v5, v2, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v6, v2, Lo/setOf;->onMessageChannelReady:I

    iget-wide v7, v2, Lo/setOf;->onPostMessage:J

    iget-object v9, v2, Lo/setOf;->onNavigationEvent:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;-><init>(Lo/onVerificationFailed;Ljava/lang/String;IJLjava/lang/String;)V

    iget-object v3, v1, Lo/releaseVelocityTracker$extraCallback;->onNavigationEvent:Lo/onVerificationFailed;

    iget-object v4, v2, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v5, v2, Lo/setOf;->onMessageChannelReady:I

    iget-wide v6, v2, Lo/setOf;->onPostMessage:J

    iget-object v8, v2, Lo/setOf;->onNavigationEvent:Ljava/lang/String;

    .line 3000
    new-instance v9, Ljava/io/File;

    invoke-virtual {v3, v4, v5, v6, v7}, Lo/onVerificationFailed;->ICustomTabsCallback(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v3

    invoke-direct {v9, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2000
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    :cond_0
    const/4 v11, 0x3

    const/4 v12, 0x2

    const/4 v13, 0x1

    const/4 v14, 0x0

    :try_start_0
    iget-object v3, v2, Lo/setOf;->getInterfaceDescriptor:Ljava/io/InputStream;

    iget v4, v2, Lo/setOf;->asBinder:I

    if-eq v4, v13, :cond_1

    move-object v15, v3

    goto :goto_0

    :cond_1
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    iget-object v5, v1, Lo/releaseVelocityTracker$extraCallback;->onMessageChannelReady:[B

    array-length v5, v5

    invoke-direct {v4, v3, v5}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v15, v4

    :goto_0
    :try_start_1
    iget v3, v2, Lo/setOf;->onTransact:I

    const/16 v16, 0x0

    if-lez v3, :cond_d

    invoke-virtual {v0}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onMessageChannelReady()Lo/eagerInDefaultApp;

    move-result-object v3

    .line 4000
    iget v4, v3, Lo/eagerInDefaultApp;->ICustomTabsCallback:I

    .line 2000
    iget v5, v2, Lo/setOf;->onTransact:I

    add-int/lit8 v6, v5, -0x1

    if-ne v4, v6, :cond_c

    .line 6000
    iget v4, v3, Lo/eagerInDefaultApp;->extraCallback:I

    if-eq v4, v13, :cond_7

    if-eq v4, v12, :cond_5

    if-ne v4, v11, :cond_4

    .line 2000
    sget-object v4, Lo/releaseVelocityTracker$extraCallback;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    const-string v5, "Resuming central directory from last chunk."

    new-array v6, v14, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35000
    iget-wide v3, v3, Lo/eagerInDefaultApp;->onPostMessage:J

    .line 2000
    invoke-virtual {v0, v15, v3, v4}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onNavigationEvent(Ljava/io/InputStream;J)V

    .line 36000
    iget v3, v2, Lo/setOf;->onTransact:I

    add-int/2addr v3, v13

    iget v4, v2, Lo/setOf;->ICustomTabsCallback$Stub:I

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_3

    :goto_2
    move-object/from16 v3, v16

    goto/16 :goto_5

    .line 2000
    :cond_3
    new-instance v0, Lo/getFactory;

    const-string v3, "Chunk has ended twice during central directory. This should not be possible with chunk sizes of 50MB."

    iget v4, v2, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v0, v3, v4}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_4
    new-instance v0, Lo/getFactory;

    new-array v4, v13, [Ljava/lang/Object;

    .line 41000
    iget v3, v3, Lo/eagerInDefaultApp;->extraCallback:I

    .line 2000
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v14

    const-string v3, "Slice checkpoint file corrupt. Unexpected FileExtractionStatus %s."

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v0, v3, v4}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_5
    sget-object v3, Lo/releaseVelocityTracker$extraCallback;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    const-string v4, "Resuming zip entry from last chunk during local file header."

    new-array v5, v14, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v1, Lo/releaseVelocityTracker$extraCallback;->onNavigationEvent:Lo/onVerificationFailed;

    iget-object v4, v2, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget v5, v2, Lo/setOf;->onMessageChannelReady:I

    iget-wide v6, v2, Lo/setOf;->onPostMessage:J

    iget-object v8, v2, Lo/setOf;->onNavigationEvent:Ljava/lang/String;

    .line 7000
    new-instance v9, Ljava/io/File;

    .line 8000
    new-instance v11, Ljava/io/File;

    invoke-virtual {v3, v4, v5, v6, v7}, Lo/onVerificationFailed;->ICustomTabsCallback(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v3

    invoke-direct {v11, v3, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v3, "checkpoint_ext.dat"

    .line 7000
    invoke-direct {v9, v11, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2000
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/io/SequenceInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4, v15}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    goto/16 :goto_5

    :cond_6
    new-instance v0, Lo/getFactory;

    const-string v3, "Checkpoint extension file not found."

    iget v4, v2, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v0, v3, v4}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_7
    sget-object v4, Lo/releaseVelocityTracker$extraCallback;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    new-array v5, v13, [Ljava/lang/Object;

    .line 37000
    iget-object v6, v3, Lo/eagerInDefaultApp;->onNavigationEvent:Ljava/lang/String;

    aput-object v6, v5, v14

    const-string v6, "Resuming zip entry from last chunk during file %s."

    .line 2000
    invoke-virtual {v4, v6, v5}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, Ljava/io/File;

    .line 38000
    iget-object v5, v3, Lo/eagerInDefaultApp;->onNavigationEvent:Ljava/lang/String;

    .line 2000
    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v6, "rw"

    invoke-direct {v5, v4, v6}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 39000
    iget-wide v6, v3, Lo/eagerInDefaultApp;->onPostMessage:J

    .line 2000
    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 40000
    iget-wide v6, v3, Lo/eagerInDefaultApp;->onMessageChannelReady:J

    .line 2000
    :goto_3
    iget-object v3, v1, Lo/releaseVelocityTracker$extraCallback;->onMessageChannelReady:[B

    array-length v3, v3

    int-to-long v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    long-to-int v3, v8

    iget-object v8, v1, Lo/releaseVelocityTracker$extraCallback;->onMessageChannelReady:[B

    invoke-virtual {v15, v8, v14, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    invoke-static {v8, v14}, Ljava/lang/Math;->max(II)I

    move-result v8

    if-lez v8, :cond_8

    iget-object v9, v1, Lo/releaseVelocityTracker$extraCallback;->onMessageChannelReady:[B

    invoke-virtual {v5, v9, v14, v8}, Ljava/io/RandomAccessFile;->write([BII)V

    :cond_8
    int-to-long v10, v8

    sub-long v9, v6, v10

    const-wide/16 v6, 0x0

    cmp-long v11, v9, v6

    if-lez v11, :cond_a

    if-gtz v8, :cond_9

    goto :goto_4

    :cond_9
    move-wide v6, v9

    goto :goto_3

    :cond_a
    :goto_4
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->close()V

    if-eq v8, v3, :cond_d

    sget-object v3, Lo/releaseVelocityTracker$extraCallback;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    const-string v5, "Chunk has ended while resuming the previous chunks file content."

    new-array v8, v14, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v8}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    iget v11, v2, Lo/setOf;->onTransact:I

    move-object v3, v0

    move-wide v5, v6

    move-wide v7, v9

    move v9, v11

    invoke-virtual/range {v3 .. v9}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;JJI)V

    goto/16 :goto_2

    :cond_b
    new-instance v0, Lo/getFactory;

    const-string v3, "Partial file specified in checkpoint does not exist. Corrupt directory."

    iget v4, v2, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v0, v3, v4}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_c
    new-instance v0, Lo/getFactory;

    const-string v4, "Trying to resume with chunk number %s when previously processed chunk was number %s."

    new-array v6, v12, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v14

    .line 5000
    iget v3, v3, Lo/eagerInDefaultApp;->ICustomTabsCallback:I

    .line 2000
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v13

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v0, v3, v4}, Lo/getFactory;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_d
    move-object v3, v15

    :goto_5
    if-eqz v3, :cond_1b

    new-instance v4, Lo/getPhotoUri;

    invoke-direct {v4, v3}, Lo/getPhotoUri;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {p0 .. p1}, Lo/releaseVelocityTracker$extraCallback;->onPostMessage(Lo/setOf;)Ljava/io/File;

    move-result-object v5

    :cond_e
    invoke-virtual {v4}, Lo/getPhotoUri;->onPostMessage()Lo/retrieve;

    move-result-object v6

    .line 9000
    iget-boolean v7, v6, Lo/retrieve;->onNavigationEvent:Z

    if-nez v7, :cond_13

    .line 10000
    iget-boolean v7, v4, Lo/getPhotoUri;->onMessageChannelReady:Z

    if-nez v7, :cond_13

    .line 12000
    iget v7, v6, Lo/retrieve;->ICustomTabsCallback:I

    if-nez v7, :cond_f

    const/4 v7, 0x1

    goto :goto_6

    :cond_f
    const/4 v7, 0x0

    :goto_6
    if-eqz v7, :cond_12

    .line 14000
    iget-object v7, v6, Lo/retrieve;->onPostMessage:Ljava/lang/String;

    if-nez v7, :cond_10

    const/4 v7, 0x0

    goto :goto_7

    .line 15000
    :cond_10
    iget-object v7, v6, Lo/retrieve;->onPostMessage:Ljava/lang/String;

    const-string v8, "/"

    .line 13000
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    :goto_7
    if-nez v7, :cond_12

    .line 16000
    iget-object v7, v6, Lo/retrieve;->ICustomTabsCallback$Stub:[B

    .line 2000
    invoke-virtual {v0, v7}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onMessageChannelReady([B)V

    new-instance v7, Ljava/io/File;

    .line 17000
    iget-object v8, v6, Lo/retrieve;->onPostMessage:Ljava/lang/String;

    .line 2000
    invoke-direct {v7, v5, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v7, v1, Lo/releaseVelocityTracker$extraCallback;->onMessageChannelReady:[B

    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    move-result v7

    :goto_8
    if-lez v7, :cond_11

    iget-object v9, v1, Lo/releaseVelocityTracker$extraCallback;->onMessageChannelReady:[B

    invoke-virtual {v8, v9, v14, v7}, Ljava/io/OutputStream;->write([BII)V

    iget-object v7, v1, Lo/releaseVelocityTracker$extraCallback;->onMessageChannelReady:[B

    invoke-virtual {v4, v7}, Ljava/io/InputStream;->read([B)I

    move-result v7

    goto :goto_8

    :cond_11
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V

    goto :goto_9

    .line 34000
    :cond_12
    iget-object v7, v6, Lo/retrieve;->ICustomTabsCallback$Stub:[B

    .line 2000
    invoke-virtual {v0, v7, v4}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback([BLjava/io/InputStream;)V

    .line 18000
    :cond_13
    :goto_9
    iget-boolean v7, v4, Lo/getPhotoUri;->ICustomTabsCallback:Z

    if-nez v7, :cond_14

    .line 19000
    iget-boolean v7, v4, Lo/getPhotoUri;->onMessageChannelReady:Z

    if-eqz v7, :cond_e

    .line 20000
    :cond_14
    iget-boolean v5, v4, Lo/getPhotoUri;->onMessageChannelReady:Z

    if-eqz v5, :cond_15

    .line 2000
    sget-object v5, Lo/releaseVelocityTracker$extraCallback;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    const-string v7, "Writing central directory metadata."

    new-array v8, v14, [Ljava/lang/Object;

    invoke-virtual {v5, v7, v8}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21000
    iget-object v5, v6, Lo/retrieve;->ICustomTabsCallback$Stub:[B

    .line 2000
    invoke-virtual {v0, v5, v3}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback([BLjava/io/InputStream;)V

    .line 22000
    :cond_15
    iget v3, v2, Lo/setOf;->onTransact:I

    add-int/2addr v3, v13

    iget v5, v2, Lo/setOf;->ICustomTabsCallback$Stub:I

    if-ne v3, v5, :cond_16

    const/4 v3, 0x1

    goto :goto_a

    :cond_16
    const/4 v3, 0x0

    :goto_a
    if-nez v3, :cond_1b

    .line 23000
    iget-boolean v3, v6, Lo/retrieve;->onNavigationEvent:Z

    if-eqz v3, :cond_17

    .line 2000
    sget-object v3, Lo/releaseVelocityTracker$extraCallback;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    const-string v4, "Writing slice checkpoint for partial local file header."

    new-array v5, v14, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24000
    iget-object v3, v6, Lo/retrieve;->ICustomTabsCallback$Stub:[B

    .line 2000
    iget v4, v2, Lo/setOf;->onTransact:I

    invoke-virtual {v0, v3, v4}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->extraCallback([BI)V

    goto :goto_c

    .line 28000
    :cond_17
    iget-boolean v3, v4, Lo/getPhotoUri;->onMessageChannelReady:Z

    if-eqz v3, :cond_18

    .line 2000
    sget-object v3, Lo/releaseVelocityTracker$extraCallback;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    const-string v4, "Writing slice checkpoint for central directory."

    new-array v5, v14, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget v3, v2, Lo/setOf;->onTransact:I

    invoke-virtual {v0, v3}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onPostMessage(I)V

    goto :goto_c

    .line 29000
    :cond_18
    iget v3, v6, Lo/retrieve;->ICustomTabsCallback:I

    if-nez v3, :cond_1a

    .line 2000
    sget-object v3, Lo/releaseVelocityTracker$extraCallback;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    const-string v5, "Writing slice checkpoint for partial file."

    new-array v7, v14, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v7}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Ljava/io/File;

    invoke-direct/range {p0 .. p1}, Lo/releaseVelocityTracker$extraCallback;->onPostMessage(Lo/setOf;)Ljava/io/File;

    move-result-object v5

    .line 30000
    iget-object v7, v6, Lo/retrieve;->onPostMessage:Ljava/lang/String;

    .line 2000
    invoke-direct {v3, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31000
    iget-wide v5, v6, Lo/retrieve;->onMessageChannelReady:J

    .line 32000
    iget-wide v7, v4, Lo/getPhotoUri;->extraCallback:J

    sub-long/2addr v5, v7

    .line 2000
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v7

    cmp-long v9, v7, v5

    if-nez v9, :cond_19

    goto :goto_b

    :cond_19
    new-instance v0, Lo/getFactory;

    const-string v3, "Partial file is of unexpected size."

    invoke-direct {v0, v3}, Lo/getFactory;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    sget-object v3, Lo/releaseVelocityTracker$extraCallback;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    const-string v5, "Writing slice checkpoint for partial unextractable file."

    new-array v6, v14, [Ljava/lang/Object;

    invoke-virtual {v3, v5, v6}, Lo/addItemDecoration$onPostMessage;->extraCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onNavigationEvent()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v5

    :goto_b
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    .line 33000
    iget-wide v8, v4, Lo/getPhotoUri;->extraCallback:J

    .line 2000
    iget v10, v2, Lo/setOf;->onTransact:I

    move-object v3, v0

    move-object v4, v7

    move-wide v7, v8

    move v9, v10

    invoke-virtual/range {v3 .. v9}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onNavigationEvent(Ljava/lang/String;JJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1b
    :goto_c
    :try_start_2
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 25000
    iget v3, v2, Lo/setOf;->onTransact:I

    add-int/2addr v3, v13

    iget v4, v2, Lo/setOf;->ICustomTabsCallback$Stub:I

    if-ne v3, v4, :cond_1c

    const/4 v3, 0x1

    goto :goto_d

    :cond_1c
    const/4 v3, 0x0

    :goto_d
    if-eqz v3, :cond_1d

    .line 2000
    :try_start_3
    iget v3, v2, Lo/setOf;->onTransact:I

    invoke-virtual {v0, v3}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onNavigationEvent(I)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_e

    :catch_0
    move-exception v0

    sget-object v3, Lo/releaseVelocityTracker$extraCallback;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v14

    const-string v5, "Writing extraction finished checkpoint failed with %s."

    invoke-virtual {v3, v5, v4}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lo/getFactory;

    iget v2, v2, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    const-string v4, "Writing extraction finished checkpoint failed."

    invoke-direct {v3, v4, v0, v2}, Lo/getFactory;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v3

    :cond_1d
    :goto_e
    sget-object v0, Lo/releaseVelocityTracker$extraCallback;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v2, Lo/setOf;->onTransact:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v14

    iget-object v4, v2, Lo/setOf;->onNavigationEvent:Ljava/lang/String;

    aput-object v4, v3, v13

    iget-object v4, v2, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    aput-object v4, v3, v12

    iget v4, v2, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    const-string v4, "Extraction finished for chunk %s of slice %s of pack %s of session %s."

    invoke-virtual {v0, v4, v3}, Lo/addItemDecoration$onPostMessage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Lo/releaseVelocityTracker$extraCallback;->extraCallback:Lo/setBreadcrumbEventReceiver;

    invoke-interface {v0}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/toGraph;

    iget v3, v2, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    iget-object v4, v2, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v5, v2, Lo/setOf;->onNavigationEvent:Ljava/lang/String;

    iget v6, v2, Lo/setOf;->onTransact:I

    invoke-interface {v0, v3, v4, v5, v6}, Lo/toGraph;->onNavigationEvent(ILjava/lang/String;Ljava/lang/String;I)V

    :try_start_4
    iget-object v0, v2, Lo/setOf;->getInterfaceDescriptor:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_f

    :catch_1
    sget-object v0, Lo/releaseVelocityTracker$extraCallback;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    iget v3, v2, Lo/setOf;->onTransact:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v14

    iget-object v3, v2, Lo/setOf;->onNavigationEvent:Ljava/lang/String;

    aput-object v3, v4, v13

    iget-object v3, v2, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    aput-object v3, v4, v12

    const-string v3, "Could not close file for chunk %s of slice %s of pack %s."

    invoke-virtual {v0, v3, v4}, Lo/addItemDecoration$onPostMessage;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_f
    iget v0, v2, Lo/setOf;->asInterface:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1e

    iget-object v0, v1, Lo/releaseVelocityTracker$extraCallback;->ICustomTabsCallback:Lo/setBreadcrumbEventReceiver;

    invoke-interface {v0}, Lo/setBreadcrumbEventReceiver;->ICustomTabsCallback()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setExecutor;

    iget-object v3, v2, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    iget-wide v8, v2, Lo/setOf;->onRelationshipValidationResult:J

    iget-object v4, v1, Lo/releaseVelocityTracker$extraCallback;->asInterface:Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;

    invoke-virtual {v4, v3, v2}, Lo/StatementResponse$StatementDetails$Transactions$onPostMessage;->onPostMessage(Ljava/lang/String;Lo/getInitialPrefetchItemCount$extraCallback;)D

    move-result-wide v4

    .line 26000
    new-instance v11, Lo/onCodeSent;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->rint(D)D

    move-result-wide v4

    double-to-int v10, v4

    move-object v2, v11

    move v4, v6

    move v5, v7

    move-wide v6, v8

    invoke-direct/range {v2 .. v10}, Lo/onCodeSent;-><init>(Ljava/lang/String;IIJJI)V

    .line 27000
    iget-object v2, v0, Lo/setExecutor;->extraCallback:Landroid/os/Handler;

    new-instance v3, Lo/getCachedSpanGroupIndex$onPostMessage;

    invoke-direct {v3, v0, v11}, Lo/getCachedSpanGroupIndex$onPostMessage;-><init>(Lo/setExecutor;Lo/getSignInProvider;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1e
    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 2000
    :try_start_5
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_10

    :catchall_1
    move-exception v0

    move-object v4, v0

    .line 42000
    :try_start_6
    sget-object v0, Lo/MediaBrowserCompat$ItemCallback$4;->ICustomTabsCallback:Lo/publish;

    invoke-virtual {v0, v3, v4}, Lo/publish;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 2000
    :goto_10
    throw v3
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    move-exception v0

    sget-object v3, Lo/releaseVelocityTracker$extraCallback;->onPostMessage:Lo/addItemDecoration$onPostMessage;

    new-array v4, v13, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v14

    const-string v5, "IOException during extraction %s."

    invoke-virtual {v3, v5, v4}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Lo/getFactory;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget v5, v2, Lo/setOf;->onTransact:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v14

    iget-object v5, v2, Lo/setOf;->onNavigationEvent:Ljava/lang/String;

    aput-object v5, v4, v13

    iget-object v5, v2, Lo/getInitialPrefetchItemCount$extraCallback;->ICustomTabsCallback:Ljava/lang/String;

    aput-object v5, v4, v12

    iget v5, v2, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    const-string v5, "Error extracting chunk %s of slice %s of pack %s of session %s."

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v2, v2, Lo/getInitialPrefetchItemCount$extraCallback;->extraCallback:I

    invoke-direct {v3, v4, v0, v2}, Lo/getFactory;-><init>(Ljava/lang/String;Ljava/lang/Exception;I)V

    throw v3
.end method
