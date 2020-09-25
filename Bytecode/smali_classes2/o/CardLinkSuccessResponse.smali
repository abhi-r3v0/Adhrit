.class final Lo/CardLinkSuccessResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/BankOfferDetailsResponse;


# direct methods
.method constructor <init>(Lo/RewardData;Lo/BankOfferDetailsResponse;)V
    .locals 0

    iput-object p2, p0, Lo/CardLinkSuccessResponse;->ICustomTabsCallback:Lo/BankOfferDetailsResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lo/CardLinkSuccessResponse;->ICustomTabsCallback:Lo/BankOfferDetailsResponse;

    invoke-interface {v0}, Lo/BankOfferDetailsResponse;->asInterface()V

    return-void
.end method
