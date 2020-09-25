.class public final Lo/LoanStatusResponse_SummaryJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method static extraCallback(Lcom/google/android/gms/internal/ads/zzbav;Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/ads/zzbav;",
            "Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter<",
            "TK;TV;>;TK;TV;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p1, Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;->onMessageChannelReady:Lo/getStatus_message;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p2}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onNavigationEvent(Lcom/google/android/gms/internal/ads/zzbav;Lo/getStatus_message;ILjava/lang/Object;)V

    iget-object p1, p1, Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;->onNavigationEvent:Lo/getStatus_message;

    const/4 p2, 0x2

    invoke-static {p0, p1, p2, p3}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onNavigationEvent(Lcom/google/android/gms/internal/ads/zzbav;Lo/getStatus_message;ILjava/lang/Object;)V

    return-void
.end method

.method static onNavigationEvent(Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    iget-object v0, p0, Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;->onMessageChannelReady:Lo/getStatus_message;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onNavigationEvent(Lo/getStatus_message;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lo/LoanStatusResponse_SmsPermissionConfirmationJsonAdapter;->onNavigationEvent:Lo/getStatus_message;

    const/4 v0, 0x2

    invoke-static {p0, v0, p2}, Lo/LoanStatusResponse_AccountDetailsJsonAdapter;->onNavigationEvent(Lo/getStatus_message;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method
