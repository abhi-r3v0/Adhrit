.class public final Lo/readObject;
.super Lo/setMinDue;
.source ""

# interfaces
.implements Lo/FirebaseApiNotAvailableException;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setMinDue<",
        "Lo/UncheckedTimeoutException;",
        ">;",
        "Lo/FirebaseApiNotAvailableException;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/os/Bundle;

.field private final extraCallback:Z

.field private final onMessageChannelReady:Lo/getMinDue;

.field private onNavigationEvent:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/getMinDue;Landroid/os/Bundle;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)V
    .locals 7

    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    .line 1
    invoke-direct/range {v0 .. v6}, Lo/setMinDue;-><init>(Landroid/content/Context;Landroid/os/Looper;ILo/getMinDue;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lo/readObject;->extraCallback:Z

    .line 3
    iput-object p3, p0, Lo/readObject;->onMessageChannelReady:Lo/getMinDue;

    .line 4
    iput-object p4, p0, Lo/readObject;->ICustomTabsCallback:Landroid/os/Bundle;

    .line 1036
    iget-object p1, p3, Lo/getMinDue;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 5
    iput-object p1, p0, Lo/readObject;->onNavigationEvent:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLo/getMinDue;Lo/LocalTestingException;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)V
    .locals 7

    .line 2035
    iget-object p3, p4, Lo/getMinDue;->onMessageChannelReady:Lo/LocalTestingException;

    .line 2036
    iget-object p5, p4, Lo/getMinDue;->ICustomTabsCallback:Ljava/lang/Integer;

    .line 1052
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 3023
    iget-object v0, p4, Lo/getMinDue;->extraCallback:Landroid/accounts/Account;

    const-string v1, "com.google.android.gms.signin.internal.clientRequestedAccount"

    .line 1053
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz p5, :cond_0

    .line 1055
    invoke-virtual {p5}, Ljava/lang/Number;->intValue()I

    move-result p5

    const-string v0, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v4, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p3, 0x0

    const-string p5, "com.google.android.gms.signin.internal.offlineAccessRequested"

    .line 1057
    invoke-virtual {v4, p5, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p5, "com.google.android.gms.signin.internal.idTokenRequested"

    .line 1058
    invoke-virtual {v4, p5, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 p5, 0x0

    const-string v0, "com.google.android.gms.signin.internal.serverClientId"

    .line 1059
    invoke-virtual {v4, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    .line 1060
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    .line 1063
    invoke-virtual {v4, v0, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "com.google.android.gms.signin.internal.hostedDomain"

    .line 1064
    invoke-virtual {v4, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "com.google.android.gms.signin.internal.logSessionId"

    .line 1065
    invoke-virtual {v4, v0, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p5, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    .line 1068
    invoke-virtual {v4, p5, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v5, p6

    move-object v6, p7

    .line 9
    invoke-direct/range {v0 .. v6}, Lo/readObject;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/getMinDue;Landroid/os/Bundle;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 48
    new-instance v0, Lo/getPrimaryButtonText$onPostMessage;

    invoke-direct {v0, p0}, Lo/getPrimaryButtonText$onPostMessage;-><init>(Lo/getPrimaryButtonText;)V

    invoke-virtual {p0, v0}, Lo/getPrimaryButtonText;->connect(Lo/getPrimaryButtonText$onNavigationEvent;)V

    return-void
.end method

.method public final synthetic createServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    .line 83
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    instance-of v1, v0, Lo/UncheckedTimeoutException;

    if-eqz v1, :cond_1

    .line 85
    check-cast v0, Lo/UncheckedTimeoutException;

    return-object v0

    .line 86
    :cond_1
    new-instance v0, Lo/UncheckedExecutionException;

    invoke-direct {v0, p1}, Lo/UncheckedExecutionException;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final getGetServiceRequestExtraArgs()Landroid/os/Bundle;
    .locals 3

    .line 42
    iget-object v0, p0, Lo/readObject;->onMessageChannelReady:Lo/getMinDue;

    .line 7032
    iget-object v0, v0, Lo/getMinDue;->onNavigationEvent:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lo/getPrimaryButtonText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lo/readObject;->ICustomTabsCallback:Landroid/os/Bundle;

    iget-object v1, p0, Lo/readObject;->onMessageChannelReady:Lo/getMinDue;

    .line 8032
    iget-object v1, v1, Lo/getMinDue;->onNavigationEvent:Ljava/lang/String;

    const-string v2, "com.google.android.gms.signin.internal.realClientPackageName"

    .line 46
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lo/readObject;->ICustomTabsCallback:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getMinApkVersion()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public final getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method public final onNavigationEvent(Lo/CacheLoader$UnsupportedLoadingOperationException;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 25
    :try_start_0
    iget-object v0, p0, Lo/readObject;->onMessageChannelReady:Lo/getMinDue;

    .line 6024
    iget-object v1, v0, Lo/getMinDue;->extraCallback:Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "<<default account>>"

    if-eqz v1, :cond_0

    .line 6025
    :try_start_1
    iget-object v0, v0, Lo/getMinDue;->extraCallback:Landroid/accounts/Account;

    goto :goto_0

    .line 6026
    :cond_0
    new-instance v0, Landroid/accounts/Account;

    const-string v1, "com.google"

    invoke-direct {v0, v2, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    .line 27
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    invoke-virtual {p0}, Lo/getPrimaryButtonText;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/getInstrumentId;->onNavigationEvent(Landroid/content/Context;)Lo/getInstrumentId;

    move-result-object v1

    const-string v2, "defaultGoogleSignInAccount"

    .line 6032
    invoke-virtual {v1, v2}, Lo/getInstrumentId;->onPostMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6033
    invoke-virtual {v1, v2}, Lo/getInstrumentId;->onMessageChannelReady(Ljava/lang/String;)Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    .line 29
    :cond_1
    new-instance v2, Lo/setPaymentItem;

    iget-object v3, p0, Lo/readObject;->onNavigationEvent:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    invoke-direct {v2, v0, v3, v1}, Lo/setPaymentItem;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 31
    invoke-virtual {p0}, Lo/getPrimaryButtonText;->getService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lo/UncheckedTimeoutException;

    new-instance v1, Lo/writeObject;

    invoke-direct {v1, v2}, Lo/writeObject;-><init>(Lo/setPaymentItem;)V

    invoke-interface {v0, v1, p1}, Lo/UncheckedTimeoutException;->extraCallback(Lo/writeObject;Lo/CacheLoader$UnsupportedLoadingOperationException;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "Remote service probably died when signIn is called"

    .line 34
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :try_start_2
    new-instance v2, Lo/getApps;

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Lo/getApps;-><init>(I)V

    invoke-interface {p1, v2}, Lo/CacheLoader$UnsupportedLoadingOperationException;->extraCallback(Lo/getApps;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    const-string p1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    .line 38
    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 6011
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Expecting a valid ISignInCallbacks"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final requiresSignIn()Z
    .locals 1

    .line 11
    iget-boolean v0, p0, Lo/readObject;->extraCallback:Z

    return v0
.end method
