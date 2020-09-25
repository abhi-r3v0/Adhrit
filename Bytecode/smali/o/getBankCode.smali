.class public final Lo/getBankCode;
.super Lo/setPaymentDueDateWeaklyTyped;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getBankCode$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setPaymentDueDateWeaklyTyped<",
        "Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static extraCallback:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    .line 3
    sget-object v0, Lo/setUpdatedAt;->extraCallback:Lo/setCustomAmount;

    new-instance v1, Lo/getItemDelegate$ICustomTabsCallback$Stub;

    invoke-direct {v1}, Lo/getItemDelegate$ICustomTabsCallback$Stub;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lo/setPaymentDueDateWeaklyTyped;-><init>(Landroid/app/Activity;Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;Lo/getPanMismatch;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 2

    .line 1
    sget-object v0, Lo/setUpdatedAt;->extraCallback:Lo/setCustomAmount;

    new-instance v1, Lo/getItemDelegate$ICustomTabsCallback$Stub;

    invoke-direct {v1}, Lo/getItemDelegate$ICustomTabsCallback$Stub;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lo/setPaymentDueDateWeaklyTyped;-><init>(Landroid/content/Context;Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;Lo/getPanMismatch;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback()I
    .locals 4

    monitor-enter p0

    .line 5
    :try_start_0
    sget v0, Lo/getBankCode;->extraCallback:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 6
    invoke-virtual {p0}, Lo/setPaymentDueDateWeaklyTyped;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1001
    sget-object v1, Lo/getMinAmount;->extraCallback:Lo/getMinAmount;

    const v2, 0xbdfcb8

    .line 9
    invoke-virtual {v1, v0, v2}, Lo/PaymentItem;->extraCallback(Landroid/content/Context;I)I

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x4

    .line 11
    sput v0, Lo/getBankCode;->extraCallback:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 12
    invoke-virtual {v1, v0, v2, v3}, Lo/PaymentItem;->onMessageChannelReady(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "com.google.android.gms.auth.api.fallback"

    .line 13
    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 14
    sput v0, Lo/getBankCode;->extraCallback:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    .line 15
    sput v0, Lo/getBankCode;->extraCallback:I

    .line 16
    :cond_2
    :goto_0
    sget v0, Lo/getBankCode;->extraCallback:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final extraCallback()Landroid/content/Intent;
    .locals 4

    .line 17
    invoke-virtual {p0}, Lo/setPaymentDueDateWeaklyTyped;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 18
    sget-object v1, Lo/component14;->onNavigationEvent:[I

    invoke-virtual {p0}, Lo/getBankCode;->ICustomTabsCallback()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    if-eq v1, v3, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 21
    invoke-virtual {p0}, Lo/setPaymentDueDateWeaklyTyped;->getApiOptions()Lo/setCustomAmount$onPostMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lo/setBin;->ICustomTabsCallback(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lo/setPaymentDueDateWeaklyTyped;->getApiOptions()Lo/setCustomAmount$onPostMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lo/setBin;->onNavigationEvent(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 19
    :cond_1
    invoke-virtual {p0}, Lo/setPaymentDueDateWeaklyTyped;->getApiOptions()Lo/setCustomAmount$onPostMessage;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-static {v0, v1}, Lo/setBin;->extraCallback(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady()Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lo/setPaymentDueDateWeaklyTyped;->asGoogleApiClient()Lo/getPaymentMode;

    move-result-object v0

    .line 37
    invoke-virtual {p0}, Lo/setPaymentDueDateWeaklyTyped;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 38
    invoke-virtual {p0}, Lo/getBankCode;->ICustomTabsCallback()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 39
    :goto_0
    invoke-static {v0, v1, v2}, Lo/setBin;->extraCallback(Lo/getPaymentMode;Landroid/content/Context;Z)Lo/getPaymentDueDateWeaklyTyped;

    move-result-object v0

    .line 2008
    new-instance v1, Lo/ReferredPendingPersonData;

    invoke-direct {v1}, Lo/ReferredPendingPersonData;-><init>()V

    invoke-static {v0, v1}, Lo/getPaymentItem;->onMessageChannelReady(Lo/getPaymentDueDateWeaklyTyped;Lo/getPaymentItem$onMessageChannelReady;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public final onNavigationEvent()Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-virtual {p0}, Lo/setPaymentDueDateWeaklyTyped;->asGoogleApiClient()Lo/getPaymentMode;

    move-result-object v0

    .line 31
    invoke-virtual {p0}, Lo/setPaymentDueDateWeaklyTyped;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 32
    invoke-virtual {p0}, Lo/getBankCode;->ICustomTabsCallback()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 33
    :goto_0
    invoke-static {v0, v1, v2}, Lo/setBin;->onMessageChannelReady(Lo/getPaymentMode;Landroid/content/Context;Z)Lo/getPaymentDueDateWeaklyTyped;

    move-result-object v0

    .line 1008
    new-instance v1, Lo/ReferredPendingPersonData;

    invoke-direct {v1}, Lo/ReferredPendingPersonData;-><init>()V

    invoke-static {v0, v1}, Lo/getPaymentItem;->onMessageChannelReady(Lo/getPaymentDueDateWeaklyTyped;Lo/getPaymentItem$onMessageChannelReady;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
