.class final Lo/getNextPage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getPaymentDueDateWeaklyTyped$onMessageChannelReady;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/getPaymentItem$onNavigationEvent;

.field private final synthetic onMessageChannelReady:Lo/getPaymentDueDateWeaklyTyped;

.field private final synthetic onNavigationEvent:Lo/removeBackgroundStateChangeListener;

.field private final synthetic onPostMessage:Lo/getPaymentItem$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/getPaymentDueDateWeaklyTyped;Lo/removeBackgroundStateChangeListener;Lo/getPaymentItem$onMessageChannelReady;Lo/getPaymentItem$onNavigationEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getNextPage;->onMessageChannelReady:Lo/getPaymentDueDateWeaklyTyped;

    iput-object p2, p0, Lo/getNextPage;->onNavigationEvent:Lo/removeBackgroundStateChangeListener;

    iput-object p3, p0, Lo/getNextPage;->onPostMessage:Lo/getPaymentItem$onMessageChannelReady;

    iput-object p4, p0, Lo/getNextPage;->ICustomTabsCallback:Lo/getPaymentItem$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(Lcom/google/android/gms/common/api/Status;)V
    .locals 3

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lo/getNextPage;->onMessageChannelReady:Lo/getPaymentDueDateWeaklyTyped;

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lo/getPaymentDueDateWeaklyTyped;->ICustomTabsCallback(JLjava/util/concurrent/TimeUnit;)Lo/PaymentRequestItem;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lo/getNextPage;->onNavigationEvent:Lo/removeBackgroundStateChangeListener;

    iget-object v1, p0, Lo/getNextPage;->onPostMessage:Lo/getPaymentItem$onMessageChannelReady;

    invoke-interface {v1, p1}, Lo/getPaymentItem$onMessageChannelReady;->onMessageChannelReady(Lo/PaymentRequestItem;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/removeBackgroundStateChangeListener;->onPostMessage(Ljava/lang/Object;)V

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lo/getNextPage;->onNavigationEvent:Lo/removeBackgroundStateChangeListener;

    iget-object v1, p0, Lo/getNextPage;->ICustomTabsCallback:Lo/getPaymentItem$onNavigationEvent;

    invoke-interface {v1, p1}, Lo/getPaymentItem$onNavigationEvent;->extraCallback(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {v0, p1}, Lo/removeBackgroundStateChangeListener;->onMessageChannelReady(Ljava/lang/Exception;)V

    return-void
.end method
