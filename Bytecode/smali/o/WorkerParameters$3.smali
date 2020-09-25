.class final Lo/WorkerParameters$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/WorkerParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/WorkerParameters;

.field private synthetic onPostMessage:Lo/ConstraintTrackingWorker;


# direct methods
.method constructor <init>(Lo/WorkerParameters;Lo/ConstraintTrackingWorker;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lo/WorkerParameters$3;->onMessageChannelReady:Lo/WorkerParameters;

    iput-object p2, p0, Lo/WorkerParameters$3;->onPostMessage:Lo/ConstraintTrackingWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 356
    iget-object v0, p0, Lo/WorkerParameters$3;->onPostMessage:Lo/ConstraintTrackingWorker;

    iget-object v1, p0, Lo/WorkerParameters$3;->onMessageChannelReady:Lo/WorkerParameters;

    invoke-interface {v0, v1}, Lo/ConstraintTrackingWorker;->onPostMessage(Lo/WorkDatabase;)V

    return-void
.end method
