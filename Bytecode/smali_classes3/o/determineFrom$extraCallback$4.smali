.class final Lo/determineFrom$extraCallback$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/determineFrom$extraCallback;->onClose()V
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

    .line 95
    iput-object p1, p0, Lo/determineFrom$extraCallback$4;->this$1:Lo/determineFrom$extraCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 98
    iget-object v0, p0, Lo/determineFrom$extraCallback$4;->this$1:Lo/determineFrom$extraCallback;

    iget-object v0, v0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$200(Lo/determineFrom;)Lo/FileLogStore;

    move-result-object v0

    invoke-virtual {v0}, Lo/FileLogStore;->logsDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/determineFrom$extraCallback$4;->this$1:Lo/determineFrom$extraCallback;

    iget-object v0, v0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$200(Lo/determineFrom;)Lo/FileLogStore;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "closed"

    invoke-virtual {v0, v2, v1}, Lo/FileLogStore;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :cond_0
    iget-object v0, p0, Lo/determineFrom$extraCallback$4;->this$1:Lo/determineFrom$extraCallback;

    iget-object v0, v0, Lo/determineFrom$extraCallback;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$600(Lo/determineFrom;)V

    return-void
.end method
