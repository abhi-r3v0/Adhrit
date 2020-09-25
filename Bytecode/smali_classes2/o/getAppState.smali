.class final Lo/getAppState;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic extraCallback:Lo/PaymentRequestItem;

.field private final synthetic onMessageChannelReady:Lo/setCalendarName;


# direct methods
.method constructor <init>(Lo/setCalendarName;Lo/PaymentRequestItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getAppState;->onMessageChannelReady:Lo/setCalendarName;

    iput-object p2, p0, Lo/getAppState;->extraCallback:Lo/PaymentRequestItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onPostMessage:Ljava/lang/ThreadLocal;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3
    iget-object v2, p0, Lo/getAppState;->onMessageChannelReady:Lo/setCalendarName;

    .line 4
    invoke-static {v2}, Lo/setCalendarName;->onNavigationEvent(Lo/setCalendarName;)Lo/setPaymentAmountTitle;

    move-result-object v2

    iget-object v3, p0, Lo/getAppState;->extraCallback:Lo/PaymentRequestItem;

    invoke-virtual {v2, v3}, Lo/setPaymentAmountTitle;->extraCallback(Lo/PaymentRequestItem;)Lo/getPaymentDueDateWeaklyTyped;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lo/getAppState;->onMessageChannelReady:Lo/setCalendarName;

    invoke-static {v3}, Lo/setCalendarName;->ICustomTabsCallback(Lo/setCalendarName;)Lo/getHeading;

    move-result-object v3

    iget-object v4, p0, Lo/getAppState;->onMessageChannelReady:Lo/setCalendarName;

    .line 6
    invoke-static {v4}, Lo/setCalendarName;->ICustomTabsCallback(Lo/setCalendarName;)Lo/getHeading;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lo/getHeading;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 7
    invoke-virtual {v3, v2}, Lo/getHeading;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onPostMessage:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 9
    iget-object v0, p0, Lo/getAppState;->onMessageChannelReady:Lo/setCalendarName;

    iget-object v1, p0, Lo/getAppState;->extraCallback:Lo/PaymentRequestItem;

    invoke-static {v0, v1}, Lo/setCalendarName;->ICustomTabsCallback(Lo/setCalendarName;Lo/PaymentRequestItem;)V

    .line 10
    iget-object v0, p0, Lo/getAppState;->onMessageChannelReady:Lo/setCalendarName;

    invoke-static {v0}, Lo/setCalendarName;->onMessageChannelReady(Lo/setCalendarName;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getPaymentMode;

    if-eqz v0, :cond_0

    .line 12
    iget-object v1, p0, Lo/getAppState;->onMessageChannelReady:Lo/setCalendarName;

    invoke-virtual {v0, v1}, Lo/getPaymentMode;->extraCallback(Lo/setCalendarName;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 15
    :try_start_1
    iget-object v3, p0, Lo/getAppState;->onMessageChannelReady:Lo/setCalendarName;

    invoke-static {v3}, Lo/setCalendarName;->ICustomTabsCallback(Lo/setCalendarName;)Lo/getHeading;

    move-result-object v3

    iget-object v4, p0, Lo/getAppState;->onMessageChannelReady:Lo/setCalendarName;

    .line 16
    invoke-static {v4}, Lo/setCalendarName;->ICustomTabsCallback(Lo/setCalendarName;)Lo/getHeading;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lo/getHeading;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 17
    invoke-virtual {v3, v0}, Lo/getHeading;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onPostMessage:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lo/getAppState;->onMessageChannelReady:Lo/setCalendarName;

    iget-object v1, p0, Lo/getAppState;->extraCallback:Lo/PaymentRequestItem;

    invoke-static {v0, v1}, Lo/setCalendarName;->ICustomTabsCallback(Lo/setCalendarName;Lo/PaymentRequestItem;)V

    .line 20
    iget-object v0, p0, Lo/getAppState;->onMessageChannelReady:Lo/setCalendarName;

    invoke-static {v0}, Lo/setCalendarName;->onMessageChannelReady(Lo/setCalendarName;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getPaymentMode;

    if-eqz v0, :cond_1

    .line 22
    iget-object v1, p0, Lo/getAppState;->onMessageChannelReady:Lo/setCalendarName;

    invoke-virtual {v0, v1}, Lo/getPaymentMode;->extraCallback(Lo/setCalendarName;)V

    :cond_1
    return-void

    .line 24
    :goto_0
    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onPostMessage:Ljava/lang/ThreadLocal;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 25
    iget-object v1, p0, Lo/getAppState;->onMessageChannelReady:Lo/setCalendarName;

    iget-object v2, p0, Lo/getAppState;->extraCallback:Lo/PaymentRequestItem;

    invoke-static {v1, v2}, Lo/setCalendarName;->ICustomTabsCallback(Lo/setCalendarName;Lo/PaymentRequestItem;)V

    .line 26
    iget-object v1, p0, Lo/getAppState;->onMessageChannelReady:Lo/setCalendarName;

    invoke-static {v1}, Lo/setCalendarName;->onMessageChannelReady(Lo/setCalendarName;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getPaymentMode;

    if-eqz v1, :cond_2

    .line 28
    iget-object v2, p0, Lo/getAppState;->onMessageChannelReady:Lo/setCalendarName;

    invoke-virtual {v1, v2}, Lo/getPaymentMode;->extraCallback(Lo/setCalendarName;)V

    .line 29
    :cond_2
    throw v0
.end method
