.class abstract Lo/getWireProtocolParams$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/toLog;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getWireProtocolParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:J

.field private synthetic extraCallback:Lo/getWireProtocolParams;

.field protected onMessageChannelReady:Z

.field private onNavigationEvent:Lo/buildLogMessage;


# direct methods
.method private constructor <init>(Lo/getWireProtocolParams;)V
    .locals 2

    .line 352
    iput-object p1, p0, Lo/getWireProtocolParams$onPostMessage;->extraCallback:Lo/getWireProtocolParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    new-instance p1, Lo/buildLogMessage;

    iget-object v0, p0, Lo/getWireProtocolParams$onPostMessage;->extraCallback:Lo/getWireProtocolParams;

    iget-object v0, v0, Lo/getWireProtocolParams;->onNavigationEvent:Lo/fullLimitUpdateChild;

    invoke-interface {v0}, Lo/fullLimitUpdateChild;->ICustomTabsCallback()Lo/logsDebug;

    move-result-object v0

    invoke-direct {p1, v0}, Lo/buildLogMessage;-><init>(Lo/logsDebug;)V

    iput-object p1, p0, Lo/getWireProtocolParams$onPostMessage;->onNavigationEvent:Lo/buildLogMessage;

    const-wide/16 v0, 0x0

    .line 355
    iput-wide v0, p0, Lo/getWireProtocolParams$onPostMessage;->ICustomTabsCallback:J

    return-void
.end method

.method synthetic constructor <init>(Lo/getWireProtocolParams;B)V
    .locals 0

    .line 352
    invoke-direct {p0, p1}, Lo/getWireProtocolParams$onPostMessage;-><init>(Lo/getWireProtocolParams;)V

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/updatePriority;J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    :try_start_0
    iget-object v0, p0, Lo/getWireProtocolParams$onPostMessage;->extraCallback:Lo/getWireProtocolParams;

    iget-object v0, v0, Lo/getWireProtocolParams;->onNavigationEvent:Lo/fullLimitUpdateChild;

    invoke-interface {v0, p1, p2, p3}, Lo/fullLimitUpdateChild;->ICustomTabsCallback(Lo/updatePriority;J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-lez p3, :cond_0

    .line 365
    iget-wide v0, p0, Lo/getWireProtocolParams$onPostMessage;->ICustomTabsCallback:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lo/getWireProtocolParams$onPostMessage;->ICustomTabsCallback:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-wide p1

    :catch_0
    move-exception p1

    const/4 p2, 0x0

    .line 369
    invoke-virtual {p0, p2, p1}, Lo/getWireProtocolParams$onPostMessage;->ICustomTabsCallback(ZLjava/io/IOException;)V

    .line 370
    throw p1
.end method

.method public final ICustomTabsCallback()Lo/logsDebug;
    .locals 1

    .line 358
    iget-object v0, p0, Lo/getWireProtocolParams$onPostMessage;->onNavigationEvent:Lo/buildLogMessage;

    return-object v0
.end method

.method protected final ICustomTabsCallback(ZLjava/io/IOException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lo/getWireProtocolParams$onPostMessage;->extraCallback:Lo/getWireProtocolParams;

    iget v0, v0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lo/getWireProtocolParams$onPostMessage;->extraCallback:Lo/getWireProtocolParams;

    iget v0, v0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_2

    .line 382
    iget-object v0, p0, Lo/getWireProtocolParams$onPostMessage;->onNavigationEvent:Lo/buildLogMessage;

    invoke-static {v0}, Lo/getWireProtocolParams;->onNavigationEvent(Lo/buildLogMessage;)V

    .line 384
    iget-object v0, p0, Lo/getWireProtocolParams$onPostMessage;->extraCallback:Lo/getWireProtocolParams;

    iput v1, v0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    .line 385
    iget-object v0, p0, Lo/getWireProtocolParams$onPostMessage;->extraCallback:Lo/getWireProtocolParams;

    iget-object v0, v0, Lo/getWireProtocolParams;->extraCallback:Lo/getIndexEndValue;

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lo/getWireProtocolParams$onPostMessage;->extraCallback:Lo/getWireProtocolParams;

    iget-object v0, v0, Lo/getWireProtocolParams;->extraCallback:Lo/getIndexEndValue;

    xor-int/lit8 p1, p1, 0x1

    iget-object v1, p0, Lo/getWireProtocolParams$onPostMessage;->extraCallback:Lo/getWireProtocolParams;

    invoke-virtual {v0, p1, v1, p2}, Lo/getIndexEndValue;->onMessageChannelReady(ZLo/getIndexStartName;Ljava/io/IOException;)V

    :cond_1
    return-void

    .line 380
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "state: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo/getWireProtocolParams$onPostMessage;->extraCallback:Lo/getWireProtocolParams;

    iget v0, v0, Lo/getWireProtocolParams;->onMessageChannelReady:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
