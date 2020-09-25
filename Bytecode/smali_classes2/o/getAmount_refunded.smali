.class public Lo/getAmount_refunded;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getAmount_refunded$onPostMessage;,
        Lo/getAmount_refunded$ICustomTabsCallback;,
        Lo/getAmount_refunded$onMessageChannelReady;
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Lcom/google/android/gms/common/api/Status;

.field static final onNavigationEvent:Lcom/google/android/gms/common/api/Status;

.field static final onTransact:Ljava/lang/Object;

.field private static warmup:Lo/getAmount_refunded;


# instance fields
.field public final ICustomTabsCallback$Stub:Lo/getMinAmount;

.field ICustomTabsCallback$Stub$Proxy:Lo/getEmails;

.field public final ICustomTabsService:Landroid/os/Handler;

.field final asBinder:Lo/getTotalPaid;

.field final asInterface:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/RefundAccount$$Parcelable<",
            "*>;",
            "Lo/getAmount_refunded$onMessageChannelReady<",
            "*>;>;"
        }
    .end annotation
.end field

.field extraCallback:J

.field private final extraCommand:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/RefundAccount$$Parcelable<",
            "*>;>;"
        }
    .end annotation
.end field

.field final getInterfaceDescriptor:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/RefundAccount$$Parcelable<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final newSession:Ljava/util/concurrent/atomic/AtomicInteger;

.field onMessageChannelReady:J

.field onPostMessage:J

.field public final onRelationshipValidationResult:Landroid/content/Context;

.field private final updateVisuals:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 232
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/4 v1, 0x4

    const-string v2, "Sign-out occurred while this API call was in progress."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/getAmount_refunded;->ICustomTabsCallback:Lcom/google/android/gms/common/api/Status;

    .line 233
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v2, "The user must be signed in to make this API call."

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    sput-object v0, Lo/getAmount_refunded;->onNavigationEvent:Lcom/google/android/gms/common/api/Status;

    .line 234
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/getAmount_refunded;->onTransact:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/getMinAmount;)V
    .locals 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x1388

    .line 22
    iput-wide v0, p0, Lo/getAmount_refunded;->onPostMessage:J

    const-wide/32 v0, 0x1d4c0

    .line 23
    iput-wide v0, p0, Lo/getAmount_refunded;->extraCallback:J

    const-wide/16 v0, 0x2710

    .line 24
    iput-wide v0, p0, Lo/getAmount_refunded;->onMessageChannelReady:J

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lo/getAmount_refunded;->newSession:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lo/getAmount_refunded;->updateVisuals:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x5

    const/high16 v3, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v3, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lo/getAmount_refunded;->ICustomTabsCallback$Stub$Proxy:Lo/getEmails;

    .line 29
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;-><init>()V

    iput-object v0, p0, Lo/getAmount_refunded;->getInterfaceDescriptor:Ljava/util/Set;

    .line 30
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;-><init>()V

    iput-object v0, p0, Lo/getAmount_refunded;->extraCommand:Ljava/util/Set;

    .line 31
    iput-object p1, p0, Lo/getAmount_refunded;->onRelationshipValidationResult:Landroid/content/Context;

    .line 32
    new-instance p1, Lo/setPointerStrokeWidth;

    invoke-direct {p1, p2, p0}, Lo/setPointerStrokeWidth;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 33
    iput-object p3, p0, Lo/getAmount_refunded;->ICustomTabsCallback$Stub:Lo/getMinAmount;

    .line 34
    new-instance p1, Lo/getTotalPaid;

    invoke-direct {p1, p3}, Lo/getTotalPaid;-><init>(Lo/PaymentItem;)V

    iput-object p1, p0, Lo/getAmount_refunded;->asBinder:Lo/getTotalPaid;

    .line 35
    iget-object p1, p0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public static ICustomTabsCallback()V
    .locals 4

    .line 15
    sget-object v0, Lo/getAmount_refunded;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    .line 16
    :try_start_0
    sget-object v1, Lo/getAmount_refunded;->warmup:Lo/getAmount_refunded;

    if-eqz v1, :cond_0

    .line 17
    sget-object v1, Lo/getAmount_refunded;->warmup:Lo/getAmount_refunded;

    .line 18
    iget-object v2, v1, Lo/getAmount_refunded;->updateVisuals:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 19
    iget-object v2, v1, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    iget-object v1, v1, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 20
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private final ICustomTabsCallback(Lo/setPaymentDueDateWeaklyTyped;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPaymentDueDateWeaklyTyped<",
            "*>;)V"
        }
    .end annotation

    .line 40
    invoke-virtual {p1}, Lo/setPaymentDueDateWeaklyTyped;->getApiKey()Lo/RefundAccount$$Parcelable;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getAmount_refunded$onMessageChannelReady;

    if-nez v1, :cond_0

    .line 43
    new-instance v1, Lo/getAmount_refunded$onMessageChannelReady;

    invoke-direct {v1, p0, p1}, Lo/getAmount_refunded$onMessageChannelReady;-><init>(Lo/getAmount_refunded;Lo/setPaymentDueDateWeaklyTyped;)V

    .line 44
    iget-object p1, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    :cond_0
    iget-object p1, v1, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {p1}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->requiresSignIn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 46
    iget-object p1, p0, Lo/getAmount_refunded;->extraCommand:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_1
    invoke-virtual {v1}, Lo/getAmount_refunded$onMessageChannelReady;->onRelationshipValidationResult()V

    return-void
