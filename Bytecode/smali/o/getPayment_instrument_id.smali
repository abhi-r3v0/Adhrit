.class public final Lo/getPayment_instrument_id;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static extraCallback:Lo/getPayment_instrument_id;


# instance fields
.field private ICustomTabsCallback:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

.field private onNavigationEvent:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field private onPostMessage:Lo/getInstrumentId;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lo/getInstrumentId;->onNavigationEvent(Landroid/content/Context;)Lo/getInstrumentId;

    move-result-object p1

    iput-object p1, p0, Lo/getPayment_instrument_id;->onPostMessage:Lo/getInstrumentId;

    .line 3
    invoke-virtual {p1}, Lo/getInstrumentId;->ICustomTabsCallback()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p1

    iput-object p1, p0, Lo/getPayment_instrument_id;->ICustomTabsCallback:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 4
    iget-object p1, p0, Lo/getPayment_instrument_id;->onPostMessage:Lo/getInstrumentId;

    invoke-virtual {p1}, Lo/getInstrumentId;->onPostMessage()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p1

    iput-object p1, p0, Lo/getPayment_instrument_id;->onNavigationEvent:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    return-void
.end method

.method public static declared-synchronized onNavigationEvent(Landroid/content/Context;)Lo/getPayment_instrument_id;
    .locals 1

    const-class v0, Lo/getPayment_instrument_id;

    monitor-enter v0

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lo/getPayment_instrument_id;->onPostMessage(Landroid/content/Context;)Lo/getPayment_instrument_id;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized onPostMessage(Landroid/content/Context;)Lo/getPayment_instrument_id;
    .locals 2

    const-class v0, Lo/getPayment_instrument_id;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, Lo/getPayment_instrument_id;->extraCallback:Lo/getPayment_instrument_id;

    if-eqz v1, :cond_0

    .line 8
    sget-object p0, Lo/getPayment_instrument_id;->extraCallback:Lo/getPayment_instrument_id;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 9
    :cond_0
    :try_start_1
    new-instance v1, Lo/getPayment_instrument_id;

    invoke-direct {v1, p0}, Lo/getPayment_instrument_id;-><init>(Landroid/content/Context;)V

    .line 10
    sput-object v1, Lo/getPayment_instrument_id;->extraCallback:Lo/getPayment_instrument_id;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final declared-synchronized onMessageChannelReady(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V
    .locals 1

    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lo/getPayment_instrument_id;->onPostMessage:Lo/getInstrumentId;

    invoke-virtual {v0, p2, p1}, Lo/getInstrumentId;->ICustomTabsCallback(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 17
    iput-object p2, p0, Lo/getPayment_instrument_id;->ICustomTabsCallback:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 18
    iput-object p1, p0, Lo/getPayment_instrument_id;->onNavigationEvent:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPostMessage()V
    .locals 1

    monitor-enter p0

    .line 12
    :try_start_0
    iget-object v0, p0, Lo/getPayment_instrument_id;->onPostMessage:Lo/getInstrumentId;

    invoke-virtual {v0}, Lo/getInstrumentId;->extraCallback()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lo/getPayment_instrument_id;->ICustomTabsCallback:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 14
    iput-object v0, p0, Lo/getPayment_instrument_id;->onNavigationEvent:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
