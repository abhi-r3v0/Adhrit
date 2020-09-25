.class public Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cred/pay/repository/models/checkout/CheckoutInstrument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ICustomTabsCallback"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$Companion;",
        "",
        "()V",
        "INSTRUMENT_VIEW_FARM",
        "",
        "INSTRUMENT_VIEW_LIST",
        "INSTRUMENT_VIEW_RECOMMENDATION",
        "INSTRUMENT_VIEW_SEARCHABLE_LIST",
        "credpayrepository_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:[I

.field public extraCallback:[I

.field private final onMessageChannelReady:I

.field private final onPostMessage:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1fe

    new-array v0, v0, [I

    .line 1007
    iput-object v0, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->ICustomTabsCallback:[I

    const/16 v0, 0x100

    new-array v0, v0, [I

    .line 1008
    iput-object v0, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->extraCallback:[I

    const/16 v0, 0x1d

    .line 1011
    iput v0, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->onMessageChannelReady:I

    const/4 v0, 0x0

    .line 1012
    iput v0, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->onPostMessage:I

    .line 1013
    invoke-direct {p0}, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->onPostMessage()V

    return-void
.end method

.method private onPostMessage()V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_0
    const/16 v3, 0xff

    if-ge v1, v3, :cond_1

    .line 1019
    iget-object v4, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->ICustomTabsCallback:[I

    add-int/lit16 v5, v1, 0xff

    aput v2, v4, v5

    aput v2, v4, v1

    .line 1020
    iget-object v4, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->extraCallback:[I

    aput v1, v4, v2

    shl-int/2addr v2, v0

    and-int/lit16 v4, v2, 0x100

    if-eqz v4, :cond_0

    xor-int/lit8 v2, v2, 0x1d

    and-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final onNavigationEvent(I)[I
    .locals 10

    .line 1094
    new-array v0, p1, [I

    add-int/lit8 v1, p1, -0x1

    const/4 v2, 0x1

    .line 1095
    aput v2, v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, p1, :cond_5

    .line 2029
    iget-object v5, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->ICustomTabsCallback:[I

    aget v5, v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_2

    .line 1099
    aget v7, v0, v6

    if-eqz v7, :cond_1

    if-nez v5, :cond_0

    goto :goto_2

    .line 2041
    :cond_0
    iget-object v8, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->ICustomTabsCallback:[I

    iget-object v9, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->extraCallback:[I

    aget v7, v9, v7

    aget v9, v9, v5

    add-int/2addr v7, v9

    aget v7, v8, v7

    goto :goto_3

    :cond_1
    :goto_2
    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v8, v6, 0x1

    .line 1099
    aget v9, v0, v8

    xor-int/2addr v7, v9

    aput v7, v0, v6

    move v6, v8

    goto :goto_1

    .line 1101
    :cond_2
    aget v6, v0, v1

    if-eqz v6, :cond_4

    if-nez v5, :cond_3

    goto :goto_4

    .line 3041
    :cond_3
    iget-object v7, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->ICustomTabsCallback:[I

    iget-object v8, p0, Lcom/cred/pay/repository/models/checkout/CheckoutInstrument$ICustomTabsCallback;->extraCallback:[I

    aget v6, v8, v6

    aget v5, v8, v5

    add-int/2addr v6, v5

    aget v5, v7, v6

    goto :goto_5

    :cond_4
    :goto_4
    const/4 v5, 0x0

    .line 1101
    :goto_5
    aput v5, v0, v1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method
