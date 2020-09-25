.class public final Lo/MediaSessionCompat$MediaSessionImplApi21$ExtraSession;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setAutoSizeTextTypeWithDefaults;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1005
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onPostMessage(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/channels/FileChannel;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const-wide/16 v5, 0x0

    const-wide v7, 0x7fffffffffffffffL

    move-object v3, p1

    move-object v4, p0

    .line 52
    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    goto :goto_1

    .line 54
    :cond_0
    invoke-static {p0}, Ljava/nio/channels/Channels;->newInputStream(Ljava/nio/channels/ReadableByteChannel;)Ljava/io/InputStream;

    move-result-object v0

    .line 55
    invoke-static {p1}, Ljava/nio/channels/Channels;->newOutputStream(Ljava/nio/channels/WritableByteChannel;)Ljava/io/OutputStream;

    move-result-object v1

    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 58
    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    if-lez v4, :cond_1

    .line 59
    invoke-virtual {v1, v3, v2, v4}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 62
    :cond_1
    :goto_1
    invoke-virtual {p1, v2}, Ljava/nio/channels/FileChannel;->force(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 65
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    return-void

    :catchall_0
    move-exception v0

    .line 64
    invoke-interface {p0}, Ljava/nio/channels/ReadableByteChannel;->close()V

    .line 65
    invoke-virtual {p1}, Ljava/nio/channels/spi/AbstractInterruptibleChannel;->close()V

    .line 66
    throw v0
.end method


# virtual methods
.method public final onNavigationEvent(Lo/ActivityChooserView;)Z
    .locals 2

    .line 1292
    iget v0, p1, Lo/ActivityChooserView;->asBinder:I

    .line 1489
    iget-object v1, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {v1}, Lo/getWindowAnimations;->onMessageChannelReady()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 2292
    iget v0, p1, Lo/ActivityChooserView;->asBinder:I

    .line 2327
    iget v1, p1, Lo/ActivityChooserView;->onMessageChannelReady:I

    add-int/2addr v0, v1

    .line 2481
    iget-object p1, p1, Lo/ActivityChooserView;->ICustomTabsService:Lo/getWindowAnimations;

    invoke-interface {p1}, Lo/getWindowAnimations;->onNavigationEvent()I

    move-result p1

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
