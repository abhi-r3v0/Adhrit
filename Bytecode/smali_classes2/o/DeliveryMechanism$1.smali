.class Lo/DeliveryMechanism$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DeliveryMechanism;->retry(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lo/DeliveryMechanism;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lo/DeliveryMechanism;Ljava/lang/Runnable;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lo/DeliveryMechanism$1;->this$0:Lo/DeliveryMechanism;

    iput-object p2, p0, Lo/DeliveryMechanism$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 66
    iget-object v0, p0, Lo/DeliveryMechanism$1;->this$0:Lo/DeliveryMechanism;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/DeliveryMechanism;->access$002(Lo/DeliveryMechanism;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 67
    iget-object v0, p0, Lo/DeliveryMechanism$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
