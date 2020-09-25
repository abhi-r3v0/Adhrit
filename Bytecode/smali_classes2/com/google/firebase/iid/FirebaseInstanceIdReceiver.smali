.class public final Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;
.super Lo/fromToken;
.source ""


# instance fields
.field private final processorExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fromToken;-><init>()V

    .line 3
    invoke-static {}, Lo/setIconBitmap;->newCachedSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->processorExecutor:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static final synthetic lambda$onReceiveInternal$0$FirebaseInstanceIdReceiver(ZLandroid/content/BroadcastReceiver$PendingResult;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    if-eqz p0, :cond_1

    .line 28
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->ICustomTabsCallback()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 29
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/Task;->extraCallback()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x1f4

    .line 31
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V

    .line 32
    :cond_1
    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method

.method private static normalizeIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 9
    invoke-static {p1}, Lo/parseArray;->unwrapServiceIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-gt v0, v1, :cond_1

    .line 15
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method private final onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "from"

    .line 17
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "google.com/iid"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    new-instance p1, Lo/fetchSignInMethodsForEmail;

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->processorExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {p1, v0}, Lo/fetchSignInMethodsForEmail;-><init>(Ljava/util/concurrent/ExecutorService;)V

    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lo/parseSession;

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->processorExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-direct {v0, p1, v1}, Lo/parseSession;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    move-object p1, v0

    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result v0

    .line 21
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    .line 23
    invoke-interface {p1, p2}, Lo/parseNdkPayload;->process(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->processorExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lo/signInAnonymously;

    invoke-direct {v2, v0, v1}, Lo/signInAnonymously;-><init>(ZLandroid/content/BroadcastReceiver$PendingResult;)V

    .line 24
    invoke-virtual {p1, p2, v2}, Lcom/google/android/gms/tasks/Task;->onMessageChannelReady(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 7
    :cond_0
    invoke-static {p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->normalizeIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
