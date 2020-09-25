.class public abstract Lcom/google/android/gms/common/api/internal/BasePendingResult;
.super Lo/getPaymentDueDateWeaklyTyped;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/internal/BasePendingResult$onNavigationEvent;,
        Lcom/google/android/gms/common/api/internal/BasePendingResult$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lo/PaymentRequestItem;",
        ">",
        "Lo/getPaymentDueDateWeaklyTyped<",
        "TR;>;"
    }
.end annotation


# static fields
.field public static final onPostMessage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ICustomTabsCallback:Ljava/util/concurrent/CountDownLatch;

.field private ICustomTabsCallback$Stub:Lo/PaymentRequestItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub$Proxy:Lo/onPostMessage$extraCallback;

.field private ICustomTabsService:Z

.field private asBinder:Lcom/google/android/gms/common/api/Status;

.field private final asInterface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/getPaymentDueDateWeaklyTyped$onMessageChannelReady;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lcom/google/android/gms/common/api/internal/BasePendingResult$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/BasePendingResult$ICustomTabsCallback<",
            "TR;>;"
        }
    .end annotation
.end field

.field private extraCommand:Z

.field private getInterfaceDescriptor:Z

.field private mResultGuardian:Lcom/google/android/gms/common/api/internal/BasePendingResult$onNavigationEvent;
    .annotation build Lcom/google/android/gms/common/annotation/KeepName;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/BasePendingResult$onNavigationEvent;"
        }
    .end annotation
.end field

.field private volatile newSession:Lo/setCalendarName;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCalendarName<",
            "TR;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/lang/Object;

.field private final onNavigationEvent:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lo/getPaymentMode;",
            ">;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:Lo/getSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getSource<",
            "-TR;>;"
        }
    .end annotation
.end field

.field private final onTransact:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lo/ShareData;",
            ">;"
        }
    .end annotation
.end field

.field private volatile warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 188
    new-instance v0, Lo/showLoader;

    invoke-direct {v0}, Lo/showLoader;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onPostMessage:Ljava/lang/ThreadLocal;

    return-void
.end method

