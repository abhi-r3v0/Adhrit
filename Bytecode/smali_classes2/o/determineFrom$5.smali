.class final Lo/determineFrom$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/determineFrom;->nop()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/determineFrom;


# direct methods
.method constructor <init>(Lo/determineFrom;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lo/determineFrom$5;->this$0:Lo/determineFrom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 327
    iget-object v0, p0, Lo/determineFrom$5;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$900(Lo/determineFrom;)Lo/determineFrom$onMessageChannelReady;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lo/determineFrom$5;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$900(Lo/determineFrom;)Lo/determineFrom$onMessageChannelReady;

    move-result-object v0

    const-string v1, "0"

    invoke-interface {v0, v1}, Lo/determineFrom$onMessageChannelReady;->send(Ljava/lang/String;)V

    .line 329
    iget-object v0, p0, Lo/determineFrom$5;->this$0:Lo/determineFrom;

    invoke-static {v0}, Lo/determineFrom;->access$300(Lo/determineFrom;)V

    :cond_0
    return-void
.end method
