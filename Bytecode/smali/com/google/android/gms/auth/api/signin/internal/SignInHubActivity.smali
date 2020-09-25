.class public Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;
.super Lo/onSessionEvent;
.source ""


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$onPostMessage;
    }
.end annotation


# static fields
.field private static onPostMessage:Z = false


# instance fields
.field private ICustomTabsCallback:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

.field private asBinder:Z

.field extraCallback:Landroid/content/Intent;

.field private onMessageChannelReady:Z

.field onNavigationEvent:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/onSessionEvent;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->onMessageChannelReady:Z

    return-void
.end method

.method private final onPostMessage(I)V
    .locals 2

    .line 85
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 86
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "googleSignInStatus"

    .line 87
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 90
    sput-boolean v0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->onPostMessage:Z

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .line 53
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    const v1, 0xa002

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    if-eqz p3, :cond_4

    const-string/jumbo v1, "signInAccount"

    .line 59
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/auth/api/signin/SignInAccount;

    if-eqz v2, :cond_2

    .line 2006
    iget-object v3, v2, Lcom/google/android/gms/auth/api/signin/SignInAccount;->extraCallback:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-eqz v3, :cond_2

    .line 3006
    iget-object p1, v2, Lcom/google/android/gms/auth/api/signin/SignInAccount;->extraCallback:Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 62
    invoke-static {p0}, Lo/getPayment_instrument_id;->onNavigationEvent(Landroid/content/Context;)Lo/getPayment_instrument_id;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->ICustomTabsCallback:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    .line 4005
    iget-object v3, v3, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->extraCallback:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 63
    invoke-static {p1}, Lo/setBgPattern;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 64
    invoke-virtual {v2, v3, v4}, Lo/getPayment_instrument_id;->onMessageChannelReady(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 65
    invoke-virtual {p3, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "googleSignInAccount"

    .line 66
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->asBinder:Z

    .line 68
    iput p2, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->onNavigationEvent:I

    .line 69
    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->extraCallback:Landroid/content/Intent;

    .line 4082
    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportLoaderManager()Lo/getCallingPackage;

    move-result-object p1

    const/4 p2, 0x0

    new-instance p3, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$onPostMessage;

    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$onPostMessage;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;B)V

    invoke-virtual {p1, p2, p3}, Lo/getCallingPackage;->ICustomTabsCallback(Landroid/os/Bundle;Lo/getCallingPackage$ICustomTabsCallback;)Lo/getCurrentControllerInfo;

    .line 4083
    sput-boolean v0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->onPostMessage:Z

    return-void

    :cond_2
    const-string p2, "errorCode"

    .line 72
    invoke-virtual {p3, p2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 74
    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0xd

    if-ne p1, p2, :cond_3

    const/16 p1, 0x30d5

    .line 77
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->onPostMessage(I)V

    return-void

    .line 79
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->onPostMessage(I)V

    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 3
    invoke-super {p0, p1}, Lo/onSessionEvent;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lo/setBgPattern;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "com.google.android.gms.auth.NO_IMPL"

    .line 6
    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 p1, 0x30d4

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->onPostMessage(I)V

    return-void

    :cond_0
    const-string v2, "com.google.android.gms.auth.GOOGLE_SIGN_IN"

    .line 9
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "AuthSignInClient"

    if-nez v3, :cond_2

    const-string v3, "com.google.android.gms.auth.APPAUTH_SIGN_IN"

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string p1, "Unknown action: "

    .line 10
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2
    const-string v3, "config"

    .line 13
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lo/setBgPattern;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 14
    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    const/4 v5, 0x0

    if-nez v0, :cond_3

    const-string p1, "Activity started with invalid configuration."

    .line 16
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 20
    :cond_3
    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->ICustomTabsCallback:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    if-nez p1, :cond_6

    .line 22
    sget-boolean p1, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->onPostMessage:Z

    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {p0, v5}, Landroid/app/Activity;->setResult(I)V

    const/16 p1, 0x30d6

    .line 24
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->onPostMessage(I)V

    return-void

    :cond_4
    const/4 p1, 0x1

    .line 26
    sput-boolean p1, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->onPostMessage:Z

    .line 28
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "com.google.android.gms"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 31
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->ICustomTabsCallback:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const v1, 0xa002

    .line 33
    :try_start_0
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 36
    :catch_0
    iput-boolean p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->onMessageChannelReady:Z

    const-string p1, "Could not launch sign in Intent. Google Play Service is probably being updated..."

    .line 37
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x11

    .line 38
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->onPostMessage(I)V

    return-void

    :cond_6
    const-string/jumbo v0, "signingInGoogleApiClients"

    .line 40
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->asBinder:Z

    if-eqz v0, :cond_7

    const-string/jumbo v0, "signInResultCode"

    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->onNavigationEvent:I

    const-string/jumbo v0, "signInResultData"

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-static {p1}, Lo/setBgPattern;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->extraCallback:Landroid/content/Intent;

    .line 1082
    invoke-virtual {p0}, Lo/onSessionEvent;->getSupportLoaderManager()Lo/getCallingPackage;

    move-result-object p1

    const/4 v0, 0x0

    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$onPostMessage;

    invoke-direct {v1, p0, v5}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$onPostMessage;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;B)V

    invoke-virtual {p1, v0, v1}, Lo/getCallingPackage;->ICustomTabsCallback(Landroid/os/Bundle;Lo/getCallingPackage$ICustomTabsCallback;)Lo/getCurrentControllerInfo;

    .line 1083
    sput-boolean v5, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->onPostMessage:Z

    :cond_7
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lo/onSessionEvent;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 48
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->asBinder:Z

    const-string/jumbo v1, "signingInGoogleApiClients"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->asBinder:Z

    if-eqz v0, :cond_0

    .line 50
    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->onNavigationEvent:I

    const-string/jumbo v1, "signInResultCode"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->extraCallback:Landroid/content/Intent;

    const-string/jumbo v1, "signInResultData"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method
