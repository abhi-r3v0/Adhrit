.class public final Lo/LendingTriggerResponseJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getNo_of_breaks_in_amount;


# instance fields
.field private final extraCallback:I

.field private final onNavigationEvent:Lo/getBottom_cta;

.field private final onPostMessage:Lo/LoanOrderResponse;


# direct methods
.method public constructor <init>(Lo/LoanOrderResponse;Lo/getBottom_cta;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/LendingTriggerResponseJsonAdapter;->onPostMessage:Lo/LoanOrderResponse;

    iput-object p2, p0, Lo/LendingTriggerResponseJsonAdapter;->onNavigationEvent:Lo/getBottom_cta;

    iput p3, p0, Lo/LendingTriggerResponseJsonAdapter;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final onPostMessage([B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    iget-object v0, p0, Lo/LendingTriggerResponseJsonAdapter;->onPostMessage:Lo/LoanOrderResponse;

    invoke-interface {v0, p1}, Lo/LoanOrderResponse;->onMessageChannelReady([B)[B

    move-result-object p1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-array p2, v0, [B

    :cond_0
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v3, 0x8

    array-length v5, p2

    int-to-long v5, v5

    mul-long v5, v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lo/LendingTriggerResponseJsonAdapter;->onNavigationEvent:Lo/getBottom_cta;

    const/4 v3, 0x3

    new-array v3, v3, [[B

    aput-object p2, v3, v0

    const/4 p2, 0x1

    aput-object p1, v3, p2

    const/4 v4, 0x2

    aput-object v1, v3, v4

    invoke-static {v3}, Lo/ExtraDetails$ExtraCta;->onNavigationEvent([[B)[B

    move-result-object v1

    invoke-interface {v2, v1}, Lo/getBottom_cta;->onPostMessage([B)[B

    move-result-object v1

    new-array v2, v4, [[B

    aput-object p1, v2, v0

    aput-object v1, v2, p2

    invoke-static {v2}, Lo/ExtraDetails$ExtraCta;->onNavigationEvent([[B)[B

    move-result-object p1

    return-object p1
.end method
