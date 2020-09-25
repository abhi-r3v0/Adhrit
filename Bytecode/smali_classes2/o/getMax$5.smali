.class final Lo/getMax$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMax;->onPostMessage(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getMax;

.field private synthetic onMessageChannelReady:I


# direct methods
.method constructor <init>(Lo/getMax;I)V
    .locals 0

    .line 75
    iput-object p1, p0, Lo/getMax$5;->ICustomTabsCallback:Lo/getMax;

    iput p2, p0, Lo/getMax$5;->onMessageChannelReady:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 78
    iget-object v0, p0, Lo/getMax$5;->ICustomTabsCallback:Lo/getMax;

    .line 1034
    iget-object v0, v0, Lo/getMax;->extraCallback:Lo/interrupt;

    .line 1236
    iget-object v1, v0, Lo/interrupt;->onPostMessage:Lo/buildPennant;

    if-nez v1, :cond_0

    iget-object v0, v0, Lo/interrupt;->onMessageChannelReady:Lo/getExecutorService;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 82
    :cond_1
    :try_start_0
    iget-object v0, p0, Lo/getMax$5;->ICustomTabsCallback:Lo/getMax;

    .line 2034
    iget-object v0, v0, Lo/getMax;->extraCallback:Lo/interrupt;

    .line 82
    iget v1, p0, Lo/getMax$5;->onMessageChannelReady:I

    invoke-virtual {v0, v1}, Lo/interrupt;->onPostMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 84
    iget-object v1, p0, Lo/getMax$5;->ICustomTabsCallback:Lo/getMax;

    .line 3034
    iget-object v1, v1, Lo/getMax;->onNavigationEvent:Lo/interrupt$onNavigationEvent;

    .line 84
    invoke-interface {v1, v0}, Lo/interrupt$onNavigationEvent;->extraCallback(Ljava/lang/Throwable;)V

    .line 85
    iget-object v0, p0, Lo/getMax$5;->ICustomTabsCallback:Lo/getMax;

    .line 4034
    iget-object v0, v0, Lo/getMax;->extraCallback:Lo/interrupt;

    .line 85
    invoke-virtual {v0}, Lo/interrupt;->close()V

    return-void
.end method
