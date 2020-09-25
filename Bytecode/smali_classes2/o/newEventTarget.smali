.class public final Lo/newEventTarget;
.super Lo/newLogger;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/newEventTarget$onNavigationEvent;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/createPersistenceManager;

.field private final extraCallback:Lcom/squareup/picasso/Downloader;


# direct methods
.method public constructor <init>(Lcom/squareup/picasso/Downloader;Lo/createPersistenceManager;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lo/newLogger;-><init>()V

    .line 37
    iput-object p1, p0, Lo/newEventTarget;->extraCallback:Lcom/squareup/picasso/Downloader;

    .line 38
    iput-object p2, p0, Lo/newEventTarget;->ICustomTabsCallback:Lo/createPersistenceManager;

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final extraCallback(Lo/newRunLoop;)Z
    .locals 1

    .line 42
    iget-object p1, p1, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object p1

    const-string v0, "http"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "https"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method final onNavigationEvent()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final onNavigationEvent(Lo/newRunLoop;)Lo/newLogger$extraCallback;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lo/newEventTarget;->extraCallback:Lcom/squareup/picasso/Downloader;

    iget-object v1, p1, Lo/newRunLoop;->extraCallback:Landroid/net/Uri;

    iget p1, p1, Lo/newRunLoop;->onNavigationEvent:I

    invoke-interface {v0, v1, p1}, Lcom/squareup/picasso/Downloader;->onMessageChannelReady(Landroid/net/Uri;I)Lcom/squareup/picasso/Downloader$onNavigationEvent;

    move-result-object p1

    .line 52
    iget-boolean v0, p1, Lcom/squareup/picasso/Downloader$onNavigationEvent;->onNavigationEvent:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/picasso/Picasso$extraCallback;->onMessageChannelReady:Lcom/squareup/picasso/Picasso$extraCallback;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/squareup/picasso/Picasso$extraCallback;->extraCallback:Lcom/squareup/picasso/Picasso$extraCallback;

    .line 2131
    :goto_0
    iget-object v1, p1, Lcom/squareup/picasso/Downloader$onNavigationEvent;->ICustomTabsCallback:Ljava/io/InputStream;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 65
    :cond_1
    sget-object v2, Lcom/squareup/picasso/Picasso$extraCallback;->onMessageChannelReady:Lcom/squareup/picasso/Picasso$extraCallback;

    const-wide/16 v3, 0x0

    if-ne v0, v2, :cond_3

    .line 2148
    iget-wide v5, p1, Lcom/squareup/picasso/Downloader$onNavigationEvent;->onPostMessage:J

    cmp-long v2, v5, v3

    if-eqz v2, :cond_2

    goto :goto_1

    .line 66
    :cond_2
    invoke-static {v1}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/io/InputStream;)V

    .line 67
    new-instance p1, Lo/newEventTarget$onNavigationEvent;

    const-string v0, "Received response with 0 content-length header."

    invoke-direct {p1, v0}, Lo/newEventTarget$onNavigationEvent;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_3
    :goto_1
    sget-object v2, Lcom/squareup/picasso/Picasso$extraCallback;->extraCallback:Lcom/squareup/picasso/Picasso$extraCallback;

    if-ne v0, v2, :cond_4

    .line 3148
    iget-wide v5, p1, Lcom/squareup/picasso/Downloader$onNavigationEvent;->onPostMessage:J

    cmp-long v2, v5, v3

    if-lez v2, :cond_4

    .line 70
    iget-object v2, p0, Lo/newEventTarget;->ICustomTabsCallback:Lo/createPersistenceManager;

    .line 4148
    iget-wide v3, p1, Lcom/squareup/picasso/Downloader$onNavigationEvent;->onPostMessage:J

    .line 5068
    iget-object p1, v2, Lo/createPersistenceManager;->onPostMessage:Landroid/os/Handler;

    iget-object v2, v2, Lo/createPersistenceManager;->onPostMessage:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v5, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 72
    :cond_4
    new-instance p1, Lo/newLogger$extraCallback;

    invoke-direct {p1, v1, v0}, Lo/newLogger$extraCallback;-><init>(Ljava/io/InputStream;Lcom/squareup/picasso/Picasso$extraCallback;)V

    return-object p1
.end method

.method final onNavigationEvent(Landroid/net/NetworkInfo;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 80
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
