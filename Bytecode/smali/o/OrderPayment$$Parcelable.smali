.class final Lo/OrderPayment$$Parcelable;
.super Lo/setCustomAmount$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setCustomAmount$onNavigationEvent<",
        "Lo/getReference_id;",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/setCustomAmount$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic buildClient(Landroid/content/Context;Landroid/os/Looper;Lo/getMinDue;Ljava/lang/Object;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)Lo/setCustomAmount$ICustomTabsCallback$Stub;
    .locals 7

    .line 2
    move-object v4, p4

    check-cast v4, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 3
    new-instance p4, Lo/getReference_id;

    move-object v0, p4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lo/getReference_id;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/getMinDue;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)V

    return-object p4
.end method

.method public final synthetic getImpliedScopes(Ljava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 5
    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-nez p1, :cond_0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->onMessageChannelReady()Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method
