.class final Lo/determineFrom$extraCallback$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/determineFrom$extraCallback;->onOpen()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lo/determineFrom$extraCallback;


# direct methods
.method constructor <init>(Lo/determineFrom$extraCallback;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lo/determineFrom$extraCallback$5;->this$1:Lo/determineFrom$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 70
    iget-object v0, p0, Lo/determineFrom$extraCallback$5;->this$1:Lo/determineFrom$extraCallback;

    iget-object v0, v0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$000(Lo/determineFrom;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 71
    iget-object v0, p0, Lo/determineFrom$extraCallback$5;->this$1:Lo/determineFrom$extraCallback;

    iget-object v0, v0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lo/determineFrom;->access$102(Lo/determineFrom;Z)Z

    .line 72
    iget-object v0, p0, Lo/determineFrom$extraCallback$5;->this$1:Lo/determineFrom$extraCallback;

    iget-object v0, v0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$200(Lo/determineFrom;)Lo/FileLogStore;

    move-result-object v0

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/determineFrom$extraCallback$5;->this$1:Lo/determineFrom$extraCallback;

    iget-object v0, v0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$200(Lo/determineFrom;)Lo/FileLogStore;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "websocket opened"

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :cond_0
    iget-object v0, p0, Lo/determineFrom$extraCallback$5;->this$1:Lo/determineFrom$extraCallback;

    iget-object v0, v0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$300(Lo/determineFrom;)V

    return-void
.end method
