.class public Lo/setPaymentDueDateWeaklyTyped;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lo/setCustomAmount$onPostMessage;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mApi:Lo/setCustomAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setCustomAmount<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mId:I

.field private final zabj:Lo/setCustomAmount$onPostMessage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final zabk:Lo/RefundAccount$$Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/RefundAccount$$Parcelable<",
            "TO;>;"
        }
    .end annotation
.end field

.field private final zabl:Landroid/os/Looper;

.field private final zabm:Lo/getPaymentMode;

.field private final zabn:Lo/getPanMismatch;

.field protected final zabo:Lo/getAmount_refunded;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;Lo/getPanMismatch;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lo/setCustomAmount<",
            "TO;>;TO;",
            "Lo/getPanMismatch;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 49
    new-instance v0, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;

    invoke-direct {v0}, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;-><init>()V

    .line 50
    invoke-virtual {v0, p4}, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;->onMessageChannelReady(Lo/getPanMismatch;)Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;

    move-result-object p4

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p4, v0}, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;->extraCallback(Landroid/os/Looper;)Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;

    move-result-object p4

    invoke-virtual {p4}, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;->onPostMessage()Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;

    move-result-object p4

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Lo/setPaymentDueDateWeaklyTyped;-><init>(Landroid/app/Activity;Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lo/setCustomAmount<",
            "TO;>;TO;",
            "Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;",
            ")V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null activity is not permitted."

    .line 18
    invoke-static {p1, v0}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 19
    invoke-static {p2, v0}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 20
    invoke-static {p4, v0}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lo/setPaymentDueDateWeaklyTyped;->mContext:Landroid/content/Context;

    .line 22
    iput-object p2, p0, Lo/setPaymentDueDateWeaklyTyped;->mApi:Lo/setCustomAmount;

    .line 23
    iput-object p3, p0, Lo/setPaymentDueDateWeaklyTyped;->zabj:Lo/setCustomAmount$onPostMessage;

    .line 24
    iget-object p2, p4, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;->extraCallback:Landroid/os/Looper;

    iput-object p2, p0, Lo/setPaymentDueDateWeaklyTyped;->zabl:Landroid/os/Looper;

    .line 25
    iget-object p2, p0, Lo/setPaymentDueDateWeaklyTyped;->mApi:Lo/setCustomAmount;

    iget-object p3, p0, Lo/setPaymentDueDateWeaklyTyped;->zabj:Lo/setCustomAmount$onPostMessage;

    invoke-static {p2, p3}, Lo/RefundAccount$$Parcelable;->ICustomTabsCallback(Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;)Lo/RefundAccount$$Parcelable;

    move-result-object p2

    iput-object p2, p0, Lo/setPaymentDueDateWeaklyTyped;->zabk:Lo/RefundAccount$$Parcelable;

    .line 26
    new-instance p2, Lo/PhoneNumber;

    invoke-direct {p2, p0}, Lo/PhoneNumber;-><init>(Lo/setPaymentDueDateWeaklyTyped;)V

    iput-object p2, p0, Lo/setPaymentDueDateWeaklyTyped;->zabm:Lo/getPaymentMode;

    .line 27
    iget-object p2, p0, Lo/setPaymentDueDateWeaklyTyped;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lo/getAmount_refunded;->extraCallback(Landroid/content/Context;)Lo/getAmount_refunded;

    move-result-object p2

    iput-object p2, p0, Lo/setPaymentDueDateWeaklyTyped;->zabo:Lo/getAmount_refunded;

    .line 28
    invoke-virtual {p2}, Lo/getAmount_refunded;->onNavigationEvent()I

    move-result p2

    iput p2, p0, Lo/setPaymentDueDateWeaklyTyped;->mId:I

    .line 29
    iget-object p2, p4, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;->onMessageChannelReady:Lo/getPanMismatch;

    iput-object p2, p0, Lo/setPaymentDueDateWeaklyTyped;->zabn:Lo/getPanMismatch;

    .line 30
    instance-of p2, p1, Lcom/google/android/gms/common/api/GoogleApiActivity;

    if-nez p2, :cond_0

    .line 31
    iget-object p2, p0, Lo/setPaymentDueDateWeaklyTyped;->zabo:Lo/getAmount_refunded;

    iget-object p3, p0, Lo/setPaymentDueDateWeaklyTyped;->zabk:Lo/RefundAccount$$Parcelable;

    invoke-static {p1, p2, p3}, Lo/getEmails;->onPostMessage(Landroid/app/Activity;Lo/getAmount_refunded;Lo/RefundAccount$$Parcelable;)V

    .line 32
    :cond_0
    iget-object p1, p0, Lo/setPaymentDueDateWeaklyTyped;->zabo:Lo/getAmount_refunded;

    invoke-virtual {p1, p0}, Lo/getAmount_refunded;->onMessageChannelReady(Lo/setPaymentDueDateWeaklyTyped;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lo/setCustomAmount;Landroid/os/Looper;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/setCustomAmount<",
            "TO;>;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    .line 2
    invoke-static {p1, v0}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 3
    invoke-static {p2, v0}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    .line 4
    invoke-static {p3, v0}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/setPaymentDueDateWeaklyTyped;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lo/setPaymentDueDateWeaklyTyped;->mApi:Lo/setCustomAmount;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lo/setPaymentDueDateWeaklyTyped;->zabj:Lo/setCustomAmount$onPostMessage;

    .line 8
    iput-object p3, p0, Lo/setPaymentDueDateWeaklyTyped;->zabl:Landroid/os/Looper;

    .line 9
    invoke-static {p2}, Lo/RefundAccount$$Parcelable;->onPostMessage(Lo/setCustomAmount;)Lo/RefundAccount$$Parcelable;

    move-result-object p1

    iput-object p1, p0, Lo/setPaymentDueDateWeaklyTyped;->zabk:Lo/RefundAccount$$Parcelable;

    .line 10
    new-instance p1, Lo/PhoneNumber;

    invoke-direct {p1, p0}, Lo/PhoneNumber;-><init>(Lo/setPaymentDueDateWeaklyTyped;)V

    iput-object p1, p0, Lo/setPaymentDueDateWeaklyTyped;->zabm:Lo/getPaymentMode;

    .line 11
    iget-object p1, p0, Lo/setPaymentDueDateWeaklyTyped;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lo/getAmount_refunded;->extraCallback(Landroid/content/Context;)Lo/getAmount_refunded;

    move-result-object p1

    iput-object p1, p0, Lo/setPaymentDueDateWeaklyTyped;->zabo:Lo/getAmount_refunded;

    .line 12
    invoke-virtual {p1}, Lo/getAmount_refunded;->onNavigationEvent()I

    move-result p1

    iput p1, p0, Lo/setPaymentDueDateWeaklyTyped;->mId:I

    .line 13
    new-instance p1, Lo/getItemDelegate$ICustomTabsCallback$Stub;

    invoke-direct {p1}, Lo/getItemDelegate$ICustomTabsCallback$Stub;-><init>()V

    iput-object p1, p0, Lo/setPaymentDueDateWeaklyTyped;->zabn:Lo/getPanMismatch;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;Landroid/os/Looper;Lo/getPanMismatch;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/setCustomAmount<",
            "TO;>;TO;",
            "Landroid/os/Looper;",
            "Lo/getPanMismatch;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 15
    new-instance v0, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;

    invoke-direct {v0}, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;-><init>()V

    invoke-virtual {v0, p4}, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;->extraCallback(Landroid/os/Looper;)Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;

    move-result-object p4

    invoke-virtual {p4, p5}, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;->onMessageChannelReady(Lo/getPanMismatch;)Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;

    move-result-object p4

    invoke-virtual {p4}, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;->onPostMessage()Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lo/setPaymentDueDateWeaklyTyped;-><init>(Landroid/content/Context;Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;Lo/getPanMismatch;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/setCustomAmount<",
            "TO;>;TO;",
            "Lo/getPanMismatch;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    new-instance v0, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;

    invoke-direct {v0}, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;-><init>()V

    invoke-virtual {v0, p4}, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;->onMessageChannelReady(Lo/getPanMismatch;)Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;

    move-result-object p4

    invoke-virtual {p4}, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback$onPostMessage;->onPostMessage()Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lo/setPaymentDueDateWeaklyTyped;-><init>(Landroid/content/Context;Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lo/setCustomAmount<",
            "TO;>;TO;",
            "Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    .line 35
    invoke-static {p1, v0}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    .line 36
    invoke-static {p2, v0}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.DEFAULT_SETTINGS instead."

    .line 37
    invoke-static {p4, v0}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/setPaymentDueDateWeaklyTyped;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lo/setPaymentDueDateWeaklyTyped;->mApi:Lo/setCustomAmount;

    .line 40
    iput-object p3, p0, Lo/setPaymentDueDateWeaklyTyped;->zabj:Lo/setCustomAmount$onPostMessage;

    .line 41
    iget-object p1, p4, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;->extraCallback:Landroid/os/Looper;

    iput-object p1, p0, Lo/setPaymentDueDateWeaklyTyped;->zabl:Landroid/os/Looper;

    .line 42
    iget-object p1, p0, Lo/setPaymentDueDateWeaklyTyped;->mApi:Lo/setCustomAmount;

    iget-object p2, p0, Lo/setPaymentDueDateWeaklyTyped;->zabj:Lo/setCustomAmount$onPostMessage;

    invoke-static {p1, p2}, Lo/RefundAccount$$Parcelable;->ICustomTabsCallback(Lo/setCustomAmount;Lo/setCustomAmount$onPostMessage;)Lo/RefundAccount$$Parcelable;

    move-result-object p1

    iput-object p1, p0, Lo/setPaymentDueDateWeaklyTyped;->zabk:Lo/RefundAccount$$Parcelable;

    .line 43
    new-instance p1, Lo/PhoneNumber;

    invoke-direct {p1, p0}, Lo/PhoneNumber;-><init>(Lo/setPaymentDueDateWeaklyTyped;)V

    iput-object p1, p0, Lo/setPaymentDueDateWeaklyTyped;->zabm:Lo/getPaymentMode;

    .line 44
    iget-object p1, p0, Lo/setPaymentDueDateWeaklyTyped;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lo/getAmount_refunded;->extraCallback(Landroid/content/Context;)Lo/getAmount_refunded;

    move-result-object p1

    iput-object p1, p0, Lo/setPaymentDueDateWeaklyTyped;->zabo:Lo/getAmount_refunded;

    .line 45
    invoke-virtual {p1}, Lo/getAmount_refunded;->onNavigationEvent()I

    move-result p1

    iput p1, p0, Lo/setPaymentDueDateWeaklyTyped;->mId:I

    .line 46
    iget-object p1, p4, Lo/setPaymentDueDateWeaklyTyped$ICustomTabsCallback;->onMessageChannelReady:Lo/getPanMismatch;

    iput-object p1, p0, Lo/setPaymentDueDateWeaklyTyped;->zabn:Lo/getPanMismatch;

    .line 47
    iget-object p1, p0, Lo/setPaymentDueDateWeaklyTyped;->zabo:Lo/getAmount_refunded;

    invoke-virtual {p1, p0}, Lo/getAmount_refunded;->onMessageChannelReady(Lo/setPaymentDueDateWeaklyTyped;)V

    return-void
.end method

.method private final zaa(ILo/isFabrikEnabled;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lo/setCustomAmount$onMessageChannelReady;",
            ">(I",
            "Lo/isFabrikEnabled<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 58
    new-instance v6, Lo/removeBackgroundStateChangeListener;

    invoke-direct {v6}, Lo/removeBackgroundStateChangeListener;-><init>()V

    .line 59
    iget-object v0, p0, Lo/setPaymentDueDateWeaklyTyped;->zabo:Lo/getAmount_refunded;

    iget-object v5, p0, Lo/setPaymentDueDateWeaklyTyped;->zabn:Lo/getPanMismatch;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, v6

    invoke-virtual/range {v0 .. v5}, Lo/getAmount_refunded;->onPostMessage(Lo/setPaymentDueDateWeaklyTyped;ILo/isFabrikEnabled;Lo/removeBackgroundStateChangeListener;Lo/getPanMismatch;)V

    .line 60
    invoke-virtual {v6}, Lo/removeBackgroundStateChangeListener;->onNavigationEvent()Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method private final zaa(ILo/getAccountReference$onPostMessage;)Lo/getAccountReference$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "T:",
            "Lo/getAccountReference$onPostMessage<",
            "+",
            "Lo/PaymentRequestItem;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    .line 55
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->onMessageChannelReady()V

    .line 56
    iget-object v0, p0, Lo/setPaymentDueDateWeaklyTyped;->zabo:Lo/getAmount_refunded;

    invoke-virtual {v0, p0, p1, p2}, Lo/getAmount_refunded;->onPostMessage(Lo/setPaymentDueDateWeaklyTyped;ILo/getAccountReference$onPostMessage;)V

    return-object p2
.end method


# virtual methods
.method public asGoogleApiClient()Lo/getPaymentMode;
    .locals 1

    .line 99
    iget-object v0, p0, Lo/setPaymentDueDateWeaklyTyped;->zabm:Lo/getPaymentMode;

    return-object v0
.end method

.method protected createClientSettingsBuilder()Lo/getMinDue$onMessageChannelReady;
    .locals 3

    .line 102
    new-instance v0, Lo/getMinDue$onMessageChannelReady;

    invoke-direct {v0}, Lo/getMinDue$onMessageChannelReady;-><init>()V

    .line 104
    iget-object v1, p0, Lo/setPaymentDueDateWeaklyTyped;->zabj:Lo/setCustomAmount$onPostMessage;

    instance-of v2, v1, Lo/setCustomAmount$onPostMessage$onNavigationEvent;

    if-eqz v2, :cond_0

    .line 105
    check-cast v1, Lo/setCustomAmount$onPostMessage$onNavigationEvent;

    .line 106
    invoke-interface {v1}, Lo/setCustomAmount$onPostMessage$onNavigationEvent;->onNavigationEvent()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onMessageChannelReady()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    .line 109
    :cond_0
    iget-object v1, p0, Lo/setPaymentDueDateWeaklyTyped;->zabj:Lo/setCustomAmount$onPostMessage;

    instance-of v2, v1, Lo/setCustomAmount$onPostMessage$onPostMessage;

    if-eqz v2, :cond_1

    .line 110
    check-cast v1, Lo/setCustomAmount$onPostMessage$onPostMessage;

    invoke-interface {v1}, Lo/setCustomAmount$onPostMessage$onPostMessage;->onPostMessage()Landroid/accounts/Account;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 112
    :goto_0
    invoke-virtual {v0, v1}, Lo/getMinDue$onMessageChannelReady;->onNavigationEvent(Landroid/accounts/Account;)Lo/getMinDue$onMessageChannelReady;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lo/setPaymentDueDateWeaklyTyped;->zabj:Lo/setCustomAmount$onPostMessage;

    instance-of v2, v1, Lo/setCustomAmount$onPostMessage$onNavigationEvent;

    if-eqz v2, :cond_2

    .line 115
    check-cast v1, Lo/setCustomAmount$onPostMessage$onNavigationEvent;

    .line 116
    invoke-interface {v1}, Lo/setCustomAmount$onPostMessage$onNavigationEvent;->onNavigationEvent()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 118
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->onPostMessage()Ljava/util/Set;

    move-result-object v1

    goto :goto_1

    .line 119
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    .line 120
    :goto_1
    invoke-virtual {v0, v1}, Lo/getMinDue$onMessageChannelReady;->extraCallback(Ljava/util/Collection;)Lo/getMinDue$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/setPaymentDueDateWeaklyTyped;->mContext:Landroid/content/Context;

    .line 121
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getMinDue$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;)Lo/getMinDue$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/setPaymentDueDateWeaklyTyped;->mContext:Landroid/content/Context;

    .line 122
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getMinDue$onMessageChannelReady;->onMessageChannelReady(Ljava/lang/String;)Lo/getMinDue$onMessageChannelReady;

    move-result-object v0

    return-object v0
.end method

.method protected disconnectService()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lo/setPaymentDueDateWeaklyTyped;->zabo:Lo/getAmount_refunded;

    invoke-virtual {v0, p0}, Lo/getAmount_refunded;->extraCallback(Lo/setPaymentDueDateWeaklyTyped;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public doBestEffortWrite(Lo/isFabrikEnabled;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lo/setCustomAmount$onMessageChannelReady;",
            ">(",
            "Lo/isFabrikEnabled<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 66
    invoke-direct {p0, v0, p1}, Lo/setPaymentDueDateWeaklyTyped;->zaa(ILo/isFabrikEnabled;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public doBestEffortWrite(Lo/getAccountReference$onPostMessage;)Lo/getAccountReference$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "T:",
            "Lo/getAccountReference$onPostMessage<",
            "+",
            "Lo/PaymentRequestItem;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 65
    invoke-direct {p0, v0, p1}, Lo/setPaymentDueDateWeaklyTyped;->zaa(ILo/getAccountReference$onPostMessage;)Lo/getAccountReference$onPostMessage;

    move-result-object p1

    return-object p1
.end method

.method public doRead(Lo/isFabrikEnabled;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lo/setCustomAmount$onMessageChannelReady;",
            ">(",
            "Lo/isFabrikEnabled<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0, p1}, Lo/setPaymentDueDateWeaklyTyped;->zaa(ILo/isFabrikEnabled;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public doRead(Lo/getAccountReference$onPostMessage;)Lo/getAccountReference$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "T:",
            "Lo/getAccountReference$onPostMessage<",
            "+",
            "Lo/PaymentRequestItem;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0, p1}, Lo/setPaymentDueDateWeaklyTyped;->zaa(ILo/getAccountReference$onPostMessage;)Lo/getAccountReference$onPostMessage;

    move-result-object p1

    return-object p1
.end method

.method public doRegisterEventListener(Lo/getGating;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lo/setCustomAmount$onMessageChannelReady;",
            ">(",
            "Lo/getGating<",
            "TA;*>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v0, p1, Lo/getGating;->extraCallback:Lo/getMismatchDetails;

    .line 81
    invoke-virtual {v0}, Lo/getMismatchDetails;->onPostMessage()Lo/getPaymentMethod$onPostMessage;

    move-result-object v0

    const-string v1, "Listener has already been released."

    .line 82
    invoke-static {v0, v1}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    iget-object v0, p1, Lo/getGating;->onNavigationEvent:Lo/getReminder;

    .line 84
    invoke-virtual {v0}, Lo/getReminder;->extraCallback()Lo/getPaymentMethod$onPostMessage;

    move-result-object v0

    .line 85
    invoke-static {v0, v1}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lo/setPaymentDueDateWeaklyTyped;->zabo:Lo/getAmount_refunded;

    iget-object v1, p1, Lo/getGating;->extraCallback:Lo/getMismatchDetails;

    iget-object p1, p1, Lo/getGating;->onNavigationEvent:Lo/getReminder;

    invoke-virtual {v0, p0, v1, p1}, Lo/getAmount_refunded;->onNavigationEvent(Lo/setPaymentDueDateWeaklyTyped;Lo/getMismatchDetails;Lo/getReminder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public doRegisterEventListener(Lo/getMismatchDetails;Lo/getReminder;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "T:",
            "Lo/getMismatchDetails<",
            "TA;*>;U:",
            "Lo/getReminder<",
            "TA;*>;>(TT;TU;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 67
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-virtual {p1}, Lo/getMismatchDetails;->onPostMessage()Lo/getPaymentMethod$onPostMessage;

    move-result-object v0

    const-string v1, "Listener has already been released."

    .line 71
    invoke-static {v0, v1}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-virtual {p2}, Lo/getReminder;->extraCallback()Lo/getPaymentMethod$onPostMessage;

    move-result-object v0

    .line 74
    invoke-static {v0, v1}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p1}, Lo/getMismatchDetails;->onPostMessage()Lo/getPaymentMethod$onPostMessage;

    move-result-object v0

    invoke-virtual {p2}, Lo/getReminder;->extraCallback()Lo/getPaymentMethod$onPostMessage;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/getPaymentMethod$onPostMessage;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Listener registration and unregistration methods must be constructed with the same ListenerHolder."

    .line 77
    invoke-static {v0, v1}, Lo/extraCallback$onNavigationEvent;->onMessageChannelReady(ZLjava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lo/setPaymentDueDateWeaklyTyped;->zabo:Lo/getAmount_refunded;

    invoke-virtual {v0, p0, p1, p2}, Lo/getAmount_refunded;->onNavigationEvent(Lo/setPaymentDueDateWeaklyTyped;Lo/getMismatchDetails;Lo/getReminder;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public doUnregisterEventListener(Lo/getPaymentMethod$onPostMessage;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getPaymentMethod$onPostMessage<",
            "*>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "Listener key cannot be null."

    .line 87
    invoke-static {p1, v0}, Lo/extraCallback$onNavigationEvent;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lo/setPaymentDueDateWeaklyTyped;->zabo:Lo/getAmount_refunded;

    invoke-virtual {v0, p0, p1}, Lo/getAmount_refunded;->onPostMessage(Lo/setPaymentDueDateWeaklyTyped;Lo/getPaymentMethod$onPostMessage;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public doWrite(Lo/isFabrikEnabled;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lo/setCustomAmount$onMessageChannelReady;",
            ">(",
            "Lo/isFabrikEnabled<",
            "TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task<",
            "TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 64
    invoke-direct {p0, v0, p1}, Lo/setPaymentDueDateWeaklyTyped;->zaa(ILo/isFabrikEnabled;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method

.method public doWrite(Lo/getAccountReference$onPostMessage;)Lo/getAccountReference$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "T:",
            "Lo/getAccountReference$onPostMessage<",
            "+",
            "Lo/PaymentRequestItem;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 63
    invoke-direct {p0, v0, p1}, Lo/setPaymentDueDateWeaklyTyped;->zaa(ILo/getAccountReference$onPostMessage;)Lo/getAccountReference$onPostMessage;

    move-result-object p1

    return-object p1
.end method

.method public final getApi()Lo/setCustomAmount;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/setCustomAmount<",
            "TO;>;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lo/setPaymentDueDateWeaklyTyped;->mApi:Lo/setCustomAmount;

    return-object v0
.end method

.method public getApiKey()Lo/RefundAccount$$Parcelable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/RefundAccount$$Parcelable<",
            "TO;>;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lo/setPaymentDueDateWeaklyTyped;->zabk:Lo/RefundAccount$$Parcelable;

    return-object v0
.end method

.method public getApiOptions()Lo/setCustomAmount$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lo/setPaymentDueDateWeaklyTyped;->zabj:Lo/setCustomAmount$onPostMessage;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    .line 101
    iget-object v0, p0, Lo/setPaymentDueDateWeaklyTyped;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getInstanceId()I
    .locals 1

    .line 98
    iget v0, p0, Lo/setPaymentDueDateWeaklyTyped;->mId:I

    return v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    .line 100
    iget-object v0, p0, Lo/setPaymentDueDateWeaklyTyped;->zabl:Landroid/os/Looper;

    return-object v0
.end method

.method public registerListener(Ljava/lang/Object;Ljava/lang/String;)Lo/getPaymentMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            "Ljava/lang/String;",
            ")",
            "Lo/getPaymentMethod<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lo/setPaymentDueDateWeaklyTyped;->zabl:Landroid/os/Looper;

    invoke-static {p1, v0, p2}, Lo/AppState;->onNavigationEvent(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lo/getPaymentMethod;

    move-result-object p1

    return-object p1
.end method

.method public zaa(Landroid/os/Looper;Lo/getAmount_refunded$onMessageChannelReady;)Lo/setCustomAmount$ICustomTabsCallback$Stub;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lo/getAmount_refunded$onMessageChannelReady<",
            "TO;>;)",
            "Lo/setCustomAmount$ICustomTabsCallback$Stub;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lo/setPaymentDueDateWeaklyTyped;->createClientSettingsBuilder()Lo/getMinDue$onMessageChannelReady;

    move-result-object v0

    invoke-virtual {v0}, Lo/getMinDue$onMessageChannelReady;->onMessageChannelReady()Lo/getMinDue;

    move-result-object v4

    .line 92
    iget-object v0, p0, Lo/setPaymentDueDateWeaklyTyped;->mApi:Lo/setCustomAmount;

    invoke-virtual {v0}, Lo/setCustomAmount;->onNavigationEvent()Lo/setCustomAmount$onNavigationEvent;

    move-result-object v1

    iget-object v2, p0, Lo/setPaymentDueDateWeaklyTyped;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lo/setPaymentDueDateWeaklyTyped;->zabj:Lo/setCustomAmount$onPostMessage;

    move-object v3, p1

    move-object v6, p2

    move-object v7, p2

    .line 93
    invoke-virtual/range {v1 .. v7}, Lo/setCustomAmount$onNavigationEvent;->buildClient(Landroid/content/Context;Landroid/os/Looper;Lo/getMinDue;Ljava/lang/Object;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)Lo/setCustomAmount$ICustomTabsCallback$Stub;

    move-result-object p1

    return-object p1
.end method

.method public zaa(Landroid/content/Context;Landroid/os/Handler;)Lo/setEnable;
    .locals 2

    .line 124
    new-instance v0, Lo/setEnable;

    invoke-virtual {p0}, Lo/setPaymentDueDateWeaklyTyped;->createClientSettingsBuilder()Lo/getMinDue$onMessageChannelReady;

    move-result-object v1

    invoke-virtual {v1}, Lo/getMinDue$onMessageChannelReady;->onMessageChannelReady()Lo/getMinDue;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lo/setEnable;-><init>(Landroid/content/Context;Landroid/os/Handler;Lo/getMinDue;)V

    return-object v0
.end method
