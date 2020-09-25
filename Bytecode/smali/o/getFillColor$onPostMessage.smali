.class final Lo/getFillColor$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getFillColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onPostMessage"
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getFillColor;


# direct methods
.method private constructor <init>(Lo/getFillColor;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lo/getFillColor$onPostMessage;->onMessageChannelReady:Lo/getFillColor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/getFillColor;B)V
    .locals 0

    .line 161
    invoke-direct {p0, p1}, Lo/getFillColor$onPostMessage;-><init>(Lo/getFillColor;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string v0, "%s: worker finished; %d workers left"

    .line 166
    :try_start_0
    iget-object v1, p0, Lo/getFillColor$onPostMessage;->onMessageChannelReady:Lo/getFillColor;

    invoke-static {v1}, Lo/getFillColor;->onMessageChannelReady(Lo/getFillColor;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    .line 168
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {}, Lo/getFillColor;->onNavigationEvent()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "%s: Worker has nothing to run"

    iget-object v3, p0, Lo/getFillColor$onPostMessage;->onMessageChannelReady:Lo/getFillColor;

    invoke-static {v3}, Lo/getFillColor;->onNavigationEvent(Lo/getFillColor;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    :goto_0
    iget-object v1, p0, Lo/getFillColor$onPostMessage;->onMessageChannelReady:Lo/getFillColor;

    invoke-static {v1}, Lo/getFillColor;->onPostMessage(Lo/getFillColor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    .line 176
    iget-object v2, p0, Lo/getFillColor$onPostMessage;->onMessageChannelReady:Lo/getFillColor;

    invoke-static {v2}, Lo/getFillColor;->onMessageChannelReady(Lo/getFillColor;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 177
    iget-object v0, p0, Lo/getFillColor$onPostMessage;->onMessageChannelReady:Lo/getFillColor;

    invoke-static {v0}, Lo/getFillColor;->extraCallback(Lo/getFillColor;)V

    return-void

    .line 179
    :cond_1
    invoke-static {}, Lo/getFillColor;->onNavigationEvent()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lo/getFillColor$onPostMessage;->onMessageChannelReady:Lo/getFillColor;

    invoke-static {v3}, Lo/getFillColor;->onNavigationEvent(Lo/getFillColor;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v0, v3, v1}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    .line 175
    iget-object v2, p0, Lo/getFillColor$onPostMessage;->onMessageChannelReady:Lo/getFillColor;

    invoke-static {v2}, Lo/getFillColor;->onPostMessage(Lo/getFillColor;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    .line 176
    iget-object v3, p0, Lo/getFillColor$onPostMessage;->onMessageChannelReady:Lo/getFillColor;

    invoke-static {v3}, Lo/getFillColor;->onMessageChannelReady(Lo/getFillColor;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 177
    iget-object v0, p0, Lo/getFillColor$onPostMessage;->onMessageChannelReady:Lo/getFillColor;

    invoke-static {v0}, Lo/getFillColor;->extraCallback(Lo/getFillColor;)V

    goto :goto_1

    .line 179
    :cond_2
    invoke-static {}, Lo/getFillColor;->onNavigationEvent()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, p0, Lo/getFillColor$onPostMessage;->onMessageChannelReady:Lo/getFillColor;

    invoke-static {v4}, Lo/getFillColor;->onNavigationEvent(Lo/getFillColor;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3, v0, v4, v2}, Lo/setTranslateX;->onPostMessage(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 181
    :goto_1
    throw v1
.end method
