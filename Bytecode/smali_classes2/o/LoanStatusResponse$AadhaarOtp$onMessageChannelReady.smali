.class final Lo/LoanStatusResponse$AadhaarOtp$onMessageChannelReady;
.super Lo/LoanStatusResponse$BankDetails;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/LoanStatusResponse$AadhaarOtp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/LoanStatusResponse$BankDetails;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method
