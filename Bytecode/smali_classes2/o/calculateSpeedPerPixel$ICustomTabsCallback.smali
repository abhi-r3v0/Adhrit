.class public final Lo/calculateSpeedPerPixel$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/calculateSpeedPerPixel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/compass/wishlist/adapter/RewardsWishlistAdapter$Companion;",
        "",
        "()V",
        "WISHLISTED_REWARD_ITEM",
        "",
        "WISHLISTED_REWARD_SHIMMER_ITEM",
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
.field private static final onNavigationEvent:Lo/addItemDecoration$onPostMessage;


# instance fields
.field private final ICustomTabsCallback:[B

.field private final ICustomTabsCallback$Stub:J

.field private final extraCallback:I

.field private final onMessageChannelReady:Lo/onVerificationFailed;

.field private final onPostMessage:Ljava/lang/String;

.field private onRelationshipValidationResult:I

.field private final onTransact:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39000
    new-instance v0, Lo/addItemDecoration$onPostMessage;

    const-string v1, "SliceMetadataManager"

    invoke-direct {v0, v1}, Lo/addItemDecoration$onPostMessage;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/onVerificationFailed;Ljava/lang/String;IJLjava/lang/String;)V
    .locals 1

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback:[B

    iput-object p1, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onMessageChannelReady:Lo/onVerificationFailed;

    iput-object p2, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    iput p3, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->extraCallback:I

    iput-wide p4, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback$Stub:J

    iput-object p6, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onTransact:Ljava/lang/String;

    const/4 p1, -0x1

    iput p1, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult:I

    return-void
.end method

.method private extraCallback()Ljava/io/File;
    .locals 7

    .line 34000
    iget-object v0, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onMessageChannelReady:Lo/onVerificationFailed;

    iget-object v1, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    iget v2, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->extraCallback:I

    iget-wide v3, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback$Stub:J

    iget-object v5, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onTransact:Ljava/lang/String;

    .line 35000
    new-instance v6, Ljava/io/File;

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/onVerificationFailed;->ICustomTabsCallback(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 34000
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v6
.end method

.method private onRelationshipValidationResult()Ljava/io/File;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36000
    iget-object v0, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onMessageChannelReady:Lo/onVerificationFailed;

    iget-object v1, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    iget v2, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->extraCallback:I

    iget-wide v3, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback$Stub:J

    iget-object v5, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onTransact:Ljava/lang/String;

    .line 37000
    new-instance v6, Ljava/io/File;

    .line 38000
    new-instance v7, Ljava/io/File;

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/onVerificationFailed;->ICustomTabsCallback(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    invoke-direct {v7, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "checkpoint.dat"

    .line 37000
    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 36000
    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v6}, Ljava/io/File;->createNewFile()Z

    return-object v6
.end method


# virtual methods
.method public final ICustomTabsCallback([BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40000
    iget v0, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult:I

    invoke-virtual {p0}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onNavigationEvent()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v0, p2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 41000
    sget-object v0, Lo/MediaBrowserCompat$ItemCallback$4;->ICustomTabsCallback:Lo/publish;

    invoke-virtual {v0, p1, p2}, Lo/publish;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 40000
    :goto_0
    throw p1
.end method

.method public final ICustomTabsCallback([BLjava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21000
    iget v0, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult:I

    invoke-virtual {p0}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onNavigationEvent()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    iget-object p1, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback:[B

    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    :goto_0
    if-lez p1, :cond_0

    iget-object v0, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback:[B

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Ljava/io/OutputStream;->write([BII)V

    iget-object p1, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback:[B

    invoke-virtual {p2, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    .line 22000
    sget-object v0, Lo/MediaBrowserCompat$ItemCallback$4;->ICustomTabsCallback:Lo/publish;

    invoke-virtual {v0, p1, p2}, Lo/publish;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 21000
    :goto_1
    throw p1
.end method

.method public final ICustomTabsCallback()Z
    .locals 8

    .line 30000
    iget-object v0, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onMessageChannelReady:Lo/onVerificationFailed;

    iget-object v1, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    iget v2, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->extraCallback:I

    iget-wide v3, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback$Stub:J

    iget-object v5, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onTransact:Ljava/lang/String;

    .line 31000
    new-instance v6, Ljava/io/File;

    .line 32000
    new-instance v7, Ljava/io/File;

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/onVerificationFailed;->ICustomTabsCallback(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    invoke-direct {v7, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "checkpoint.dat"

    .line 31000
    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 30000
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v3, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "fileStatus"

    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    sget-object v0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Slice checkpoint file corrupt while checking if extraction finished."

    invoke-virtual {v0, v3, v2}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    return v0

    :cond_2
    return v1

    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    .line 33000
    :try_start_4
    sget-object v4, Lo/MediaBrowserCompat$ItemCallback$4;->ICustomTabsCallback:Lo/publish;

    invoke-virtual {v4, v3, v2}, Lo/publish;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 30000
    :goto_0
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v2

    sget-object v3, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onNavigationEvent:Lo/addItemDecoration$onPostMessage;

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    const-string v2, "Could not read checkpoint while checking if extraction finished. %s"

    invoke-virtual {v3, v2, v0}, Lo/addItemDecoration$onPostMessage;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public final extraCallback(J[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23000
    invoke-virtual {p0}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onNavigationEvent()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, p3, p4, p5}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 24000
    sget-object p3, Lo/MediaBrowserCompat$ItemCallback$4;->ICustomTabsCallback:Lo/publish;

    invoke-virtual {p3, p1, p2}, Lo/publish;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 23000
    :goto_0
    throw p1
.end method

.method public final extraCallback([BI)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4000
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "fileStatus"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "previousChunk"

    invoke-virtual {v0, v1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p2, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "metadataFileCounter"

    invoke-virtual {v0, v1, p2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult()Ljava/io/File;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p2, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    iget-object p2, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onMessageChannelReady:Lo/onVerificationFailed;

    iget-object v0, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    iget v1, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->extraCallback:I

    iget-wide v2, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback$Stub:J

    iget-object v4, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onTransact:Ljava/lang/String;

    .line 5000
    new-instance v5, Ljava/io/File;

    .line 6000
    new-instance v6, Ljava/io/File;

    invoke-virtual {p2, v0, v1, v2, v3}, Lo/onVerificationFailed;->ICustomTabsCallback(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object p2

    invoke-direct {v6, p2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p2, "checkpoint_ext.dat"

    .line 5000
    invoke-direct {v5, v6, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4000
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    :try_start_1
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 8000
    sget-object v0, Lo/MediaBrowserCompat$ItemCallback$4;->ICustomTabsCallback:Lo/publish;

    invoke-virtual {v0, p1, p2}, Lo/publish;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 4000
    :goto_0
    throw p1

    :catchall_2
    move-exception p1

    :try_start_3
    invoke-virtual {p2}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    .line 7000
    sget-object v0, Lo/MediaBrowserCompat$ItemCallback$4;->ICustomTabsCallback:Lo/publish;

    invoke-virtual {v0, p1, p2}, Lo/publish;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 4000
    :goto_1
    throw p1
.end method

.method public final onMessageChannelReady()Lo/eagerInDefaultApp;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "-1"

    .line 13000
    iget-object v1, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onMessageChannelReady:Lo/onVerificationFailed;

    iget-object v2, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    iget v3, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->extraCallback:I

    iget-wide v4, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback$Stub:J

    iget-object v6, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onTransact:Ljava/lang/String;

    .line 14000
    new-instance v7, Ljava/io/File;

    .line 15000
    new-instance v8, Ljava/io/File;

    invoke-virtual {v1, v2, v3, v4, v5}, Lo/onVerificationFailed;->ICustomTabsCallback(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v1

    invoke-direct {v8, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v1, "checkpoint.dat"

    .line 14000
    invoke-direct {v7, v8, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 13000
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    const-string v2, "fileStatus"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Slice checkpoint file corrupt."

    if-eqz v3, :cond_0

    const-string v3, "previousChunk"

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const-string v2, "fileName"

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "fileOffset"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    const-string v2, "remainingBytes"

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    const-string v0, "metadataFileCounter"

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    new-instance v0, Lo/eagerInDefaultApp;

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lo/eagerInDefaultApp;-><init>(ILjava/lang/String;JJI)V

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lo/getFactory;

    invoke-direct {v1, v4, v0}, Lo/getFactory;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_0
    new-instance v0, Lo/getFactory;

    invoke-direct {v0, v4}, Lo/getFactory;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 16000
    sget-object v2, Lo/MediaBrowserCompat$ItemCallback$4;->ICustomTabsCallback:Lo/publish;

    invoke-virtual {v2, v0, v1}, Lo/publish;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 13000
    :goto_0
    throw v0

    :cond_1
    new-instance v0, Lo/getFactory;

    const-string v1, "Slice checkpoint file does not exist."

    invoke-direct {v0, v1}, Lo/getFactory;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19000
    iget v0, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult:I

    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->extraCallback()Ljava/io/File;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const-string v3, "%s-LFH.dat"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 20000
    :try_start_4
    sget-object v1, Lo/MediaBrowserCompat$ItemCallback$4;->ICustomTabsCallback:Lo/publish;

    invoke-virtual {v1, p1, v0}, Lo/publish;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 19000
    :goto_0
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Lo/getFactory;

    const-string v1, "Could not write metadata file."

    invoke-direct {v0, v1, p1}, Lo/getFactory;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public final onNavigationEvent()Ljava/io/File;
    .locals 5

    .line 25000
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->extraCallback()Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%s-NAM.dat"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final onNavigationEvent(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11000
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "fileStatus"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "previousChunk"

    invoke-virtual {v0, v1, p1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "metadataFileCounter"

    invoke-virtual {v0, v1, p1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult()Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 12000
    sget-object v1, Lo/MediaBrowserCompat$ItemCallback$4;->ICustomTabsCallback:Lo/publish;

    invoke-virtual {v1, v0, p1}, Lo/publish;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 11000
    :goto_0
    throw v0
.end method

.method public final onNavigationEvent(Ljava/io/InputStream;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17000
    invoke-virtual {p0}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onNavigationEvent()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rw"

    invoke-direct {v1, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_0
    iget-object p2, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback:[B

    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p2

    if-lez p2, :cond_1

    iget-object p3, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback:[B

    const/4 v0, 0x0

    invoke-virtual {v1, p3, v0, p2}, Ljava/io/RandomAccessFile;->write([BII)V

    :cond_1
    iget-object p3, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback:[B

    array-length p3, p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p2, p3, :cond_0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 18000
    sget-object p3, Lo/MediaBrowserCompat$ItemCallback$4;->ICustomTabsCallback:Lo/publish;

    invoke-virtual {p3, p1, p2}, Lo/publish;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 17000
    :goto_0
    throw p1
.end method

.method public final onNavigationEvent(Ljava/lang/String;JJI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2000
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "fileStatus"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "fileName"

    invoke-virtual {v0, v1, p1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "fileOffset"

    invoke-virtual {v0, p2, p1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "remainingBytes"

    invoke-virtual {v0, p2, p1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "previousChunk"

    invoke-virtual {v0, p2, p1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "metadataFileCounter"

    invoke-virtual {v0, p2, p1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult()Ljava/io/File;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 p2, 0x0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 3000
    sget-object p3, Lo/MediaBrowserCompat$ItemCallback$4;->ICustomTabsCallback:Lo/publish;

    invoke-virtual {p3, p2, p1}, Lo/publish;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 2000
    :goto_0
    throw p2
.end method

.method public final onPostMessage()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 26000
    iget-object v0, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onMessageChannelReady:Lo/onVerificationFailed;

    iget-object v1, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    iget v2, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->extraCallback:I

    iget-wide v3, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->ICustomTabsCallback$Stub:J

    iget-object v5, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onTransact:Ljava/lang/String;

    .line 27000
    new-instance v6, Ljava/io/File;

    .line 28000
    new-instance v7, Ljava/io/File;

    invoke-virtual {v0, v1, v2, v3, v4}, Lo/onVerificationFailed;->ICustomTabsCallback(Ljava/lang/String;IJ)Ljava/io/File;

    move-result-object v0

    invoke-direct {v7, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v0, "checkpoint.dat"

    .line 27000
    invoke-direct {v6, v7, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 26000
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const-string v0, "fileStatus"

    const-string v2, "-1"

    invoke-virtual {v1, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    const-string v0, "previousChunk"

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    new-instance v0, Lo/getFactory;

    const-string v1, "Slice checkpoint file corrupt."

    invoke-direct {v0, v1}, Lo/getFactory;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 29000
    sget-object v2, Lo/MediaBrowserCompat$ItemCallback$4;->ICustomTabsCallback:Lo/publish;

    invoke-virtual {v2, v1, v0}, Lo/publish;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 26000
    :goto_0
    throw v1
.end method

.method public final onPostMessage(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9000
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "fileStatus"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onNavigationEvent()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fileOffset"

    invoke-virtual {v0, v2, v1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "previousChunk"

    invoke-virtual {v0, v1, p1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "metadataFileCounter"

    invoke-virtual {v0, v1, p1}, Ljava/util/Dictionary;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p0}, Lo/calculateSpeedPerPixel$ICustomTabsCallback;->onRelationshipValidationResult()Ljava/io/File;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, p1, v1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 10000
    sget-object v1, Lo/MediaBrowserCompat$ItemCallback$4;->ICustomTabsCallback:Lo/publish;

    invoke-virtual {v1, v0, p1}, Lo/publish;->onPostMessage(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    .line 9000
    :goto_0
    throw v0
.end method
