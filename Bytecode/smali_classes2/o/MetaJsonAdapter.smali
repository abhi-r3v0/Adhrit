.class final synthetic Lo/MetaJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onMessageChannelReady:Ljava/util/concurrent/Future;

.field private final onNavigationEvent:Lo/PaymentModeListResponseJsonAdapter;


# direct methods
.method constructor <init>(Lo/PaymentModeListResponseJsonAdapter;Ljava/util/concurrent/Future;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/MetaJsonAdapter;->onNavigationEvent:Lo/PaymentModeListResponseJsonAdapter;

    iput-object p2, p0, Lo/MetaJsonAdapter;->onMessageChannelReady:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/MetaJsonAdapter;->onNavigationEvent:Lo/PaymentModeListResponseJsonAdapter;

    iget-object v1, p0, Lo/MetaJsonAdapter;->onMessageChannelReady:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Lo/PaymentModeListResponseJsonAdapter;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method
