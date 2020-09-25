.class final Lo/logDataCollectionState$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/logDataCollectionState;->doIdleCheck()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/logDataCollectionState;


# direct methods
.method constructor <init>(Lo/logDataCollectionState;)V
    .locals 0

    .line 1194
    iput-object p1, p0, Lo/logDataCollectionState$7;->this$0:Lo/logDataCollectionState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1197
    iget-object v0, p0, Lo/logDataCollectionState$7;->this$0:Lo/logDataCollectionState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/logDataCollectionState;->access$2602(Lo/logDataCollectionState;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 1198
    iget-object v0, p0, Lo/logDataCollectionState$7;->this$0:Lo/logDataCollectionState;

    invoke-static {v0}, Lo/logDataCollectionState;->access$2700(Lo/logDataCollectionState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1199
    iget-object v0, p0, Lo/logDataCollectionState$7;->this$0:Lo/logDataCollectionState;

    const-string v1, "connection_idle"

    invoke-virtual {v0, v1}, Lo/logDataCollectionState;->interrupt(Ljava/lang/String;)V

    return-void

    .line 1201
    :cond_0
    iget-object v0, p0, Lo/logDataCollectionState$7;->this$0:Lo/logDataCollectionState;

    invoke-static {v0}, Lo/logDataCollectionState;->access$2200(Lo/logDataCollectionState;)V

    return-void
.end method
