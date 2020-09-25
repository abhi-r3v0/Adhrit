.class final Lo/setCropWindowChangeListener;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/setImageUriAsync;

.field private final synthetic onPostMessage:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lo/setImageUriAsync;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lo/setCropWindowChangeListener;->extraCallback:Lo/setImageUriAsync;

    iput-object p2, p0, Lo/setCropWindowChangeListener;->onPostMessage:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lo/setCropWindowChangeListener;->extraCallback:Lo/setImageUriAsync;

    iget-object v0, v0, Lo/setImageUriAsync;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setCropWindowChangeListener;->extraCallback:Lo/setImageUriAsync;

    iget-object v2, p0, Lo/setCropWindowChangeListener;->extraCallback:Lo/setImageUriAsync;

    invoke-static {v2}, Lo/setImageUriAsync;->ICustomTabsCallback(Lo/setImageUriAsync;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    move-result-object v2

    iget-object v3, p0, Lo/setCropWindowChangeListener;->extraCallback:Lo/setImageUriAsync;

    iget-object v3, v3, Lo/setImageUriAsync;->ICustomTabsCallback$Stub:Lo/PinAccountRequest;

    iget-object v4, p0, Lo/setCropWindowChangeListener;->onPostMessage:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v2, v3, v4}, Lo/setCreditScoreExist;->ICustomTabsCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/PinAccountRequest;Ljava/util/concurrent/CountDownLatch;)Z

    move-result v2

    invoke-static {v1, v2}, Lo/setImageUriAsync;->extraCallback(Lo/setImageUriAsync;Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