.end method

.method static synthetic extraCallback(Lo/getAmount_refunded;)Landroid/os/Handler;
    .locals 0

    .line 220
    iget-object p0, p0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    return-object p0
.end method

.method public static extraCallback(Landroid/content/Context;)Lo/getAmount_refunded;
    .locals 4

    .line 1
    sget-object v0, Lo/getAmount_refunded;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lo/getAmount_refunded;->warmup:Lo/getAmount_refunded;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "GoogleApiHandler"

    const/16 v3, 0x9

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 5
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 7
    new-instance v2, Lo/getAmount_refunded;

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 1001
    sget-object v3, Lo/getMinAmount;->extraCallback:Lo/getMinAmount;

    .line 8
    invoke-direct {v2, p0, v1, v3}, Lo/getAmount_refunded;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/getMinAmount;)V

    sput-object v2, Lo/getAmount_refunded;->warmup:Lo/getAmount_refunded;

    .line 9
    :cond_0
    sget-object p0, Lo/getAmount_refunded;->warmup:Lo/getAmount_refunded;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0

    throw p0
.end method

.method static synthetic onNavigationEvent(Lo/getAmount_refunded;)Ljava/util/Map;
    .locals 0

    .line 231
    iget-object p0, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/getEmails;)V
    .locals 2

    .line 49
    sget-object v0, Lo/getAmount_refunded;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lo/getAmount_refunded;->ICustomTabsCallback$Stub$Proxy:Lo/getEmails;

    if-eq v1, p1, :cond_0

    .line 51
    iput-object p1, p0, Lo/getAmount_refunded;->ICustomTabsCallback$Stub$Proxy:Lo/getEmails;

    .line 52
    iget-object v1, p0, Lo/getAmount_refunded;->getInterfaceDescriptor:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 53
    :cond_0
    iget-object v1, p0, Lo/getAmount_refunded;->getInterfaceDescriptor:Ljava/util/Set;

    invoke-virtual {p1}, Lo/getEmails;->extraCallback()Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 54
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final ICustomTabsCallback(Lo/setReferenceId;I)V
    .locals 3

    .line 22214
    iget-object v0, p0, Lo/getAmount_refunded;->ICustomTabsCallback$Stub:Lo/getMinAmount;

    iget-object v1, p0, Lo/getAmount_refunded;->onRelationshipValidationResult:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lo/getMinAmount;->onPostMessage(Landroid/content/Context;Lo/setReferenceId;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 217
    invoke-virtual {v0, v1, p2, v2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 218
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final extraCallback(Lo/setPaymentDueDateWeaklyTyped;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPaymentDueDateWeaklyTyped<",
            "*>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Lo/getPhoneNumbers;

    invoke-virtual {p1}, Lo/setPaymentDueDateWeaklyTyped;->getApiKey()Lo/RefundAccount$$Parcelable;

    move-result-object p1

    invoke-direct {v0, p1}, Lo/getPhoneNumbers;-><init>(Lo/RefundAccount$$Parcelable;)V

    .line 69
    iget-object p1, p0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    const/16 v1, 0xe

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 70
    invoke-virtual {v0}, Lo/getPhoneNumbers;->extraCallback()Lo/removeBackgroundStateChangeListener;

    move-result-object p1

    .line 2014
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/32 v1, 0x493e0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    .line 202
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unknown message id: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GoogleApiManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 199
    :pswitch_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/getAmount_refunded$onPostMessage;

    .line 200
    iget-object v0, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    .line 20013
    iget-object v1, p1, Lo/getAmount_refunded$onPostMessage;->onMessageChannelReady:Lo/RefundAccount$$Parcelable;

    .line 200
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 201
    iget-object v0, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    .line 21013
    iget-object v1, p1, Lo/getAmount_refunded$onPostMessage;->onMessageChannelReady:Lo/RefundAccount$$Parcelable;

    .line 201
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAmount_refunded$onMessageChannelReady;

    .line 21283
    invoke-virtual {v0, p1}, Lo/getAmount_refunded$onMessageChannelReady;->onPostMessage(Lo/getAmount_refunded$onPostMessage;)V

    goto/16 :goto_7

    .line 196
    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/getAmount_refunded$onPostMessage;

    .line 197
    iget-object v0, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    .line 17013
    iget-object v1, p1, Lo/getAmount_refunded$onPostMessage;->onMessageChannelReady:Lo/RefundAccount$$Parcelable;

    .line 197
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 198
    iget-object v0, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    .line 18013
    iget-object v1, p1, Lo/getAmount_refunded$onPostMessage;->onMessageChannelReady:Lo/RefundAccount$$Parcelable;

    .line 198
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAmount_refunded$onMessageChannelReady;

    .line 19258
    iget-object v1, v0, Lo/getAmount_refunded$onMessageChannelReady;->extraCallback:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 19260
    iget-boolean p1, v0, Lo/getAmount_refunded$onMessageChannelReady;->onNavigationEvent:Z

    if-nez p1, :cond_10

    .line 19261
    iget-object p1, v0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {p1}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->isConnected()Z

    move-result p1

    if-nez p1, :cond_0

    .line 19262
    invoke-virtual {v0}, Lo/getAmount_refunded$onMessageChannelReady;->onRelationshipValidationResult()V

    goto/16 :goto_7

    .line 19263
    :cond_0
    invoke-virtual {v0}, Lo/getAmount_refunded$onMessageChannelReady;->onMessageChannelReady()V

    goto/16 :goto_7

    .line 187
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/getPhoneNumbers;

    .line 188
    invoke-virtual {p1}, Lo/getPhoneNumbers;->onMessageChannelReady()Lo/RefundAccount$$Parcelable;

    move-result-object v0

    .line 189
    iget-object v1, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 190
    invoke-virtual {p1}, Lo/getPhoneNumbers;->extraCallback()Lo/removeBackgroundStateChangeListener;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 16008
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p1, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 192
    :cond_1
    iget-object v1, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    .line 193
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAmount_refunded$onMessageChannelReady;

    .line 16281
    invoke-virtual {v0, v3}, Lo/getAmount_refunded$onMessageChannelReady;->onNavigationEvent(Z)Z

    move-result v0

    .line 194
    invoke-virtual {p1}, Lo/getPhoneNumbers;->extraCallback()Lo/removeBackgroundStateChangeListener;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 17008
    iget-object p1, p1, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    invoke-virtual {p1, v0}, Lo/getProjectId;->onPostMessage(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 185
    :pswitch_3
    iget-object v0, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 186
    iget-object v0, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getAmount_refunded$onMessageChannelReady;

    .line 15203
    invoke-virtual {p1, v5}, Lo/getAmount_refunded$onMessageChannelReady;->onNavigationEvent(Z)Z

    goto/16 :goto_7

    .line 183
    :pswitch_4
    iget-object v0, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 184
    iget-object v0, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getAmount_refunded$onMessageChannelReady;

    .line 13188
    iget-object v0, p1, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 13220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 13188
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onPostMessage(Landroid/os/Handler;)V

    .line 13189
    iget-boolean v0, p1, Lo/getAmount_refunded$onMessageChannelReady;->onNavigationEvent:Z

    if-eqz v0, :cond_10

    .line 13190
    invoke-virtual {p1}, Lo/getAmount_refunded$onMessageChannelReady;->extraCallback()V

    .line 13191
    iget-object v0, p1, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 13229
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsCallback$Stub:Lo/getMinAmount;

    .line 13191
    iget-object v1, p1, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 14221
    iget-object v1, v1, Lo/getAmount_refunded;->onRelationshipValidationResult:Landroid/content/Context;

    .line 13191
    invoke-virtual {v0, v1}, Lo/PaymentItem;->extraCallback(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    const/16 v2, 0x8

    if-ne v0, v1, :cond_2

    .line 13193
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 13194
    :cond_2
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 13195
    :goto_0
    invoke-virtual {p1, v0}, Lo/getAmount_refunded$onMessageChannelReady;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    .line 13196
    iget-object p1, p1, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {p1}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->disconnect()V

    goto/16 :goto_7

    .line 178
    :pswitch_5
    iget-object p1, p0, Lo/getAmount_refunded;->extraCommand:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RefundAccount$$Parcelable;

    .line 179
    iget-object v1, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAmount_refunded$onMessageChannelReady;

    invoke-virtual {v0}, Lo/getAmount_refunded$onMessageChannelReady;->onPostMessage()V

    goto :goto_1

    .line 181
    :cond_3
    iget-object p1, p0, Lo/getAmount_refunded;->extraCommand:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    goto/16 :goto_7

    .line 175
    :pswitch_6
    iget-object v0, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 176
    iget-object v0, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getAmount_refunded$onMessageChannelReady;

    .line 12179
    iget-object v0, p1, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 12220
    iget-object v0, v0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 12179
    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->onPostMessage(Landroid/os/Handler;)V

    .line 12180
    iget-boolean v0, p1, Lo/getAmount_refunded$onMessageChannelReady;->onNavigationEvent:Z

    if-eqz v0, :cond_10

    .line 12181
    invoke-virtual {p1}, Lo/getAmount_refunded$onMessageChannelReady;->onRelationshipValidationResult()V

    goto/16 :goto_7

    .line 173
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/setPaymentDueDateWeaklyTyped;

    invoke-direct {p0, p1}, Lo/getAmount_refunded;->ICustomTabsCallback(Lo/setPaymentDueDateWeaklyTyped;)V

    goto/16 :goto_7

    .line 163
    :pswitch_8
    iget-object p1, p0, Lo/getAmount_refunded;->onRelationshipValidationResult:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    instance-of p1, p1, Landroid/app/Application;

    if-eqz p1, :cond_10

    .line 164
    iget-object p1, p0, Lo/getAmount_refunded;->onRelationshipValidationResult:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    .line 165
    invoke-static {p1}, Lo/RefundAccount;->ICustomTabsCallback(Landroid/app/Application;)V

    .line 10007
    sget-object p1, Lo/RefundAccount;->extraCallback:Lo/RefundAccount;

    .line 166
    new-instance v0, Lo/is_verified;

    invoke-direct {v0, p0}, Lo/is_verified;-><init>(Lo/getAmount_refunded;)V

    .line 10024
    sget-object v4, Lo/RefundAccount;->extraCallback:Lo/RefundAccount;

    monitor-enter v4

    .line 10025
    :try_start_0
    iget-object p1, p1, Lo/RefundAccount;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 10026
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11007
    sget-object p1, Lo/RefundAccount;->extraCallback:Lo/RefundAccount;

    .line 11014
    iget-object v0, p1, Lo/RefundAccount;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_6

    .line 12007
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v0, v4, :cond_4

    const/4 v3, 0x1

    :cond_4
    if-eqz v3, :cond_5

    .line 11016
    new-instance v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    .line 11017
    invoke-static {v0}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    .line 11018
    iget-object v3, p1, Lo/RefundAccount;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-nez v3, :cond_6

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0x64

    if-le v0, v3, :cond_6

    .line 11019
    iget-object v0, p1, Lo/RefundAccount;->onPostMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :cond_5
    const/4 p1, 0x1

    goto :goto_3

    .line 12023
    :cond_6
    :goto_2
    iget-object p1, p1, Lo/RefundAccount;->onPostMessage:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    :goto_3
    if-nez p1, :cond_10

    .line 171
    iput-wide v1, p0, Lo/getAmount_refunded;->onMessageChannelReady:J

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    .line 10026
    monitor-exit v4

    throw p1

    .line 147
    :pswitch_9
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/setReferenceId;

    .line 149
    iget-object v1, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getAmount_refunded$onMessageChannelReady;

    .line 8239
    iget v3, v2, Lo/getAmount_refunded$onMessageChannelReady;->onPostMessage:I

    if-ne v3, v0, :cond_7

    move-object v4, v2

    :cond_8
    if-eqz v4, :cond_9

    .line 155
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v2, p0, Lo/getAmount_refunded;->ICustomTabsCallback$Stub:Lo/getMinAmount;

    .line 9021
    iget v3, p1, Lo/setReferenceId;->onNavigationEvent:I

    .line 156
    invoke-virtual {v2, v3}, Lo/PaymentItem;->onNavigationEvent(I)Ljava/lang/String;

    move-result-object v2

    .line 9023
    iget-object p1, p1, Lo/setReferenceId;->extraCallback:Ljava/lang/String;

    .line 157
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x45

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Error resolution was canceled by the user, original error message: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 158
    invoke-virtual {v4, v0}, Lo/getAmount_refunded$onMessageChannelReady;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_7

    :cond_9
    const/16 p1, 0x4c

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Could not find API instance "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " while trying to fail enqueued calls."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "GoogleApiManager"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_7

    .line 136
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/getLastName;

    .line 137
    iget-object v0, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    iget-object v1, p1, Lo/getLastName;->ICustomTabsCallback:Lo/setPaymentDueDateWeaklyTyped;

    invoke-virtual {v1}, Lo/setPaymentDueDateWeaklyTyped;->getApiKey()Lo/RefundAccount$$Parcelable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAmount_refunded$onMessageChannelReady;

    if-nez v0, :cond_a

    .line 139
    iget-object v0, p1, Lo/getLastName;->ICustomTabsCallback:Lo/setPaymentDueDateWeaklyTyped;

    invoke-direct {p0, v0}, Lo/getAmount_refunded;->ICustomTabsCallback(Lo/setPaymentDueDateWeaklyTyped;)V

    .line 140
    iget-object v0, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    iget-object v1, p1, Lo/getLastName;->ICustomTabsCallback:Lo/setPaymentDueDateWeaklyTyped;

    invoke-virtual {v1}, Lo/setPaymentDueDateWeaklyTyped;->getApiKey()Lo/RefundAccount$$Parcelable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAmount_refunded$onMessageChannelReady;

    .line 8238
    :cond_a
    iget-object v1, v0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {v1}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->requiresSignIn()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 141
    iget-object v1, p0, Lo/getAmount_refunded;->updateVisuals:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p1, Lo/getLastName;->onMessageChannelReady:I

    if-eq v1, v2, :cond_b

    .line 142
    iget-object p1, p1, Lo/getLastName;->onNavigationEvent:Lo/getContacts;

    sget-object v1, Lo/getAmount_refunded;->ICustomTabsCallback:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1, v1}, Lo/getContacts;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    .line 143
    invoke-virtual {v0}, Lo/getAmount_refunded$onMessageChannelReady;->onPostMessage()V

    goto/16 :goto_7

    .line 145
    :cond_b
    iget-object p1, p1, Lo/getLastName;->onNavigationEvent:Lo/getContacts;

    invoke-virtual {v0, p1}, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback(Lo/getContacts;)V

    goto/16 :goto_7

    .line 131
    :pswitch_b
    iget-object p1, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getAmount_refunded$onMessageChannelReady;

    .line 8128
    iget-object v1, v0, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 8220
    iget-object v1, v1, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 8128
    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->onPostMessage(Landroid/os/Handler;)V

    .line 8129
    iput-object v4, v0, Lo/getAmount_refunded$onMessageChannelReady;->asInterface:Lo/setReferenceId;

    .line 133
    invoke-virtual {v0}, Lo/getAmount_refunded$onMessageChannelReady;->onRelationshipValidationResult()V

    goto :goto_4

    .line 110
    :pswitch_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lo/SlackMessage;

    .line 111
    invoke-virtual {p1}, Lo/SlackMessage;->onNavigationEvent()Ljava/util/Set;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RefundAccount$$Parcelable;

    .line 113
    iget-object v2, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getAmount_refunded$onMessageChannelReady;

    if-nez v2, :cond_c

    .line 115
    new-instance v0, Lo/setReferenceId;

    const/16 v2, 0xd

    invoke-direct {v0, v2}, Lo/setReferenceId;-><init>(I)V

    .line 116
    invoke-virtual {p1, v1, v0, v4}, Lo/SlackMessage;->ICustomTabsCallback(Lo/RefundAccount$$Parcelable;Lo/setReferenceId;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 4237
    :cond_c
    iget-object v3, v2, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    invoke-interface {v3}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 119
    sget-object v3, Lo/setReferenceId;->onPostMessage:Lo/setReferenceId;

    .line 5126
    iget-object v2, v2, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback:Lo/setCustomAmount$ICustomTabsCallback$Stub;

    .line 120
    invoke-interface {v2}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->getEndpointPackageName()Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {p1, v1, v3, v2}, Lo/SlackMessage;->ICustomTabsCallback(Lo/RefundAccount$$Parcelable;Lo/setReferenceId;Ljava/lang/String;)V

    goto :goto_5

    .line 5131
    :cond_d
    iget-object v3, v2, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 5220
    iget-object v3, v3, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 5131
    invoke-static {v3}, Lo/extraCallback$onNavigationEvent;->onPostMessage(Landroid/os/Handler;)V

    .line 5132
    iget-object v3, v2, Lo/getAmount_refunded$onMessageChannelReady;->asInterface:Lo/setReferenceId;

    if-eqz v3, :cond_e

    .line 6131
    iget-object v3, v2, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 6220
    iget-object v3, v3, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 6131
    invoke-static {v3}, Lo/extraCallback$onNavigationEvent;->onPostMessage(Landroid/os/Handler;)V

    .line 6132
    iget-object v2, v2, Lo/getAmount_refunded$onMessageChannelReady;->asInterface:Lo/setReferenceId;

    .line 125
    invoke-virtual {p1, v1, v2, v4}, Lo/SlackMessage;->ICustomTabsCallback(Lo/RefundAccount$$Parcelable;Lo/setReferenceId;Ljava/lang/String;)V

    goto :goto_5

    .line 6226
    :cond_e
    iget-object v1, v2, Lo/getAmount_refunded$onMessageChannelReady;->ICustomTabsCallback$Stub:Lo/getAmount_refunded;

    .line 7220
    iget-object v1, v1, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 6226
    invoke-static {v1}, Lo/extraCallback$onNavigationEvent;->onPostMessage(Landroid/os/Handler;)V

    .line 6227
    iget-object v1, v2, Lo/getAmount_refunded$onMessageChannelReady;->onMessageChannelReady:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v2}, Lo/getAmount_refunded$onMessageChannelReady;->onRelationshipValidationResult()V

    goto :goto_5

    .line 98
    :pswitch_d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    const-wide/16 v1, 0x2710

    .line 102
    :cond_f
    iput-wide v1, p0, Lo/getAmount_refunded;->onMessageChannelReady:J

    .line 103
    iget-object p1, p0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    const/16 v0, 0xc

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object p1, p0, Lo/getAmount_refunded;->asInterface:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/RefundAccount$$Parcelable;

    .line 105
    iget-object v2, p0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    .line 106
    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v3, p0, Lo/getAmount_refunded;->onMessageChannelReady:J

    .line 107
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_6

    :cond_10
    :goto_7
    return v5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_a
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onMessageChannelReady(Lo/setPaymentDueDateWeaklyTyped;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPaymentDueDateWeaklyTyped<",
            "*>;)V"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onNavigationEvent()I
    .locals 1

    .line 37
    iget-object v0, p0, Lo/getAmount_refunded;->newSession:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public final onNavigationEvent(Lo/setPaymentDueDateWeaklyTyped;Lo/getMismatchDetails;Lo/getReminder;)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lo/setCustomAmount$onPostMessage;",
            ">(",
            "Lo/setPaymentDueDateWeaklyTyped<",
            "TO;>;",
            "Lo/getMismatchDetails<",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "*>;",
            "Lo/getReminder<",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "*>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 83
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 84
    new-instance v1, Lo/NotificationStatusRequestJsonAdapter;

    new-instance v2, Lo/getCreditScore;

    invoke-direct {v2, p2, p3}, Lo/getCreditScore;-><init>(Lo/getMismatchDetails;Lo/getReminder;)V

    invoke-direct {v1, v2, v0}, Lo/NotificationStatusRequestJsonAdapter;-><init>(Lo/getCreditScore;Lo/removeBackgroundStateChangeListener;)V

    .line 85
    iget-object p2, p0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    new-instance p3, Lo/getLastName;

    iget-object v2, p0, Lo/getAmount_refunded;->updateVisuals:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {p3, v1, v2, p1}, Lo/getLastName;-><init>(Lo/getContacts;ILo/setPaymentDueDateWeaklyTyped;)V

    const/16 p1, 0x8

    .line 87
    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 88
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3014
    iget-object p1, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object p1
.end method

.method final onNavigationEvent(Lo/getEmails;)V
    .locals 2

    .line 55
    sget-object v0, Lo/getAmount_refunded;->onTransact:Ljava/lang/Object;

    monitor-enter v0

    .line 56
    :try_start_0
    iget-object v1, p0, Lo/getAmount_refunded;->ICustomTabsCallback$Stub$Proxy:Lo/getEmails;

    if-ne v1, p1, :cond_0

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lo/getAmount_refunded;->ICustomTabsCallback$Stub$Proxy:Lo/getEmails;

    .line 58
    iget-object p1, p0, Lo/getAmount_refunded;->getInterfaceDescriptor:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 59
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onPostMessage(Lo/setPaymentDueDateWeaklyTyped;Lo/getPaymentMethod$onPostMessage;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lo/setCustomAmount$onPostMessage;",
            ">(",
            "Lo/setPaymentDueDateWeaklyTyped<",
            "TO;>;",
            "Lo/getPaymentMethod$onPostMessage<",
            "*>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 90
    new-instance v0, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v0}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 91
    new-instance v1, Lo/getOptedIn;

    invoke-direct {v1, p2, v0}, Lo/getOptedIn;-><init>(Lo/getPaymentMethod$onPostMessage;Lo/removeBackgroundStateChangeListener;)V

    .line 92
    iget-object p2, p0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    new-instance v2, Lo/getLastName;

    iget-object v3, p0, Lo/getAmount_refunded;->updateVisuals:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {v2, v1, v3, p1}, Lo/getLastName;-><init>(Lo/getContacts;ILo/setPaymentDueDateWeaklyTyped;)V

    const/16 p1, 0xd

    .line 94
    invoke-virtual {p2, p1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 95
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4014
    iget-object p1, v0, Lo/removeBackgroundStateChangeListener;->extraCallback:Lo/getProjectId;

    return-object p1
.end method

.method public final onPostMessage()V
    .locals 2

    .line 63
    iget-object v0, p0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onPostMessage(Lo/setPaymentDueDateWeaklyTyped;ILo/getAccountReference$onPostMessage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lo/setCustomAmount$onPostMessage;",
            ">(",
            "Lo/setPaymentDueDateWeaklyTyped<",
            "TO;>;I",
            "Lo/getAccountReference$onPostMessage<",
            "+",
            "Lo/PaymentRequestItem;",
            "Lo/setCustomAmount$onMessageChannelReady;",
            ">;)V"
        }
    .end annotation

    .line 71
    new-instance v0, Lo/getCards;

    invoke-direct {v0, p2, p3}, Lo/getCards;-><init>(ILo/getAccountReference$onPostMessage;)V

    .line 72
    iget-object p2, p0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    new-instance p3, Lo/getLastName;

    iget-object v1, p0, Lo/getAmount_refunded;->updateVisuals:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 73
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-direct {p3, v0, v1, p1}, Lo/getLastName;-><init>(Lo/getContacts;ILo/setPaymentDueDateWeaklyTyped;)V

    const/4 p1, 0x4

    .line 74
    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 75
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final onPostMessage(Lo/setPaymentDueDateWeaklyTyped;ILo/isFabrikEnabled;Lo/removeBackgroundStateChangeListener;Lo/getPanMismatch;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lo/setCustomAmount$onPostMessage;",
            "ResultT:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/setPaymentDueDateWeaklyTyped<",
            "TO;>;I",
            "Lo/isFabrikEnabled<",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "TResultT;>;",
            "Lo/removeBackgroundStateChangeListener<",
            "TResultT;>;",
            "Lo/getPanMismatch;",
            ")V"
        }
    .end annotation

    .line 77
    new-instance v0, Lo/WhatsappConsentState;

    invoke-direct {v0, p2, p3, p4, p5}, Lo/WhatsappConsentState;-><init>(ILo/isFabrikEnabled;Lo/removeBackgroundStateChangeListener;Lo/getPanMismatch;)V

    .line 78
    iget-object p2, p0, Lo/getAmount_refunded;->ICustomTabsService:Landroid/os/Handler;

    new-instance p3, Lo/getLastName;

    iget-object p4, p0, Lo/getAmount_refunded;->updateVisuals:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 79
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p4

    invoke-direct {p3, v0, p4, p1}, Lo/getLastName;-><init>(Lo/getContacts;ILo/setPaymentDueDateWeaklyTyped;)V

    const/4 p1, 0x4

    .line 80
    invoke-virtual {p2, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 81
    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
