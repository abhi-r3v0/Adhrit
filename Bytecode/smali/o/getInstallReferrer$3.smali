.class final Lo/getInstallReferrer$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getInstallReferrer;->onMessageChannelReady(Lo/invalidateSpanInfo;Ljava/util/concurrent/atomic/AtomicBoolean;)Lo/getDrawerToggleDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lo/getCardBackgroundColor;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getInstallReferrer;

.field private synthetic onNavigationEvent:Lo/invalidateSpanInfo;

.field private synthetic onPostMessage:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lo/getInstallReferrer;Ljava/lang/Object;Ljava/util/concurrent/atomic/AtomicBoolean;Lo/invalidateSpanInfo;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lo/getInstallReferrer$3;->onMessageChannelReady:Lo/getInstallReferrer;

    iput-object p3, p0, Lo/getInstallReferrer$3;->onPostMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p4, p0, Lo/getInstallReferrer$3;->onNavigationEvent:Lo/invalidateSpanInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onPostMessage()Lo/getCardBackgroundColor;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 226
    :try_start_0
    iget-object v0, p0, Lo/getInstallReferrer$3;->onPostMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4

    .line 229
    iget-object v0, p0, Lo/getInstallReferrer$3;->onMessageChannelReady:Lo/getInstallReferrer;

    invoke-static {v0}, Lo/getInstallReferrer;->onMessageChannelReady(Lo/getInstallReferrer;)Lo/getGooglePlayInstantParam;

    move-result-object v0

    iget-object v1, p0, Lo/getInstallReferrer$3;->onNavigationEvent:Lo/invalidateSpanInfo;

    invoke-virtual {v0, v1}, Lo/getGooglePlayInstantParam;->onPostMessage(Lo/invalidateSpanInfo;)Lo/getCardBackgroundColor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-static {}, Lo/getInstallReferrer;->onPostMessage()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Found image for %s in staging area"

    iget-object v3, p0, Lo/getInstallReferrer$3;->onNavigationEvent:Lo/invalidateSpanInfo;

    invoke-interface {v3}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 232
    iget-object v1, p0, Lo/getInstallReferrer$3;->onMessageChannelReady:Lo/getInstallReferrer;

    invoke-static {v1}, Lo/getInstallReferrer;->extraCallback(Lo/getInstallReferrer;)Lo/MediaSessionCompat$1$onMessageChannelReady;

    goto :goto_0

    .line 234
    :cond_0
    invoke-static {}, Lo/getInstallReferrer;->onPostMessage()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Did not find image for %s in staging area"

    iget-object v2, p0, Lo/getInstallReferrer$3;->onNavigationEvent:Lo/invalidateSpanInfo;

    invoke-interface {v2}, Lo/invalidateSpanInfo;->extraCallback()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lo/getInstallReferrer$3;->onMessageChannelReady:Lo/getInstallReferrer;

    invoke-static {v0}, Lo/getInstallReferrer;->extraCallback(Lo/getInstallReferrer;)Lo/MediaSessionCompat$1$onMessageChannelReady;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 238
    :try_start_1
    iget-object v1, p0, Lo/getInstallReferrer$3;->onMessageChannelReady:Lo/getInstallReferrer;

    iget-object v2, p0, Lo/getInstallReferrer$3;->onNavigationEvent:Lo/invalidateSpanInfo;

    invoke-static {v1, v2}, Lo/getInstallReferrer;->onMessageChannelReady(Lo/getInstallReferrer;Lo/invalidateSpanInfo;)Lcom/facebook/common/memory/PooledByteBuffer;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    .line 242
    :cond_1
    invoke-static {v1}, Lo/getRootAlpha;->ICustomTabsCallback(Ljava/io/Closeable;)Lo/getRootAlpha;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    :try_start_2
    new-instance v2, Lo/getCardBackgroundColor;

    invoke-direct {v2, v1}, Lo/getCardBackgroundColor;-><init>(Lo/getRootAlpha;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 246
    :try_start_3
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v2

    .line 253
    :goto_0
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    invoke-static {}, Lo/getInstallReferrer;->onPostMessage()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Host thread was interrupted, decreasing reference count"

    invoke-static {v1, v2}, Lo/setTranslateX;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {v0}, Lo/getCardBackgroundColor;->close()V

    .line 258
    :cond_2
    new-instance v0, Ljava/lang/InterruptedException;

    invoke-direct {v0}, Ljava/lang/InterruptedException;-><init>()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_3
    return-object v0

    :catchall_0
    move-exception v2

    .line 246
    :try_start_5
    invoke-static {v1}, Lo/getRootAlpha;->onPostMessage(Lo/getRootAlpha;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    return-object v0

    .line 227
    :cond_4
    :try_start_6
    new-instance v0, Ljava/util/concurrent/CancellationException;

    invoke-direct {v0}, Ljava/util/concurrent/CancellationException;-><init>()V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    .line 264
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception v0

    .line 266
    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    invoke-direct {p0}, Lo/getInstallReferrer$3;->onPostMessage()Lo/getCardBackgroundColor;

    move-result-object v0

    return-object v0
.end method
