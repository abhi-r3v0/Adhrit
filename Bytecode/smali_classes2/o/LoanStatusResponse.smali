.class abstract Lo/LoanStatusResponse;
.super Ljava/lang/Object;

# interfaces
.implements Lo/getNo_of_breaks_in_amount;


# instance fields
.field private final ICustomTabsCallback:Lo/LoanStatusResponse$AadhaarFillDetails;

.field private final extraCallback:[B

.field private final onNavigationEvent:Lo/LoanStatusResponse$AadhaarFillDetails;


# direct methods
.method constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lo/LoanStatusResponse;->extraCallback:[B

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lo/LoanStatusResponse;->onNavigationEvent([BI)Lo/LoanStatusResponse$AadhaarFillDetails;

    move-result-object v0

    iput-object v0, p0, Lo/LoanStatusResponse;->onNavigationEvent:Lo/LoanStatusResponse$AadhaarFillDetails;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/LoanStatusResponse;->onNavigationEvent([BI)Lo/LoanStatusResponse$AadhaarFillDetails;

    move-result-object p1

    iput-object p1, p0, Lo/LoanStatusResponse;->ICustomTabsCallback:Lo/LoanStatusResponse$AadhaarFillDetails;

    return-void
.end method


# virtual methods
.method abstract onNavigationEvent([BI)Lo/LoanStatusResponse$AadhaarFillDetails;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public onPostMessage([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    array-length v0, p1

    iget-object v1, p0, Lo/LoanStatusResponse;->onNavigationEvent:Lo/LoanStatusResponse$AadhaarFillDetails;

    invoke-virtual {v1}, Lo/LoanStatusResponse$AadhaarFillDetails;->onMessageChannelReady()I

    const v1, 0x7fffffe3

    if-gt v0, v1, :cond_4

    array-length v0, p1

    iget-object v1, p0, Lo/LoanStatusResponse;->onNavigationEvent:Lo/LoanStatusResponse$AadhaarFillDetails;

    invoke-virtual {v1}, Lo/LoanStatusResponse$AadhaarFillDetails;->onMessageChannelReady()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, p1

    iget-object v3, p0, Lo/LoanStatusResponse;->onNavigationEvent:Lo/LoanStatusResponse$AadhaarFillDetails;

    invoke-virtual {v3}, Lo/LoanStatusResponse$AadhaarFillDetails;->onMessageChannelReady()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x10

    if-lt v1, v2, :cond_3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lo/LoanStatusResponse;->onNavigationEvent:Lo/LoanStatusResponse$AadhaarFillDetails;

    invoke-virtual {v2, v0, p1}, Lo/LoanStatusResponse$AadhaarFillDetails;->onMessageChannelReady(Ljava/nio/ByteBuffer;[B)V

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lo/LoanStatusResponse;->onNavigationEvent:Lo/LoanStatusResponse$AadhaarFillDetails;

    invoke-virtual {p1}, Lo/LoanStatusResponse$AadhaarFillDetails;->onMessageChannelReady()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-array p2, v1, [B

    :cond_0
    iget-object v2, p0, Lo/LoanStatusResponse;->ICustomTabsCallback:Lo/LoanStatusResponse$AadhaarFillDetails;

    invoke-virtual {v2, p1, v1}, Lo/LoanStatusResponse$AadhaarFillDetails;->onMessageChannelReady([BI)Ljava/nio/ByteBuffer;

    move-result-object p1

    const/16 v1, 0x20

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    array-length p1, p2

    rem-int/lit8 p1, p1, 0x10

    if-nez p1, :cond_1

    array-length p1, p2

    goto :goto_0

    :cond_1
    array-length p1, p2

    add-int/lit8 p1, p1, 0x10

    array-length v2, p2

    rem-int/lit8 v2, v2, 0x10

    sub-int/2addr p1, v2

    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    rem-int/lit8 v3, v2, 0x10

    if-nez v3, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v2, 0x10

    sub-int/2addr v4, v3

    :goto_1
    add-int/2addr v4, p1

    add-int/lit8 v3, v4, 0x10

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    array-length p1, p2

    int-to-long p1, p1

    invoke-virtual {v3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    int-to-long p1, v2

    invoke-virtual {v3, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    invoke-static {v1, p1}, Lo/LoanOrderResponseJsonAdapter;->extraCallback([B[B)[B

    move-result-object p1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p2

    add-int/lit8 p2, p2, 0x10

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Given ByteBuffer output is too small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "plaintext too long"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
