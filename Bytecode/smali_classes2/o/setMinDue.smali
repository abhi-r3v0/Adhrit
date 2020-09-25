.class public abstract Lo/setMinDue;
.super Lo/getPrimaryButtonText;
.source ""

# interfaces
.implements Lo/setCustomAmount$ICustomTabsCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Lo/getPrimaryButtonText<",
        "TT;>;",
        "Lo/setCustomAmount$ICustomTabsCallback$Stub;"
    }
.end annotation


# instance fields
.field private final mScopes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zafa:Lo/getMinDue;

.field private final zax:Landroid/accounts/Account;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;ILo/getMinDue;)V
    .locals 9

    .line 2
    invoke-static {p1}, Lo/setStatementDate;->onNavigationEvent(Landroid/content/Context;)Lo/setStatementDate;

    move-result-object v3

    .line 3
    invoke-static {}, Lo/getMinAmount;->extraCallback()Lo/getMinAmount;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .line 4
    invoke-direct/range {v0 .. v8}, Lo/setMinDue;-><init>(Landroid/content/Context;Landroid/os/Handler;Lo/setStatementDate;Lo/getMinAmount;ILo/getMinDue;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lo/setStatementDate;Lo/getMinAmount;ILo/getMinDue;Lo/getIfsc;Lo/TransactionJsonAdapter;)V
    .locals 9

    move-object v8, p0

    .line 32
    invoke-static/range {p7 .. p7}, Lo/setMinDue;->zaa(Lo/getIfsc;)Lo/getPrimaryButtonText$onMessageChannelReady;

    move-result-object v6

    .line 33
    invoke-static/range {p8 .. p8}, Lo/setMinDue;->zaa(Lo/TransactionJsonAdapter;)Lo/getPrimaryButtonText$ICustomTabsCallback;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 34
    invoke-direct/range {v0 .. v7}, Lo/getPrimaryButtonText;-><init>(Landroid/content/Context;Landroid/os/Handler;Lo/setStatementDate;Lo/PaymentItem;ILo/getPrimaryButtonText$onMessageChannelReady;Lo/getPrimaryButtonText$ICustomTabsCallback;)V

    .line 35
    invoke-static {p6}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMinDue;

    iput-object v0, v8, Lo/setMinDue;->zafa:Lo/getMinDue;

    .line 36
    invoke-virtual {p6}, Lo/getMinDue;->extraCallback()Landroid/accounts/Account;

    move-result-object v0

    iput-object v0, v8, Lo/setMinDue;->zax:Landroid/accounts/Account;

    .line 37
    invoke-virtual {p6}, Lo/getMinDue;->ICustomTabsCallback()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/setMinDue;->zaa(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v8, Lo/setMinDue;->mScopes:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lo/setStatementDate;Lo/getMinAmount;ILo/getMinDue;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 39
    invoke-direct/range {p0 .. p8}, Lo/setMinDue;-><init>(Landroid/content/Context;Landroid/os/Handler;Lo/setStatementDate;Lo/getMinAmount;ILo/getMinDue;Lo/getIfsc;Lo/TransactionJsonAdapter;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILo/getMinDue;)V
    .locals 9

    .line 16
    invoke-static {p1}, Lo/setStatementDate;->onNavigationEvent(Landroid/content/Context;)Lo/setStatementDate;

    move-result-object v3

    .line 17
    invoke-static {}, Lo/getMinAmount;->extraCallback()Lo/getMinAmount;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .line 18
    invoke-direct/range {v0 .. v8}, Lo/setMinDue;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/setStatementDate;Lo/getMinAmount;ILo/getMinDue;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILo/getMinDue;Lo/getIfsc;Lo/TransactionJsonAdapter;)V
    .locals 9

    .line 7
    invoke-static {p1}, Lo/setStatementDate;->onNavigationEvent(Landroid/content/Context;)Lo/setStatementDate;

    move-result-object v3

    .line 8
    invoke-static {}, Lo/getMinAmount;->extraCallback()Lo/getMinAmount;

    move-result-object v4

    .line 9
    invoke-static {p5}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v7, p5

    check-cast v7, Lo/getIfsc;

    .line 10
    invoke-static {p6}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    move-object v8, p5

    check-cast v8, Lo/TransactionJsonAdapter;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move-object v6, p4

    .line 11
    invoke-direct/range {v0 .. v8}, Lo/setMinDue;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/setStatementDate;Lo/getMinAmount;ILo/getMinDue;Lo/getIfsc;Lo/TransactionJsonAdapter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILo/getMinDue;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 13
    invoke-direct/range {p0 .. p6}, Lo/setMinDue;-><init>(Landroid/content/Context;Landroid/os/Looper;ILo/getMinDue;Lo/getIfsc;Lo/TransactionJsonAdapter;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/setStatementDate;Lo/getMinAmount;ILo/getMinDue;Lo/getIfsc;Lo/TransactionJsonAdapter;)V
    .locals 10

    move-object v9, p0

    .line 21
    invoke-static/range {p7 .. p7}, Lo/setMinDue;->zaa(Lo/getIfsc;)Lo/getPrimaryButtonText$onMessageChannelReady;

    move-result-object v6

    .line 22
    invoke-static/range {p8 .. p8}, Lo/setMinDue;->zaa(Lo/TransactionJsonAdapter;)Lo/getPrimaryButtonText$ICustomTabsCallback;

    move-result-object v7

    .line 23
    invoke-virtual/range {p6 .. p6}, Lo/getMinDue;->onPostMessage()Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 24
    invoke-direct/range {v0 .. v8}, Lo/getPrimaryButtonText;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/setStatementDate;Lo/PaymentItem;ILo/getPrimaryButtonText$onMessageChannelReady;Lo/getPrimaryButtonText$ICustomTabsCallback;Ljava/lang/String;)V

    move-object/from16 v0, p6

    .line 25
    iput-object v0, v9, Lo/setMinDue;->zafa:Lo/getMinDue;

    .line 26
    invoke-virtual/range {p6 .. p6}, Lo/getMinDue;->extraCallback()Landroid/accounts/Account;

    move-result-object v1

    iput-object v1, v9, Lo/setMinDue;->zax:Landroid/accounts/Account;

    .line 27
    invoke-virtual/range {p6 .. p6}, Lo/getMinDue;->ICustomTabsCallback()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/setMinDue;->zaa(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, v9, Lo/setMinDue;->mScopes:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lo/setStatementDate;Lo/getMinAmount;ILo/getMinDue;Lo/getPaymentMode$onPostMessage;Lo/getPaymentMode$ICustomTabsCallback;)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p8}, Lo/setMinDue;-><init>(Landroid/content/Context;Landroid/os/Looper;Lo/setStatementDate;Lo/getMinAmount;ILo/getMinDue;Lo/getIfsc;Lo/TransactionJsonAdapter;)V

    return-void
