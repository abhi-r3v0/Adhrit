.class final Lo/CardLinkingDataResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Z

.field private extraCallback:Lo/BankOfferRewardResponse;


# direct methods
.method constructor <init>(Lo/BankOfferRewardResponse;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/CardLinkingDataResponse;->ICustomTabsCallback:Z

    iput-object p1, p0, Lo/CardLinkingDataResponse;->extraCallback:Lo/BankOfferRewardResponse;

    return-void
.end method

.method private final extraCallback()V
    .locals 3

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/CardLinkingDataResponse;->ICustomTabsCallback:Z

    return-void
.end method

.method public final onPostMessage()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/CardLinkingDataResponse;->ICustomTabsCallback:Z

    invoke-direct {p0}, Lo/CardLinkingDataResponse;->extraCallback()V

    return-void
.end method

.method public final run()V
    .locals 1

    iget-boolean v0, p0, Lo/CardLinkingDataResponse;->ICustomTabsCallback:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CardLinkingDataResponse;->extraCallback:Lo/BankOfferRewardResponse;

    invoke-virtual {v0}, Lo/BankOfferRewardResponse;->newSession()V

    invoke-direct {p0}, Lo/CardLinkingDataResponse;->extraCallback()V

    :cond_0
    return-void
.end method
