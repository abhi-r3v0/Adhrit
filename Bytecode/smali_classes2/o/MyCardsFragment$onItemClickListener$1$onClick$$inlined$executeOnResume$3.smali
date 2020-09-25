.class public final Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$3;
.super Ljava/lang/Object;

# interfaces
.implements Lo/MyCardsFragment$onViewCreated$$inlined$apply$lambda$1$1;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/content/Context;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Lo/getTotalAmountDue$onNavigationEvent;",
            ">;"
        }
    .end annotation

    new-instance v0, Lo/SuggestedAmount;

    invoke-direct {v0}, Lo/SuggestedAmount;-><init>()V

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    invoke-static {p1}, Lo/ControlStatementRepo$TransactionItem;->onTransact(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;

    invoke-direct {v1, p0, p1, v0}, Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$5;-><init>(Lo/MyCardsFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$3;Landroid/content/Context;Lo/SuggestedAmount;)V

    invoke-static {v1}, Lo/AmexLoginStatus;->onNavigationEvent(Ljava/lang/Runnable;)Lo/PaymentModeListResponseJsonAdapter;

    :cond_0
    return-object v0
.end method

.method public final onNavigationEvent(Ljava/lang/String;Landroid/content/pm/PackageInfo;)Lo/PaymentModeListResponseJsonAdapter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ")",
            "Lo/PaymentModeListResponseJsonAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lo/InvalidPaymentAmount$$Parcelable;->extraCallback(Ljava/lang/Object;)Lo/PayNowBottomSheetResponseJsonAdapter;

    move-result-object p1

    return-object p1
.end method
