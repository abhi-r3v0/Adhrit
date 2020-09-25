.class public final Lo/AmountScreenResponse$CardData;
.super Lo/getTags;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lo/AmountScreenResponse$CardData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback:[B

.field private final extraCallback:I

.field private onMessageChannelReady:Lo/LoanStatusResponse$CaptchaInput;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/AmountScreenResponse;

    invoke-direct {v0}, Lo/AmountScreenResponse;-><init>()V

    sput-object v0, Lo/AmountScreenResponse$CardData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Lo/getTags;-><init>()V

    iput p1, p0, Lo/AmountScreenResponse$CardData;->extraCallback:I

    const/4 p1, 0x0

    iput-object p1, p0, Lo/AmountScreenResponse$CardData;->onMessageChannelReady:Lo/LoanStatusResponse$CaptchaInput;

    iput-object p2, p0, Lo/AmountScreenResponse$CardData;->ICustomTabsCallback:[B

    invoke-direct {p0}, Lo/AmountScreenResponse$CardData;->onNavigationEvent()V

    return-void
.end method

.method private final onNavigationEvent()V
    .locals 2

    iget-object v0, p0, Lo/AmountScreenResponse$CardData;->onMessageChannelReady:Lo/LoanStatusResponse$CaptchaInput;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/AmountScreenResponse$CardData;->ICustomTabsCallback:[B

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/AmountScreenResponse$CardData;->onMessageChannelReady:Lo/LoanStatusResponse$CaptchaInput;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/AmountScreenResponse$CardData;->ICustomTabsCallback:[B

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lo/AmountScreenResponse$CardData;->onMessageChannelReady:Lo/LoanStatusResponse$CaptchaInput;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/AmountScreenResponse$CardData;->ICustomTabsCallback:[B

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    iget-object v0, p0, Lo/AmountScreenResponse$CardData;->onMessageChannelReady:Lo/LoanStatusResponse$CaptchaInput;

    if-nez v0, :cond_4

    iget-object v0, p0, Lo/AmountScreenResponse$CardData;->ICustomTabsCallback:[B

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid internal representation - empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Impossible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/LoanStatusResponse$CaptchaInput;
    .locals 2

    iget-object v0, p0, Lo/AmountScreenResponse$CardData;->onMessageChannelReady:Lo/LoanStatusResponse$CaptchaInput;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lo/AmountScreenResponse$CardData;->ICustomTabsCallback:[B

    new-instance v1, Lo/LoanStatusResponse$CaptchaInput;

    invoke-direct {v1}, Lo/LoanStatusResponse$CaptchaInput;-><init>()V

    invoke-static {v1, v0}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;[B)Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;

    move-result-object v0

    check-cast v0, Lo/LoanStatusResponse$CaptchaInput;

    iput-object v0, p0, Lo/AmountScreenResponse$CardData;->onMessageChannelReady:Lo/LoanStatusResponse$CaptchaInput;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/AmountScreenResponse$CardData;->ICustomTabsCallback:[B
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbfh; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_1
    invoke-direct {p0}, Lo/AmountScreenResponse$CardData;->onNavigationEvent()V

    iget-object v0, p0, Lo/AmountScreenResponse$CardData;->onMessageChannelReady:Lo/LoanStatusResponse$CaptchaInput;

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;)I

    move-result p2

    iget v0, p0, Lo/AmountScreenResponse$CardData;->extraCallback:I

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lo/extraCallback;->onPostMessage(Landroid/os/Parcel;II)V

    iget-object v0, p0, Lo/AmountScreenResponse$CardData;->ICustomTabsCallback:[B

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/AmountScreenResponse$CardData;->onMessageChannelReady:Lo/LoanStatusResponse$CaptchaInput;

    invoke-static {v0}, Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;->onNavigationEvent(Lo/ClaimedRewardDetailsFragment$realDismiss$$inlined$executeOnResume$1;)[B

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v2, v0, v1}, Lo/extraCallback;->ICustomTabsCallback(Landroid/os/Parcel;I[BZ)V

    invoke-static {p1, p2}, Lo/extraCallback;->extraCallback(Landroid/os/Parcel;I)V

    return-void
.end method
