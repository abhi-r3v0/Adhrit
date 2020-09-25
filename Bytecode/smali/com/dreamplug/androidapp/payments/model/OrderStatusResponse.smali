.class public final Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lo/NativeApi;
    extraCallback = true
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0008\u0018\u00002\u00020\u0001Bi\u0008\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u0012\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000b\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u0013J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0012H\u00c6\u0003J\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0007H\u00c6\u0003J\t\u0010(\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000f\u0010*\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000bH\u00c6\u0003J\u000f\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000bH\u00c6\u0003J\u000b\u0010,\u001a\u0004\u0018\u00010\u0010H\u00c6\u0003J\u007f\u0010-\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00032\u000e\u0008\u0002\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b2\u000e\u0008\u0002\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000b2\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u00c6\u0001J\u0013\u0010.\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00101\u001a\u000202H\u00d6\u0001J\t\u00103\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0019R\u0017\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0019R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u00128\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0019R\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u0019\u00a8\u00064"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;",
        "",
        "id",
        "",
        "reference_id",
        "user_id",
        "amount",
        "",
        "status",
        "end_url",
        "items",
        "",
        "Lcom/dreamplug/androidapp/payments/model/OrderItem;",
        "payments",
        "Lcom/dreamplug/androidapp/payments/model/OrderPayment;",
        "attributes",
        "Lcom/dreamplug/androidapp/payments/model/OrderAttributes;",
        "refundAccount",
        "Lcom/dreamplug/androidapp/payments/model/RefundAccount;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/androidapp/payments/model/OrderAttributes;Lcom/dreamplug/androidapp/payments/model/RefundAccount;)V",
        "getAmount",
        "()D",
        "getAttributes",
        "()Lcom/dreamplug/androidapp/payments/model/OrderAttributes;",
        "getEnd_url",
        "()Ljava/lang/String;",
        "getId",
        "getItems",
        "()Ljava/util/List;",
        "getPayments",
        "getReference_id",
        "getRefundAccount",
        "()Lcom/dreamplug/androidapp/payments/model/RefundAccount;",
        "getStatus",
        "getUser_id",
        "component1",
        "component10",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation

.annotation runtime Lorg/parceler/Parcel;
.end annotation


# instance fields
.field private final amount:D

.field private final attributes:Lcom/dreamplug/androidapp/payments/model/OrderAttributes;

.field private final end_url:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/OrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private final payments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/OrderPayment;",
            ">;"
        }
    .end annotation
.end field

.field private final reference_id:Ljava/lang/String;

.field private final refundAccount:Lcom/dreamplug/androidapp/payments/model/RefundAccount;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "refund_account"
    .end annotation
.end field

.field private final status:Ljava/lang/String;

.field private final user_id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/androidapp/payments/model/OrderAttributes;Lcom/dreamplug/androidapp/payments/model/RefundAccount;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/OrderItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/OrderPayment;",
            ">;",
            "Lcom/dreamplug/androidapp/payments/model/OrderAttributes;",
            "Lcom/dreamplug/androidapp/payments/model/RefundAccount;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reference_id"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user_id"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    invoke-static {p6, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    invoke-static {p8, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payments"

    invoke-static {p9, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->reference_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->user_id:Ljava/lang/String;

    iput-wide p4, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->amount:D

    iput-object p6, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->status:Ljava/lang/String;

    iput-object p7, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->end_url:Ljava/lang/String;

    iput-object p8, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->items:Ljava/util/List;

    iput-object p9, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->payments:Ljava/util/List;

    iput-object p10, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->attributes:Lcom/dreamplug/androidapp/payments/model/OrderAttributes;

    iput-object p11, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->refundAccount:Lcom/dreamplug/androidapp/payments/model/RefundAccount;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/androidapp/payments/model/OrderAttributes;Lcom/dreamplug/androidapp/payments/model/RefundAccount;ILjava/lang/Object;)Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->reference_id:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->user_id:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-wide v5, v0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->amount:D

    goto :goto_3

    :cond_3
    move-wide/from16 v5, p4

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->status:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->end_url:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->items:Ljava/util/List;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget-object v10, v0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->payments:Ljava/util/List;

    goto :goto_7

    :cond_7
    move-object/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->attributes:Lcom/dreamplug/androidapp/payments/model/OrderAttributes;

    goto :goto_8

    :cond_8
    move-object/from16 v11, p10

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->refundAccount:Lcom/dreamplug/androidapp/payments/model/RefundAccount;

    goto :goto_9

    :cond_9
    move-object/from16 v1, p11

    :goto_9
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-wide/from16 p4, v5

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/androidapp/payments/model/OrderAttributes;Lcom/dreamplug/androidapp/payments/model/RefundAccount;)Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()Lcom/dreamplug/androidapp/payments/model/RefundAccount;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->refundAccount:Lcom/dreamplug/androidapp/payments/model/RefundAccount;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->reference_id:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()D
    .locals 2

    iget-wide v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->amount:D

    return-wide v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->end_url:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/OrderItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public final component8()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/OrderPayment;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->payments:Ljava/util/List;

    return-object v0
