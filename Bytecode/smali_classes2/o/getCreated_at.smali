.class public final Lo/getCreated_at;
.super Lo/getCard_reference;
.source ""


# instance fields
.field private final extraCallback:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/getCard_reference;-><init>()V

    .line 2
    iput-object p1, p0, Lo/getCreated_at;->extraCallback:Landroid/content/Context;

    return-void
.end method

.method private final extraCallback()V
    .locals 4

    .line 19
    iget-object v0, p0, Lo/getCreated_at;->extraCallback:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lo/component22;->onPostMessage(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling UID "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not Google Play services."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 3

    .line 4
    invoke-direct {p0}, Lo/getCreated_at;->extraCallback()V

    .line 6
    iget-object v0, p0, Lo/getCreated_at;->extraCallback:Landroid/content/Context;

    invoke-static {v0}, Lo/getInstrumentId;->onNavigationEvent(Landroid/content/Context;)Lo/getInstrumentId;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lo/getInstrumentId;->ICustomTabsCallback()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onMessageChannelReady:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0}, Lo/getInstrumentId;->onPostMessage()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    .line 11
    :cond_0
    iget-object v0, p0, Lo/getCreated_at;->extraCallback:Landroid/content/Context;

    invoke-static {v0, v2}, Lo/setInstrumentId;->ICustomTabsCallback(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lo/getBankCode;

    move-result-object v0

    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0}, Lo/getBankCode;->onMessageChannelReady()Lcom/google/android/gms/tasks/Task;

    return-void

    .line 14
    :cond_1
    invoke-virtual {v0}, Lo/getBankCode;->onNavigationEvent()Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lo/getCreated_at;->extraCallback()V

    .line 17
    iget-object v0, p0, Lo/getCreated_at;->extraCallback:Landroid/content/Context;

    invoke-static {v0}, Lo/getPayment_instrument_id;->onNavigationEvent(Landroid/content/Context;)Lo/getPayment_instrument_id;

    move-result-object v0

    invoke-virtual {v0}, Lo/getPayment_instrument_id;->onPostMessage()V

    return-void
.end method
