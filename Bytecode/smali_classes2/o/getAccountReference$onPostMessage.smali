.class public abstract Lo/getAccountReference$onPostMessage;
.super Lcom/google/android/gms/common/api/internal/BasePendingResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getAccountReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R::",
        "Lo/PaymentRequestItem;",
        "A::",
        "Lo/setCustomAmount$onMessageChannelReady;",
        ">",
        "Lcom/google/android/gms/common/api/internal/BasePendingResult<",
        "TR;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/setCustomAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount<",
            "*>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/setCustomAmount$ICustomTabsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount$ICustomTabsCallback<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/setCustomAmount;Lo/getPaymentMode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCustomAmount<",
            "*>;",
            "Lo/getPaymentMode;",
            ")V"
        }
    .end annotation

    const-string v0, "GoogleApiClient must not be null"

    .line 5
    invoke-static {p2, v0}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo/getPaymentMode;

    invoke-direct {p0, p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;-><init>(Lo/getPaymentMode;)V

    const-string p2, "Api must not be null"

    .line 6
    invoke-static {p1, p2}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lo/setCustomAmount;->onPostMessage()Lo/setCustomAmount$ICustomTabsCallback;

    move-result-object p2

    iput-object p2, p0, Lo/getAccountReference$onPostMessage;->onMessageChannelReady:Lo/setCustomAmount$ICustomTabsCallback;

    .line 8
    iput-object p1, p0, Lo/getAccountReference$onPostMessage;->extraCallback:Lo/setCustomAmount;

    return-void
.end method

.method private onPostMessage(Landroid/os/RemoteException;)V
    .locals 3

    .line 33
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p1}, Landroid/os/RemoteException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 34
    invoke-virtual {p0, v0}, Lo/getAccountReference$onPostMessage;->onPostMessage(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method


# virtual methods
.method protected ICustomTabsCallback(Lo/PaymentRequestItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    return-void
.end method

.method public final extraCallback(Lo/setCustomAmount$onMessageChannelReady;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .line 16
    instance-of v0, p1, Lo/getDisplayPriority;

    if-eqz v0, :cond_0

    .line 17
    check-cast p1, Lo/getDisplayPriority;

    invoke-virtual {p1}, Lo/getDisplayPriority;->extraCallback()Lo/setCustomAmount$asInterface;

    move-result-object p1

    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Lo/getAccountReference$onPostMessage;->onNavigationEvent(Lo/setCustomAmount$onMessageChannelReady;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 25
    invoke-direct {p0, p1}, Lo/getAccountReference$onPostMessage;->onPostMessage(Landroid/os/RemoteException;)V

    return-void

    :catch_1
    move-exception p1

    .line 22
    invoke-direct {p0, p1}, Lo/getAccountReference$onPostMessage;->onPostMessage(Landroid/os/RemoteException;)V

    .line 23
    throw p1
.end method

.method protected abstract onNavigationEvent(Lo/setCustomAmount$onMessageChannelReady;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public final onPostMessage(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    .line 27
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->ICustomTabsCallback()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Failed result must not be success"

    invoke-static {v0, v1}, Lo/extraCallback$onNavigationEvent;->onMessageChannelReady(ZLjava/lang/Object;)V

    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onNavigationEvent(Lcom/google/android/gms/common/api/Status;)Lo/PaymentRequestItem;

    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onNavigationEvent(Lo/PaymentRequestItem;)V

    .line 30
    invoke-virtual {p0, p1}, Lo/getAccountReference$onPostMessage;->ICustomTabsCallback(Lo/PaymentRequestItem;)V

    return-void
.end method
