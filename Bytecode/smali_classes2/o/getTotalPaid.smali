.class public final Lo/getTotalPaid;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ICustomTabsCallback:Lo/PaymentItem;

.field public final onNavigationEvent:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1001
    sget-object v0, Lo/getMinAmount;->extraCallback:Lo/getMinAmount;

    .line 1
    invoke-direct {p0, v0}, Lo/getTotalPaid;-><init>(Lo/PaymentItem;)V

    return-void
.end method

.method public constructor <init>(Lo/PaymentItem;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lo/getTotalPaid;->onNavigationEvent:Landroid/util/SparseIntArray;

    if-eqz p1, :cond_0

    .line 6
    iput-object p1, p0, Lo/getTotalPaid;->ICustomTabsCallback:Lo/PaymentItem;

    return-void

    .line 2002
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "null reference"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/content/Context;Lo/setCustomAmount$ICustomTabsCallback$Stub;)I
    .locals 6

    const-string v0, "null reference"

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    .line 10
    invoke-interface {p2}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->requiresGooglePlayServices()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 12
    :cond_0
    invoke-interface {p2}, Lo/setCustomAmount$ICustomTabsCallback$Stub;->getMinApkVersion()I

    move-result p2

    .line 13
    iget-object v0, p0, Lo/getTotalPaid;->onNavigationEvent:Landroid/util/SparseIntArray;

    const/4 v2, -0x1

    invoke-virtual {v0, p2, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_1

    return v0

    :cond_1
    const/4 v3, 0x0

    .line 16
    :goto_0
    iget-object v4, p0, Lo/getTotalPaid;->onNavigationEvent:Landroid/util/SparseIntArray;

    invoke-virtual {v4}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 17
    iget-object v4, p0, Lo/getTotalPaid;->onNavigationEvent:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    if-le v4, p2, :cond_2

    .line 18
    iget-object v5, p0, Lo/getTotalPaid;->onNavigationEvent:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_1
    if-ne v1, v2, :cond_4

    .line 23
    iget-object v0, p0, Lo/getTotalPaid;->ICustomTabsCallback:Lo/PaymentItem;

    invoke-virtual {v0, p1, p2}, Lo/PaymentItem;->extraCallback(Landroid/content/Context;I)I

    move-result v1

    .line 24
    :cond_4
    iget-object p1, p0, Lo/getTotalPaid;->onNavigationEvent:Landroid/util/SparseIntArray;

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseIntArray;->put(II)V

    return v1

    .line 4002
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3002
    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
