.class final Lo/buildFeaturesSessionDataFrom$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/buildFeaturesSessionDataFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/buildFeaturesSessionDataFrom;


# direct methods
.method private constructor <init>(Lo/buildFeaturesSessionDataFrom;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lo/buildFeaturesSessionDataFrom$onNavigationEvent;->onMessageChannelReady:Lo/buildFeaturesSessionDataFrom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/buildFeaturesSessionDataFrom;B)V
    .locals 0

    .line 348
    invoke-direct {p0, p1}, Lo/buildFeaturesSessionDataFrom$onNavigationEvent;-><init>(Lo/buildFeaturesSessionDataFrom;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 351
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const-string v1, "WebsocketWriteThread"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 353
    :goto_0
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom$onNavigationEvent;->onMessageChannelReady:Lo/buildFeaturesSessionDataFrom;

    invoke-static {v0}, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback(Lo/buildFeaturesSessionDataFrom;)Lo/getSettingsFile;

    move-result-object v0

    iget-object v0, v0, Lo/getSettingsFile;->extraCallback:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 355
    iget-object v1, p0, Lo/buildFeaturesSessionDataFrom$onNavigationEvent;->onMessageChannelReady:Lo/buildFeaturesSessionDataFrom;

    invoke-static {v1}, Lo/buildFeaturesSessionDataFrom;->onMessageChannelReady(Lo/buildFeaturesSessionDataFrom;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 356
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom$onNavigationEvent;->onMessageChannelReady:Lo/buildFeaturesSessionDataFrom;

    invoke-static {v0}, Lo/buildFeaturesSessionDataFrom;->onMessageChannelReady(Lo/buildFeaturesSessionDataFrom;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    return-void

    .line 359
    :catch_1
    iget-object v0, p0, Lo/buildFeaturesSessionDataFrom$onNavigationEvent;->onMessageChannelReady:Lo/buildFeaturesSessionDataFrom;

    invoke-static {v0}, Lo/buildFeaturesSessionDataFrom;->ICustomTabsCallback(Lo/buildFeaturesSessionDataFrom;)Lo/getSettingsFile;

    move-result-object v0

    invoke-virtual {v0}, Lo/getSettingsFile;->onPostMessage()V

    return-void
.end method
