.class final Lo/LoanStatusResponse$RequiredData;
.super Ljava/lang/Object;


# instance fields
.field private final extraCallback:[B

.field private final onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lo/LoanStatusResponse$RequiredData;->extraCallback:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback([B)Lcom/google/android/gms/internal/ads/zzbav;

    move-result-object p1

    iput-object p1, p0, Lo/LoanStatusResponse$RequiredData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    return-void
.end method

.method synthetic constructor <init>(ILo/LoanStatusResponse$KycData;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/LoanStatusResponse$RequiredData;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/LoanStatusResponse$Input;
    .locals 2

    iget-object v0, p0, Lo/LoanStatusResponse$RequiredData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbav;->extraCallback()V

    new-instance v0, Lo/LoanStatusResponse$PollingData;

    iget-object v1, p0, Lo/LoanStatusResponse$RequiredData;->extraCallback:[B

    invoke-direct {v0, v1}, Lo/LoanStatusResponse$PollingData;-><init>([B)V

    return-object v0
.end method

.method public final onPostMessage()Lcom/google/android/gms/internal/ads/zzbav;
    .locals 1

    iget-object v0, p0, Lo/LoanStatusResponse$RequiredData;->onNavigationEvent:Lcom/google/android/gms/internal/ads/zzbav;

    return-object v0
.end method
