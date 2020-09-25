.class public final Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cred/pay/repository/converters/PaymentModeComplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001e\u0010\u0003\u001a\u0012\u0012\u0004\u0012\u00020\u00050\u0004j\u0008\u0012\u0004\u0012\u00020\u0005`\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/cred/pay/repository/converters/PaymentModeComplete$Companion;",
        "",
        "()V",
        "SUPPORTED_PAYMENTS_METHOD",
        "Ljava/util/HashSet;",
        "",
        "Lkotlin/collections/HashSet;",
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
.field public ICustomTabsCallback:[[D


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([DIII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1005
    iput-object v0, p0, Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;->ICustomTabsCallback:[[D

    .line 1009
    array-length v0, p1

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 v2, 0x0

    aput v0, v1, v2

    const-class v0, D

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;->ICustomTabsCallback:[[D

    .line 1010
    invoke-direct {p0, p4, p1, p2, p3}, Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;->onNavigationEvent(I[DII)V

    return-void
.end method

.method private onNavigationEvent(I[DII)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p2

    .line 1037
    array-length v1, v0

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    div-double v1, v3, v1

    const/4 v6, 0x0

    .line 1038
    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_2

    .line 1039
    aget-wide v7, v0, v6

    move/from16 v9, p4

    int-to-double v10, v9

    div-double/2addr v7, v10

    int-to-double v10, v6

    mul-double v10, v10, v1

    move-object/from16 v12, p0

    .line 1042
    iget-object v13, v12, Lcom/cred/pay/repository/converters/PaymentModeComplete$onMessageChannelReady;->ICustomTabsCallback:[[D

    const-wide/16 v14, 0x0

    const/4 v5, 0x0

    :goto_1
    add-int/lit8 v3, p3, -0x1

    if-ge v5, v3, :cond_1

    .line 2021
    aget-object v3, v13, v6

    const-wide v16, 0x40d6663999999999L    # 22936.899999999998

    move/from16 v4, p1

    move-wide/from16 v18, v1

    int-to-double v0, v4

    div-double v16, v16, v0

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    mul-double v0, v0, v14

    const-wide v20, 0x400921fb54442d18L    # Math.PI

    mul-double v20, v20, v10

    add-double v0, v0, v20

    .line 2022
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double v16, v16, v0

    aput-wide v16, v3, v5

    add-double/2addr v14, v7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v14, v0

    if-lez v2, :cond_0

    sub-double/2addr v14, v0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    move-wide v3, v0

    move-wide/from16 v1, v18

    move-object/from16 v0, p2

    goto :goto_1

    :cond_1
    move/from16 v4, p1

    move-wide/from16 v18, v1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v6, v6, 0x1

    move-wide v3, v0

    move-wide/from16 v1, v18

    move-object/from16 v0, p2

    goto :goto_0

    :cond_2
    move-object/from16 v12, p0

    return-void
.end method
