.class public final Lo/setCalendarName;
.super Lo/getUpdated_at;
.source ""

# interfaces
.implements Lo/getSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lo/PaymentRequestItem;",
        ">",
        "Lo/getUpdated_at<",
        "TR;>;",
        "Lo/getSource<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/Object;

.field private final asBinder:Lo/getHeading;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getHeading;"
        }
    .end annotation
.end field

.field private final asInterface:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/getPaymentMode;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Lo/getPaymentDueDateWeaklyTyped;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPaymentDueDateWeaklyTyped<",
            "TR;>;"
        }
    .end annotation
.end field

.field private volatile onMessageChannelReady:Lo/PaymentItem$$Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PaymentItem$$Parcelable<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Lo/setCalendarName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCalendarName<",
            "+",
            "Lo/PaymentRequestItem;",
            ">;"
        }
    .end annotation
.end field

.field private onPostMessage:Lo/setPaymentAmountTitle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPaymentAmountTitle<",
            "-TR;+",
            "Lo/PaymentRequestItem;",
            ">;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:Lcom/google/android/gms/common/api/Status;

.field private onTransact:Z


# direct methods
.method static synthetic ICustomTabsCallback(Lo/setCalendarName;)Lo/getHeading;
    .locals 0

    .line 80
    iget-object p0, p0, Lo/setCalendarName;->asBinder:Lo/getHeading;

    return-object p0
.end method

.method private final ICustomTabsCallback()V
    .locals 2

    .line 46
    iget-object v0, p0, Lo/setCalendarName;->onPostMessage:Lo/setPaymentAmountTitle;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/setCalendarName;->onMessageChannelReady:Lo/PaymentItem$$Parcelable;

    if-nez v0, :cond_0

    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lo/setCalendarName;->asInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getPaymentMode;

    .line 49
    iget-boolean v1, p0, Lo/setCalendarName;->onTransact:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/setCalendarName;->onPostMessage:Lo/setPaymentAmountTitle;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0, p0}, Lo/getPaymentMode;->onNavigationEvent(Lo/setCalendarName;)V

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lo/setCalendarName;->onTransact:Z

    .line 52
    :cond_1
    iget-object v0, p0, Lo/setCalendarName;->onRelationshipValidationResult:Lcom/google/android/gms/common/api/Status;

    if-eqz v0, :cond_2

    .line 53
    invoke-direct {p0, v0}, Lo/setCalendarName;->extraCallback(Lcom/google/android/gms/common/api/Status;)V

    return-void

    .line 54
    :cond_2
    iget-object v0, p0, Lo/setCalendarName;->extraCallback:Lo/getPaymentDueDateWeaklyTyped;

    if-eqz v0, :cond_3

    .line 55
    invoke-virtual {v0, p0}, Lo/getPaymentDueDateWeaklyTyped;->onMessageChannelReady(Lo/getSource;)V

    :cond_3
    return-void
.end method

