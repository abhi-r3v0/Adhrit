.class final Lo/PriorityTaskManager$PriorityTooLowException;
.super Lo/AdActivity;
.source ""


# instance fields
.field private final onMessageChannelReady:Lo/HttpDataSource$InvalidResponseCodeException;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/AdActivity;-><init>()V

    .line 2
    new-instance v0, Lo/HttpDataSource$InvalidResponseCodeException;

    invoke-direct {v0}, Lo/HttpDataSource$InvalidResponseCodeException;-><init>()V

    iput-object v0, p0, Lo/PriorityTaskManager$PriorityTooLowException;->onMessageChannelReady:Lo/HttpDataSource$InvalidResponseCodeException;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/Throwable;)V
    .locals 4

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    iget-object v0, p0, Lo/PriorityTaskManager$PriorityTooLowException;->onMessageChannelReady:Lo/HttpDataSource$InvalidResponseCodeException;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lo/HttpDataSource$InvalidResponseCodeException;->ICustomTabsCallback(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 13
    :cond_0
    monitor-enter p1

    .line 14
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 15
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "Suppressed: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 18
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
