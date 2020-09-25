.class public Lin/juspay/hypersdk/core/ConnectivityReceiver;
.super Landroid/content/BroadcastReceiver;

# interfaces
.implements Lin/juspay/hypersdk/core/JuspayDuiHook;


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final attachedMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/app/Activity;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private browserFragment:Lin/juspay/hypersdk/HyperFragment;

.field private juspayServices:Lin/juspay/hypersdk/core/JuspayServices;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lin/juspay/hypersdk/core/ConnectivityReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lin/juspay/hypersdk/core/ConnectivityReceiver;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lin/juspay/hypersdk/core/ConnectivityReceiver;->attachedMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lin/juspay/hypersdk/HyperFragment;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lin/juspay/hypersdk/core/ConnectivityReceiver;->attachedMap:Ljava/util/Map;

    iput-object p1, p0, Lin/juspay/hypersdk/core/ConnectivityReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getJuspayServices()Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/core/ConnectivityReceiver;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    return-void
.end method


# virtual methods
.method public attach(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lin/juspay/hypersdk/core/ConnectivityReceiver;->attachedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lin/juspay/hypersdk/core/ConnectivityReceiver;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    sget-object v1, Lin/juspay/hypersdk/core/ConnectivityReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Attaching the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lin/juspay/hypersdk/core/ConnectivityReceiver;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lin/juspay/hypersdk/core/ConnectivityReceiver;->attachedMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public detach(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Lin/juspay/hypersdk/core/ConnectivityReceiver;->attachedMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lin/juspay/hypersdk/core/ConnectivityReceiver;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    sget-object v1, Lin/juspay/hypersdk/core/ConnectivityReceiver;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Detaching the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lin/juspay/hypersdk/core/ConnectivityReceiver;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lin/juspay/hypersdk/core/ConnectivityReceiver;->attachedMap:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public execute(Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p1, p0, Lin/juspay/hypersdk/core/ConnectivityReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "error"

    return-object p1

    :cond_0
    iget-object p1, p0, Lin/juspay/hypersdk/core/ConnectivityReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lin/juspay/hypersdk/HyperFragment;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, Lin/juspay/hypersdk/core/ConnectivityReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lin/juspay/hypersdk/core/ConnectivityReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lin/juspay/hypersdk/core/ConnectivityReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getDuiInterface()Lin/juspay/hypersdk/core/DuiInterface;

    move-result-object p1

    iget-object p2, p0, Lin/juspay/hypersdk/core/ConnectivityReceiver;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0}, Lin/juspay/hypersdk/HyperFragment;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    const-string v0, "onNetworkChange"

    invoke-virtual {p1, v0, p2}, Lin/juspay/hypersdk/core/DuiInterface;->invokeFnInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
