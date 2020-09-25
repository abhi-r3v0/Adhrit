.class final Lo/getMax$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getMax;->onMessageChannelReady(Lo/onServerInfoUpdate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onServerInfoUpdate;

.field private synthetic onPostMessage:Lo/getMax;


# direct methods
.method constructor <init>(Lo/getMax;Lo/onServerInfoUpdate;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lo/getMax$3;->onPostMessage:Lo/getMax;

    iput-object p2, p0, Lo/getMax$3;->ICustomTabsCallback:Lo/onServerInfoUpdate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 99
    :try_start_0
    iget-object v0, p0, Lo/getMax$3;->onPostMessage:Lo/getMax;

    .line 1034
    iget-object v0, v0, Lo/getMax;->extraCallback:Lo/interrupt;

    .line 99
    iget-object v1, p0, Lo/getMax$3;->ICustomTabsCallback:Lo/onServerInfoUpdate;

    invoke-virtual {v0, v1}, Lo/interrupt;->onMessageChannelReady(Lo/onServerInfoUpdate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 101
    iget-object v1, p0, Lo/getMax$3;->onPostMessage:Lo/getMax;

    .line 1165
    iget-object v2, v1, Lo/getMax;->ICustomTabsCallback:Lo/getMax$onNavigationEvent;

    new-instance v3, Lo/getMax$6;

    invoke-direct {v3, v1, v0}, Lo/getMax$6;-><init>(Lo/getMax;Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Lo/getMax$onNavigationEvent;->onNavigationEvent(Ljava/lang/Runnable;)V

    .line 102
    iget-object v0, p0, Lo/getMax$3;->onPostMessage:Lo/getMax;

    .line 2034
    iget-object v0, v0, Lo/getMax;->extraCallback:Lo/interrupt;

    .line 102
    invoke-virtual {v0}, Lo/interrupt;->close()V

    return-void
.end method
