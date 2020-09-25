.class public final Lo/setBin;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static ICustomTabsCallback:Lo/getFarmBackgroundImage;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    new-instance v0, Lo/getFarmBackgroundImage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "GoogleSignInCommon"

    invoke-direct {v0, v2, v1}, Lo/getFarmBackgroundImage;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lo/setBin;->ICustomTabsCallback:Lo/getFarmBackgroundImage;

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 3

    .line 14
    sget-object v0, Lo/setBin;->ICustomTabsCallback:Lo/getFarmBackgroundImage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getNoImplementationSignInIntent()"

    invoke-virtual {v0, v2, v1}, Lo/getFarmBackgroundImage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-static {p0, p1}, Lo/setBin;->onNavigationEvent(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "com.google.android.gms.auth.NO_IMPL"

    .line 16
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private static ICustomTabsCallback(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-static {p0}, Lo/getPayment_instrument_id;->onNavigationEvent(Landroid/content/Context;)Lo/getPayment_instrument_id;

    move-result-object p0

    invoke-virtual {p0}, Lo/getPayment_instrument_id;->onPostMessage()V

    .line 69
    invoke-static {}, Lo/getPaymentMode;->onMessageChannelReady()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getPaymentMode;

    .line 70
    invoke-virtual {v0}, Lo/getPaymentMode;->onPostMessage()V

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lo/getAmount_refunded;->ICustomTabsCallback()V

    return-void
.end method

.method public static extraCallback(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 3

    .line 10
    sget-object v0, Lo/setBin;->ICustomTabsCallback:Lo/getFarmBackgroundImage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getFallbackSignInIntent()"

    invoke-virtual {v0, v2, v1}, Lo/getFarmBackgroundImage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {p0, p1}, Lo/setBin;->onNavigationEvent(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "com.google.android.gms.auth.APPAUTH_SIGN_IN"

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method public static extraCallback(Lo/getPaymentMode;Landroid/content/Context;Z)Lo/getPaymentDueDateWeaklyTyped;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getPaymentMode;",
            "Landroid/content/Context;",
            "Z)",
            "Lo/getPaymentDueDateWeaklyTyped<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 61
    sget-object v0, Lo/setBin;->ICustomTabsCallback:Lo/getFarmBackgroundImage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Revoking access"

    invoke-virtual {v0, v2, v1}, Lo/getFarmBackgroundImage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    invoke-static {p1}, Lo/getInstrumentId;->onNavigationEvent(Landroid/content/Context;)Lo/getInstrumentId;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lo/getInstrumentId;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {p1}, Lo/setBin;->ICustomTabsCallback(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 66
    invoke-static {v0}, Lo/setBrand;->ICustomTabsCallback(Ljava/lang/String;)Lo/getPaymentDueDateWeaklyTyped;

    move-result-object p0

    return-object p0

    .line 67
    :cond_0
    new-instance p1, Lo/OrderItem;

    invoke-direct {p1, p0}, Lo/OrderItem;-><init>(Lo/getPaymentMode;)V

    invoke-virtual {p0, p1}, Lo/getPaymentMode;->onNavigationEvent(Lo/getAccountReference$onPostMessage;)Lo/getAccountReference$onPostMessage;

    move-result-object p0

    return-object p0
.end method

.method public static onMessageChannelReady(Lo/getPaymentMode;Landroid/content/Context;Z)Lo/getPaymentDueDateWeaklyTyped;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getPaymentMode;",
            "Landroid/content/Context;",
            "Z)",
            "Lo/getPaymentDueDateWeaklyTyped<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .line 56
    sget-object v0, Lo/setBin;->ICustomTabsCallback:Lo/getFarmBackgroundImage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Signing out"

    invoke-virtual {v0, v2, v1}, Lo/getFarmBackgroundImage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-static {p1}, Lo/setBin;->ICustomTabsCallback(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    .line 59
    sget-object p1, Lcom/google/android/gms/common/api/Status;->onMessageChannelReady:Lcom/google/android/gms/common/api/Status;

    invoke-static {p1, p0}, Lo/getPaymentAmountTitle;->onPostMessage(Lcom/google/android/gms/common/api/Status;Lo/getPaymentMode;)Lo/getPaymentDueDateWeaklyTyped;

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    new-instance p1, Lo/OrderAttributes;

    invoke-direct {p1, p0}, Lo/OrderAttributes;-><init>(Lo/getPaymentMode;)V

    invoke-virtual {p0, p1}, Lo/getPaymentMode;->onNavigationEvent(Lo/getAccountReference$onPostMessage;)Lo/getAccountReference$onPostMessage;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 3

    .line 1
    sget-object v0, Lo/setBin;->ICustomTabsCallback:Lo/getFarmBackgroundImage;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "getSignInIntent()"

    invoke-virtual {v0, v2, v1}, Lo/getFarmBackgroundImage;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;-><init>(Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 3
    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.auth.GOOGLE_SIGN_IN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    const-class v1, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "config"

    .line 7
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    invoke-virtual {p1, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object p1
.end method

.method public static onNavigationEvent(Landroid/content/Intent;)Lo/endChangeAnimation$ICustomTabsCallback;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 75
    new-instance p0, Lo/endChangeAnimation$ICustomTabsCallback;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->extraCallback:Lcom/google/android/gms/common/api/Status;

    invoke-direct {p0, v0, v1}, Lo/endChangeAnimation$ICustomTabsCallback;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object p0

    :cond_0
    const-string v1, "googleSignInStatus"

    .line 76
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Status;

    const-string v2, "googleSignInAccount"

    .line 78
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez p0, :cond_2

    .line 80
    new-instance p0, Lo/endChangeAnimation$ICustomTabsCallback;

    if-nez v1, :cond_1

    .line 81
    sget-object v1, Lcom/google/android/gms/common/api/Status;->extraCallback:Lcom/google/android/gms/common/api/Status;

    :cond_1
    invoke-direct {p0, v0, v1}, Lo/endChangeAnimation$ICustomTabsCallback;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object p0

    .line 83
    :cond_2
    new-instance v0, Lo/endChangeAnimation$ICustomTabsCallback;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->onMessageChannelReady:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p0, v1}, Lo/endChangeAnimation$ICustomTabsCallback;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