.method private final ICustomTabsCallback(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lo/setCalendarName;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iput-object p1, p0, Lo/setCalendarName;->onRelationshipValidationResult:Lcom/google/android/gms/common/api/Status;

    .line 59
    invoke-direct {p0, p1}, Lo/setCalendarName;->extraCallback(Lcom/google/android/gms/common/api/Status;)V

    .line 60
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic ICustomTabsCallback(Lo/setCalendarName;Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lo/setCalendarName;->ICustomTabsCallback(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/setCalendarName;Lo/PaymentRequestItem;)V
    .locals 0

    .line 81
    invoke-static {p1}, Lo/setCalendarName;->extraCallback(Lo/PaymentRequestItem;)V

    return-void
.end method

.method static synthetic extraCallback(Lo/setCalendarName;)Ljava/lang/Object;
    .locals 0

    .line 83
    iget-object p0, p0, Lo/setCalendarName;->ICustomTabsCallback:Ljava/lang/Object;

    return-object p0
.end method

.method private final extraCallback(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lo/setCalendarName;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 62
    :try_start_0
    iget-object v1, p0, Lo/setCalendarName;->onPostMessage:Lo/setPaymentAmountTitle;

    if-eqz v1, :cond_0

    .line 63
    iget-object v1, p0, Lo/setCalendarName;->onPostMessage:Lo/setPaymentAmountTitle;

    invoke-virtual {v1, p1}, Lo/setPaymentAmountTitle;->onMessageChannelReady(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    const-string v1, "onFailure must not return null"

    .line 64
    invoke-static {p1, v1}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iget-object v1, p0, Lo/setCalendarName;->onNavigationEvent:Lo/setCalendarName;

    invoke-direct {v1, p1}, Lo/setCalendarName;->ICustomTabsCallback(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-direct {p0}, Lo/setCalendarName;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 67
    iget-object v1, p0, Lo/setCalendarName;->onMessageChannelReady:Lo/PaymentItem$$Parcelable;

    invoke-virtual {v1, p1}, Lo/PaymentItem$$Parcelable;->onNavigationEvent(Lcom/google/android/gms/common/api/Status;)V

    .line 68
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private static extraCallback(Lo/PaymentRequestItem;)V
    .locals 3

    .line 73
    instance-of v0, p0, Lo/setPaymentMode;

    if-eqz v0, :cond_0

    .line 74
    :try_start_0
    move-object v0, p0

    check-cast v0, Lo/setPaymentMode;

    invoke-interface {v0}, Lo/setPaymentMode;->ICustomTabsCallback()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 77
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Unable to release "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TransformedResultImpl"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/setCalendarName;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 82
    iget-object p0, p0, Lo/setCalendarName;->asInterface:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/setCalendarName;)Lo/setPaymentAmountTitle;
    .locals 0

    .line 79
    iget-object p0, p0, Lo/setCalendarName;->onPostMessage:Lo/setPaymentAmountTitle;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/setCalendarName;)Lo/setCalendarName;
    .locals 0

    .line 84
    iget-object p0, p0, Lo/setCalendarName;->onNavigationEvent:Lo/setCalendarName;

    return-object p0
.end method

.method private final onPostMessage()Z
    .locals 2

    .line 71
    iget-object v0, p0, Lo/setCalendarName;->asInterface:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getPaymentMode;

    .line 72
    iget-object v1, p0, Lo/setCalendarName;->onMessageChannelReady:Lo/PaymentItem$$Parcelable;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final onNavigationEvent(Lo/PaymentRequestItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lo/setCalendarName;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 33
    :try_start_0
    invoke-interface {p1}, Lo/PaymentRequestItem;->extraCallback()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/api/Status;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    iget-object v1, p0, Lo/setCalendarName;->onPostMessage:Lo/setPaymentAmountTitle;

    if-eqz v1, :cond_0

    .line 35
    invoke-static {}, Lo/getFabrikUser;->ICustomTabsCallback()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lo/getAppState;

    invoke-direct {v2, p0, p1}, Lo/getAppState;-><init>(Lo/setCalendarName;Lo/PaymentRequestItem;)V

    .line 36
    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 37
    :cond_0
    invoke-direct {p0}, Lo/setCalendarName;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 38
    iget-object v1, p0, Lo/setCalendarName;->onMessageChannelReady:Lo/PaymentItem$$Parcelable;

    invoke-virtual {v1, p1}, Lo/PaymentItem$$Parcelable;->extraCallback(Lo/PaymentRequestItem;)V

    goto :goto_0

    .line 39
    :cond_1
    invoke-interface {p1}, Lo/PaymentRequestItem;->extraCallback()Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-direct {p0, v1}, Lo/setCalendarName;->ICustomTabsCallback(Lcom/google/android/gms/common/api/Status;)V

    .line 40
    invoke-static {p1}, Lo/setCalendarName;->extraCallback(Lo/PaymentRequestItem;)V

    .line 41
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent(Lo/getPaymentDueDateWeaklyTyped;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getPaymentDueDateWeaklyTyped<",
            "*>;)V"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lo/setCalendarName;->ICustomTabsCallback:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_0
    iput-object p1, p0, Lo/setCalendarName;->extraCallback:Lo/getPaymentDueDateWeaklyTyped;

    .line 44
    invoke-direct {p0}, Lo/setCalendarName;->ICustomTabsCallback()V

    .line 45
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