.end method

.method private final zaa(Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lo/setMinDue;->validateScopes(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/common/api/Scope;

    .line 43
    invoke-interface {p1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expanding scopes is not permitted, use implied scopes instead"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-object v0
.end method

.method private static zaa(Lo/TransactionJsonAdapter;)Lo/getPrimaryButtonText$ICustomTabsCallback;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    new-instance v0, Lo/getCategoryId;

    invoke-direct {v0, p0}, Lo/getCategoryId;-><init>(Lo/TransactionJsonAdapter;)V

    return-object v0
.end method

.method private static zaa(Lo/getIfsc;)Lo/getPrimaryButtonText$onMessageChannelReady;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    new-instance v0, Lo/CategoryRewardResponse;

    invoke-direct {v0, p0}, Lo/CategoryRewardResponse;-><init>(Lo/getIfsc;)V

    return-object v0
.end method


# virtual methods
.method public final getAccount()Landroid/accounts/Account;
    .locals 1

    .line 48
    iget-object v0, p0, Lo/setMinDue;->zax:Landroid/accounts/Account;

    return-object v0
.end method

.method protected final getClientSettings()Lo/getMinDue;
    .locals 1

    .line 49
    iget-object v0, p0, Lo/setMinDue;->zafa:Lo/getMinDue;

    return-object v0
.end method

.method public getMinApkVersion()I
    .locals 1

    .line 61
    invoke-super {p0}, Lo/getPrimaryButtonText;->getMinApkVersion()I

    move-result v0

    return v0
.end method

.method public getRequiredFeatures()[Lo/setAmountRefunded;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lo/setAmountRefunded;

    return-object v0
.end method

.method protected final getScopes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lo/setMinDue;->mScopes:Ljava/util/Set;

    return-object v0
.end method

.method public getScopesForConnectionlessNonSignIn()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lo/setMinDue;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setMinDue;->mScopes:Ljava/util/Set;

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method protected validateScopes(Ljava/util/Set;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    return-object p1
.end method
