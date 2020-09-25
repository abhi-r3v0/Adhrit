.class public final Lo/ExtraDetails;
.super Lo/LoanStatusResponse;


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lo/LoanStatusResponse;-><init>([B)V

    return-void
.end method


# virtual methods
.method final onNavigationEvent([BI)Lo/LoanStatusResponse$AadhaarFillDetails;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    new-instance v0, Lo/ExtraDetailsJsonAdapter;

    invoke-direct {v0, p1, p2}, Lo/ExtraDetailsJsonAdapter;-><init>([BI)V

    return-object v0
.end method

.method public final bridge synthetic onPostMessage([B[B)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lo/LoanStatusResponse;->onPostMessage([B[B)[B

    move-result-object p1

    return-object p1
.end method