.method constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lo/getPaymentDueDateWeaklyTyped;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onMessageChannelReady:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->ICustomTabsCallback:Ljava/util/concurrent/CountDownLatch;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->asInterface:Ljava/util/ArrayList;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onTransact:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->extraCommand:Z

    .line 7
    new-instance v0, Lcom/google/android/gms/common/api/internal/BasePendingResult$ICustomTabsCallback;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult$ICustomTabsCallback;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->extraCallback:Lcom/google/android/gms/common/api/internal/BasePendingResult$ICustomTabsCallback;

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>(Lo/getPaymentMode;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lo/getPaymentDueDateWeaklyTyped;-><init>()V

    .line 11
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onMessageChannelReady:Ljava/lang/Object;

    .line 12
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->ICustomTabsCallback:Ljava/util/concurrent/CountDownLatch;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->asInterface:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onTransact:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->extraCommand:Z

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Lo/getPaymentMode;->onNavigationEvent()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 17
    :goto_0
    new-instance v1, Lcom/google/android/gms/common/api/internal/BasePendingResult$ICustomTabsCallback;

    invoke-direct {v1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult$ICustomTabsCallback;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->extraCallback:Lcom/google/android/gms/common/api/internal/BasePendingResult$ICustomTabsCallback;

    .line 18
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onNavigationEvent:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lcom/google/android/gms/common/api/internal/BasePendingResult;)Lo/PaymentRequestItem;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->ICustomTabsCallback$Stub:Lo/PaymentRequestItem;

    return-object p0
.end method

.method private final extraCallback()Lo/PaymentRequestItem;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->warmup:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "Result has already been consumed."

    invoke-static {v1, v3}, Lo/extraCallback$onNavigationEvent;->onPostMessage(ZLjava/lang/Object;)V

    .line 152
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onPostMessage()Z

    move-result v1

    const-string v3, "Result is not ready."

    invoke-static {v1, v3}, Lo/extraCallback$onNavigationEvent;->onPostMessage(ZLjava/lang/Object;)V

    .line 153
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->ICustomTabsCallback$Stub:Lo/PaymentRequestItem;

    const/4 v3, 0x0

    .line 154
    iput-object v3, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->ICustomTabsCallback$Stub:Lo/PaymentRequestItem;

    .line 155
    iput-object v3, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onRelationshipValidationResult:Lo/getSource;

    .line 156
    iput-boolean v2, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->warmup:Z

    .line 157
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onTransact:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ShareData;

    if-eqz v0, :cond_1

    .line 161
    invoke-interface {v0, p0}, Lo/ShareData;->onMessageChannelReady(Lcom/google/android/gms/common/api/internal/BasePendingResult;)V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    .line 157
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private final extraCallback(Lo/PaymentRequestItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->ICustomTabsCallback$Stub:Lo/PaymentRequestItem;

    const/4 p1, 0x0

    .line 164
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->ICustomTabsCallback$Stub$Proxy:Lo/onPostMessage$extraCallback;

    .line 165
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->ICustomTabsCallback:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 166
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->ICustomTabsCallback$Stub:Lo/PaymentRequestItem;

    invoke-interface {v0}, Lo/PaymentRequestItem;->extraCallback()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->asBinder:Lcom/google/android/gms/common/api/Status;

    .line 167
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->ICustomTabsService:Z

    if-eqz v0, :cond_0

    .line 168
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onRelationshipValidationResult:Lo/getSource;

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onRelationshipValidationResult:Lo/getSource;

    if-nez v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->ICustomTabsCallback$Stub:Lo/PaymentRequestItem;

    instance-of v0, v0, Lo/setPaymentMode;

    if-eqz v0, :cond_2

    .line 171
    new-instance v0, Lcom/google/android/gms/common/api/internal/BasePendingResult$onNavigationEvent;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult$onNavigationEvent;-><init>(Lcom/google/android/gms/common/api/internal/BasePendingResult;Lo/showLoader;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->mResultGuardian:Lcom/google/android/gms/common/api/internal/BasePendingResult$onNavigationEvent;

    goto :goto_0

    .line 172
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->extraCallback:Lcom/google/android/gms/common/api/internal/BasePendingResult$ICustomTabsCallback;

    const/4 v0, 0x2

    .line 173
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/BasePendingResult$ICustomTabsCallback;->removeMessages(I)V

    .line 174
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->extraCallback:Lcom/google/android/gms/common/api/internal/BasePendingResult$ICustomTabsCallback;

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onRelationshipValidationResult:Lo/getSource;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->extraCallback()Lo/PaymentRequestItem;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult$ICustomTabsCallback;->onMessageChannelReady(Lo/getSource;Lo/PaymentRequestItem;)V

    .line 175
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->asInterface:Ljava/util/ArrayList;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Lo/getPaymentDueDateWeaklyTyped$onMessageChannelReady;

    .line 176
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->asBinder:Lcom/google/android/gms/common/api/Status;

    invoke-interface {v2, v3}, Lo/getPaymentDueDateWeaklyTyped$onMessageChannelReady;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    .line 178
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static onMessageChannelReady(Lo/PaymentRequestItem;)V
    .locals 3

    .line 180
    instance-of v0, p0, Lo/setPaymentMode;

    if-eqz v0, :cond_0

    .line 181
    :try_start_0
    move-object v0, p0

    check-cast v0, Lo/setPaymentMode;

    invoke-interface {v0}, Lo/setPaymentMode;->ICustomTabsCallback()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 184
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

    const-string v1, "BasePendingResult"

    invoke-static {v1, p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method static synthetic onNavigationEvent(Lo/getSource;)Lo/getSource;
    .locals 0

    .line 186
    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onPostMessage(Lo/getSource;)Lo/getSource;

    move-result-object p0

    return-object p0
.end method

.method private static onPostMessage(Lo/getSource;)Lo/getSource;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R::",
            "Lo/PaymentRequestItem;",
            ">(",
            "Lo/getSource<",
            "TR;>;)",
            "Lo/getSource<",
            "TR;>;"
        }
    .end annotation

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(JLjava/util/concurrent/TimeUnit;)Lo/PaymentRequestItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TR;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const-string v0, "await must not be called on the UI thread when time is greater than zero."

    .line 49
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onMessageChannelReady(Ljava/lang/String;)V

    .line 50
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->warmup:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Result has already been consumed."

    invoke-static {v0, v2}, Lo/extraCallback$onNavigationEvent;->onPostMessage(ZLjava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->newSession:Lo/setCalendarName;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v0, "Cannot await if then() has been called."

    invoke-static {v1, v0}, Lo/extraCallback$onNavigationEvent;->onPostMessage(ZLjava/lang/Object;)V

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->ICustomTabsCallback:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 54
    sget-object p1, Lcom/google/android/gms/common/api/Status;->onNavigationEvent:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->extraCallback(Lcom/google/android/gms/common/api/Status;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 57
    :catch_0
    sget-object p1, Lcom/google/android/gms/common/api/Status;->ICustomTabsCallback:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->extraCallback(Lcom/google/android/gms/common/api/Status;)V

    .line 58
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onPostMessage()Z

    move-result p1

    const-string p2, "Result is not ready."

    invoke-static {p1, p2}, Lo/extraCallback$onNavigationEvent;->onPostMessage(ZLjava/lang/Object;)V

    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->extraCallback()Lo/PaymentRequestItem;

    move-result-object p1

    return-object p1
.end method

.method public final ICustomTabsCallback(Lo/getPaymentDueDateWeaklyTyped$onMessageChannelReady;)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Callback cannot be null."

    .line 89
    invoke-static {v0, v1}, Lo/extraCallback$onNavigationEvent;->onMessageChannelReady(ZLjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->asBinder:Lcom/google/android/gms/common/api/Status;

    invoke-interface {p1, v1}, Lo/getPaymentDueDateWeaklyTyped$onMessageChannelReady;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_1

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ICustomTabsCallback()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->ICustomTabsService:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 114
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final extraCallback(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onPostMessage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 139
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onNavigationEvent(Lcom/google/android/gms/common/api/Status;)Lo/PaymentRequestItem;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onNavigationEvent(Lo/PaymentRequestItem;)V

    const/4 p1, 0x1

    .line 140
    iput-boolean p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->getInterfaceDescriptor:Z

    .line 141
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onMessageChannelReady()V
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->extraCommand:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onPostMessage:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->extraCommand:Z

    return-void
.end method

.method public final onMessageChannelReady(Lo/getSource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getSource<",
            "-TR;>;)V"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 62
    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onRelationshipValidationResult:Lo/getSource;

    .line 63
    monitor-exit v0

    return-void

    .line 64
    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->warmup:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Result has already been consumed."

    invoke-static {v1, v4}, Lo/extraCallback$onNavigationEvent;->onPostMessage(ZLjava/lang/Object;)V

    .line 65
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->newSession:Lo/setCalendarName;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    const-string v1, "Cannot set callbacks if then() has been called."

    invoke-static {v2, v1}, Lo/extraCallback$onNavigationEvent;->onPostMessage(ZLjava/lang/Object;)V

    .line 66
    invoke-virtual {p0}, Lo/getPaymentDueDateWeaklyTyped;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    monitor-exit v0

    return-void

    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onPostMessage()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 69
    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->extraCallback:Lcom/google/android/gms/common/api/internal/BasePendingResult$ICustomTabsCallback;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->extraCallback()Lo/PaymentRequestItem;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult$ICustomTabsCallback;->onMessageChannelReady(Lo/getSource;Lo/PaymentRequestItem;)V

    goto :goto_2

    .line 71
    :cond_4
    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onRelationshipValidationResult:Lo/getSource;

    .line 72
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public abstract onNavigationEvent(Lcom/google/android/gms/common/api/Status;)Lo/PaymentRequestItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Status;",
            ")TR;"
        }
    .end annotation
.end method

.method public final onNavigationEvent(Lo/PaymentRequestItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->getInterfaceDescriptor:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->ICustomTabsService:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onPostMessage()Z

    .line 133
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onPostMessage()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "Results have already been set"

    invoke-static {v1, v4}, Lo/extraCallback$onNavigationEvent;->onPostMessage(ZLjava/lang/Object;)V

    .line 134
    iget-boolean v1, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->warmup:Z

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v1, "Result has already been consumed"

    invoke-static {v2, v1}, Lo/extraCallback$onNavigationEvent;->onPostMessage(ZLjava/lang/Object;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->extraCallback(Lo/PaymentRequestItem;)V

    .line 136
    monitor-exit v0

    return-void

    .line 131
    :cond_2
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onMessageChannelReady(Lo/PaymentRequestItem;)V

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 136
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onPostMessage()Z
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->ICustomTabsCallback:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
