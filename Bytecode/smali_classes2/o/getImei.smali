.class final Lo/getImei;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final synthetic extraCallback:Ljava/util/List;

.field private final synthetic onNavigationEvent:I

.field private final synthetic onPostMessage:Lo/SuggestedAmount;


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;ILo/SuggestedAmount;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lo/getImei;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p2, p0, Lo/getImei;->onNavigationEvent:I

    iput-object p3, p0, Lo/getImei;->onPostMessage:Lo/SuggestedAmount;

    iput-object p4, p0, Lo/getImei;->extraCallback:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/getImei;->ICustomTabsCallback:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iget v1, p0, Lo/getImei;->onNavigationEvent:I

    if-lt v0, v1, :cond_0

    :try_start_0
    iget-object v0, p0, Lo/getImei;->onPostMessage:Lo/SuggestedAmount;

    iget-object v1, p0, Lo/getImei;->extraCallback:Ljava/util/List;

    invoke-static {v1}, Lo/CarrierFingerPrint;->ICustomTabsCallback(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/SuggestedAmount;->extraCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v1, "Unable to convert list of futures to a future of list"

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
