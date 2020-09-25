.class Lo/determineFrom$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/determineFrom$onMessageChannelReady;
.implements Lo/remainingBytes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/determineFrom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "extraCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lo/determineFrom;

.field private ws:Lo/ringRead;


# direct methods
.method private constructor <init>(Lo/determineFrom;Lo/ringRead;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lo/determineFrom$extraCallback;->ws:Lo/ringRead;

    .line 61
    invoke-virtual {p2, p0}, Lo/ringRead;->setEventHandler(Lo/remainingBytes;)V

    return-void
.end method

.method synthetic constructor <init>(Lo/determineFrom;Lo/ringRead;Lo/determineFrom$2;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lo/determineFrom$extraCallback;-><init>(Lo/determineFrom;Lo/ringRead;)V

    return-void
.end method

.method private shutdown()V
    .locals 3

    .line 136
    iget-object v0, p0, Lo/determineFrom$extraCallback;->ws:Lo/ringRead;

    invoke-virtual {v0}, Lo/ringRead;->close()V

    .line 138
    :try_start_0
    iget-object v0, p0, Lo/determineFrom$extraCallback;->ws:Lo/ringRead;

    invoke-virtual {v0}, Lo/ringRead;->blockClose()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 140
    iget-object v1, p0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v1}, Lo/determineFrom;->access$200(Lo/determineFrom;)Lo/FileLogStore;

    move-result-object v1

    const-string v2, "Interrupted while shutting down websocket threads"

    invoke-virtual {v1, v2, v0}, Lo/FileLogStore;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 132
    iget-object v0, p0, Lo/determineFrom$extraCallback;->ws:Lo/ringRead;

    invoke-virtual {v0}, Lo/ringRead;->close()V

    return-void
.end method

.method public connect()V
    .locals 4

    .line 147
    :try_start_0
    iget-object v0, p0, Lo/determineFrom$extraCallback;->ws:Lo/ringRead;

    invoke-virtual {v0}, Lo/ringRead;->connect()V
    :try_end_0
    .catch Lcom/google/firebase/database/tubesock/WebSocketException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 149
    iget-object v1, p0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v1}, Lo/determineFrom;->access$200(Lo/determineFrom;)Lo/FileLogStore;

    move-result-object v1

    invoke-virtual {v1}, Lo/FileLogStore;->logsDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v1}, Lo/determineFrom;->access$200(Lo/determineFrom;)Lo/FileLogStore;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Error connecting"

    invoke-virtual {v1, v3, v0, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 150
    :cond_0
    invoke-direct {p0}, Lo/determineFrom$extraCallback;->shutdown()V

    return-void
.end method

.method public onClose()V
    .locals 2

    .line 94
    iget-object v0, p0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$400(Lo/determineFrom;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lo/determineFrom$extraCallback$4;

    invoke-direct {v1, p0}, Lo/determineFrom$extraCallback$4;-><init>(Lo/determineFrom$extraCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onError(Lcom/google/firebase/database/tubesock/WebSocketException;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$400(Lo/determineFrom;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lo/determineFrom$extraCallback$2;

    invoke-direct {v1, p0, p1}, Lo/determineFrom$extraCallback$2;-><init>(Lo/determineFrom$extraCallback;Lcom/google/firebase/database/tubesock/WebSocketException;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onLogMessage(Ljava/lang/String;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$200(Lo/determineFrom;)Lo/FileLogStore;

    move-result-object v0

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$200(Lo/determineFrom;)Lo/FileLogStore;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Tubesock: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onMessage(Lo/usedBytes;)V
    .locals 3

    .line 80
    invoke-virtual {p1}, Lo/usedBytes;->getText()Ljava/lang/String;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$200(Lo/determineFrom;)Lo/FileLogStore;

    move-result-object v0

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$200(Lo/determineFrom;)Lo/FileLogStore;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ws message: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$400(Lo/determineFrom;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lo/determineFrom$extraCallback$3;

    invoke-direct {v1, p0, p1}, Lo/determineFrom$extraCallback$3;-><init>(Lo/determineFrom$extraCallback;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onOpen()V
    .locals 2

    .line 66
    iget-object v0, p0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$400(Lo/determineFrom;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lo/determineFrom$extraCallback$5;

    invoke-direct {v1, p0}, Lo/determineFrom$extraCallback$5;-><init>(Lo/determineFrom$extraCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lo/determineFrom$extraCallback;->ws:Lo/ringRead;

    invoke-virtual {v0, p1}, Lo/ringRead;->send(Ljava/lang/String;)V

    return-void
.end method