.end method

.method public final component9()Lcom/dreamplug/androidapp/payments/model/OrderAttributes;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->attributes:Lcom/dreamplug/androidapp/payments/model/OrderAttributes;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/androidapp/payments/model/OrderAttributes;Lcom/dreamplug/androidapp/payments/model/RefundAccount;)Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "D",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/OrderItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/OrderPayment;",
            ">;",
            "Lcom/dreamplug/androidapp/payments/model/OrderAttributes;",
            "Lcom/dreamplug/androidapp/payments/model/RefundAccount;",
            ")",
            "Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;"
        }
    .end annotation

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reference_id"

    move-object v3, p2

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user_id"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "status"

    move-object/from16 v7, p6

    invoke-static {v7, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "items"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "payments"

    move-object/from16 v10, p9

    invoke-static {v10, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    move-object v1, v0

    move-wide/from16 v5, p4

    move-object/from16 v8, p7

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v1 .. v12}, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/dreamplug/androidapp/payments/model/OrderAttributes;Lcom/dreamplug/androidapp/payments/model/RefundAccount;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->reference_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->reference_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->user_id:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->user_id:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->amount:D

    iget-wide v2, p1, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->amount:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->status:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->status:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->end_url:Ljava/lang/String;

    iget-object v1, p1, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->end_url:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->items:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->items:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->payments:Ljava/util/List;

    iget-object v1, p1, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->payments:Ljava/util/List;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->attributes:Lcom/dreamplug/androidapp/payments/model/OrderAttributes;

    iget-object v1, p1, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->attributes:Lcom/dreamplug/androidapp/payments/model/OrderAttributes;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->refundAccount:Lcom/dreamplug/androidapp/payments/model/RefundAccount;

    iget-object p1, p1, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->refundAccount:Lcom/dreamplug/androidapp/payments/model/RefundAccount;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAmount()D
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->amount:D

    return-wide v0
.end method

.method public final getAttributes()Lcom/dreamplug/androidapp/payments/model/OrderAttributes;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->attributes:Lcom/dreamplug/androidapp/payments/model/OrderAttributes;

    return-object v0
.end method

.method public final getEnd_url()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->end_url:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/OrderItem;",
            ">;"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getPayments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/dreamplug/androidapp/payments/model/OrderPayment;",
            ">;"
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->payments:Ljava/util/List;

    return-object v0
.end method

.method public final getReference_id()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->reference_id:Ljava/lang/String;

    return-object v0
.end method

.method public final getRefundAccount()Lcom/dreamplug/androidapp/payments/model/RefundAccount;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->refundAccount:Lcom/dreamplug/androidapp/payments/model/RefundAccount;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public final getUser_id()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->user_id:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->reference_id:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->user_id:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v2, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->amount:D

    .line 1025
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->status:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->end_url:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->items:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->payments:Ljava/util/List;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_6
    const/4 v2, 0x0

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->attributes:Lcom/dreamplug/androidapp/payments/model/OrderAttributes;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_7

    :cond_7
    const/4 v2, 0x0

    :goto_7
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->refundAccount:Lcom/dreamplug/androidapp/payments/model/RefundAccount;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OrderStatusResponse(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reference_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->reference_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", user_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->user_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", amount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->amount:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", end_url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->end_url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", payments="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->payments:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", attributes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->attributes:Lcom/dreamplug/androidapp/payments/model/OrderAttributes;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", refundAccount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/payments/model/OrderStatusResponse;->refundAccount:Lcom/dreamplug/androidapp/payments/model/RefundAccount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
