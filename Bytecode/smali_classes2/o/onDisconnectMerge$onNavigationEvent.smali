.class final Lo/onDisconnectMerge$onNavigationEvent;
.super Ljava/io/OutputStream;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onDisconnectMerge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onDisconnectMerge;

.field private extraCallback:Lo/sendPut;

.field final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/sendPut;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/onDisconnectMerge;)V
    .locals 0

    .line 385
    iput-object p1, p0, Lo/onDisconnectMerge$onNavigationEvent;->ICustomTabsCallback:Lo/onDisconnectMerge;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 386
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/onDisconnectMerge$onNavigationEvent;->onPostMessage:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lo/onDisconnectMerge;B)V
    .locals 0

    .line 385
    invoke-direct {p0, p1}, Lo/onDisconnectMerge$onNavigationEvent;-><init>(Lo/onDisconnectMerge;)V

    return-void
.end method


# virtual methods
.method final extraCallback()I
    .locals 3

    .line 429
    iget-object v0, p0, Lo/onDisconnectMerge$onNavigationEvent;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/sendPut;

    .line 430
    invoke-interface {v2}, Lo/sendPut;->onPostMessage()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public final write(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lo/onDisconnectMerge$onNavigationEvent;->extraCallback:Lo/sendPut;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/sendPut;->extraCallback()I

    move-result v0

    if-lez v0, :cond_0

    .line 397
    iget-object v0, p0, Lo/onDisconnectMerge$onNavigationEvent;->extraCallback:Lo/sendPut;

    int-to-byte p1, p1

    invoke-interface {v0, p1}, Lo/sendPut;->ICustomTabsCallback(B)V

    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte p1, p1

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    .line 401
    invoke-virtual {p0, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 2

    .line 406
    iget-object v0, p0, Lo/onDisconnectMerge$onNavigationEvent;->extraCallback:Lo/sendPut;

    if-nez v0, :cond_0

    .line 408
    iget-object v0, p0, Lo/onDisconnectMerge$onNavigationEvent;->ICustomTabsCallback:Lo/onDisconnectMerge;

    .line 1043
    iget-object v0, v0, Lo/onDisconnectMerge;->onMessageChannelReady:Lo/restoreState;

    .line 408
    invoke-interface {v0, p3}, Lo/restoreState;->onMessageChannelReady(I)Lo/sendPut;

    move-result-object v0

    iput-object v0, p0, Lo/onDisconnectMerge$onNavigationEvent;->extraCallback:Lo/sendPut;

    .line 409
    iget-object v1, p0, Lo/onDisconnectMerge$onNavigationEvent;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    if-lez p3, :cond_2

    .line 412
    iget-object v0, p0, Lo/onDisconnectMerge$onNavigationEvent;->extraCallback:Lo/sendPut;

    invoke-interface {v0}, Lo/sendPut;->extraCallback()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_1

    .line 416
    iget-object v0, p0, Lo/onDisconnectMerge$onNavigationEvent;->extraCallback:Lo/sendPut;

    invoke-interface {v0}, Lo/sendPut;->onPostMessage()I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {p3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 417
    iget-object v1, p0, Lo/onDisconnectMerge$onNavigationEvent;->ICustomTabsCallback:Lo/onDisconnectMerge;

    .line 2043
    iget-object v1, v1, Lo/onDisconnectMerge;->onMessageChannelReady:Lo/restoreState;

    .line 417
    invoke-interface {v1, v0}, Lo/restoreState;->onMessageChannelReady(I)Lo/sendPut;

    move-result-object v0

    iput-object v0, p0, Lo/onDisconnectMerge$onNavigationEvent;->extraCallback:Lo/sendPut;

    .line 418
    iget-object v1, p0, Lo/onDisconnectMerge$onNavigationEvent;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 420
    :cond_1
    iget-object v1, p0, Lo/onDisconnectMerge$onNavigationEvent;->extraCallback:Lo/sendPut;

    invoke-interface {v1, p1, p2, v0}, Lo/sendPut;->onNavigationEvent([BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    :cond_2
    return-void
.end method
