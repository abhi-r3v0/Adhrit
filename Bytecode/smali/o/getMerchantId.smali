.class public abstract Lo/getMerchantId;
.super Lo/component3;
.source ""


# instance fields
.field public final ICustomTabsCallback$Stub:J


# direct methods
.method public constructor <init>(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;Lo/p$a;ILjava/lang/Object;JJJ)V
    .locals 11

    const/4 v3, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move-object/from16 v6, p5

    move-wide/from16 v7, p6

    move-wide/from16 v9, p8

    .line 51
    invoke-direct/range {v0 .. v10}, Lo/component3;-><init>(Lo/ResultJsonAdapter;Lo/PaymentRequestJsonAdapter;ILo/p$a;ILjava/lang/Object;JJ)V

    .line 53
    invoke-static {p3}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-wide/from16 v1, p10

    .line 54
    iput-wide v1, v0, Lo/getMerchantId;->ICustomTabsCallback$Stub:J

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()J
    .locals 5

    .line 59
    iget-wide v0, p0, Lo/getMerchantId;->ICustomTabsCallback$Stub:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    return-wide v0

    :cond_0
    return-wide v2
.end method
