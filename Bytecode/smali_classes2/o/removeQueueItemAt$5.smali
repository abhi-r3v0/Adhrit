.class final Lo/removeQueueItemAt$5;
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

    .line 45
    iput-object p1, p0, Lo/removeQueueItemAt$5;->extraCallback:Lo/removeQueueItemAt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 49
    iget-object v0, p0, Lo/removeQueueItemAt$5;->extraCallback:Lo/removeQueueItemAt;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lo/removeQueueItemAt;->onPostMessage:Z

    .line 50
    iget-object v0, p0, Lo/removeQueueItemAt$5;->extraCallback:Lo/removeQueueItemAt;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lo/removeQueueItemAt;->extraCallback:J

    .line 51
    iget-object v0, p0, Lo/removeQueueItemAt$5;->extraCallback:Lo/removeQueueItemAt;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
