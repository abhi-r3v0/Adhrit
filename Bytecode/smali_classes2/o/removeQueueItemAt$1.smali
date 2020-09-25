.class final Lo/removeQueueItemAt$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeQueueItemAt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/removeQueueItemAt;


# direct methods
.method constructor <init>(Lo/removeQueueItemAt;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lo/removeQueueItemAt$1;->extraCallback:Lo/removeQueueItemAt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 59
    iget-object v0, p0, Lo/removeQueueItemAt$1;->extraCallback:Lo/removeQueueItemAt;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/removeQueueItemAt;->onNavigationEvent:Z

    .line 60
    iget-object v0, p0, Lo/removeQueueItemAt$1;->extraCallback:Lo/removeQueueItemAt;

    iget-boolean v0, v0, Lo/removeQueueItemAt;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lo/removeQueueItemAt$1;->extraCallback:Lo/removeQueueItemAt;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lo/removeQueueItemAt;->extraCallback:J

    .line 62
    iget-object v0, p0, Lo/removeQueueItemAt$1;->extraCallback:Lo/removeQueueItemAt;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
