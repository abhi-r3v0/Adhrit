.class final Lo/AutoDebitInstrumentSetupRequestBodyJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Ljava/util/concurrent/Future;


# direct methods
.method constructor <init>(Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;Ljava/util/concurrent/Future;)V
    .locals 0

    iput-object p2, p0, Lo/AutoDebitInstrumentSetupRequestBodyJsonAdapter;->extraCallback:Ljava/util/concurrent/Future;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/AutoDebitInstrumentSetupRequestBodyJsonAdapter;->extraCallback:Ljava/util/concurrent/Future;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/AutoDebitInstrumentSetupRequestBodyJsonAdapter;->extraCallback:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    return-void
.end method
