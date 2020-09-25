.class public final Lo/CashBackDisabled$$Parcelable;
.super Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1<",
        "Lo/initiateUPI;",
        ">;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/getCurrencyType;

.field private final onPostMessage:Lo/SuggestedAmount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/SuggestedAmount<",
            "Lo/initiateUPI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/util/Map;Lo/SuggestedAmount;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lo/SuggestedAmount<",
            "Lo/initiateUPI;",
            ">;)V"
        }
    .end annotation

    new-instance p2, Lo/CategoryAggSpend;

    invoke-direct {p2, p3}, Lo/CategoryAggSpend;-><init>(Lo/SuggestedAmount;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lo/FabrikWebViewFragment$MyJavascriptInterface$showCenterLoader$1$$special$$inlined$executeOnResume$1;-><init>(ILjava/lang/String;Lo/RawBankAccount;)V

    const/4 p2, 0x0

    iput-object p2, p0, Lo/CashBackDisabled$$Parcelable;->onMessageChannelReady:Ljava/util/Map;

    iput-object p3, p0, Lo/CashBackDisabled$$Parcelable;->onPostMessage:Lo/SuggestedAmount;

    new-instance p3, Lo/getCurrencyType;

    invoke-direct {p3}, Lo/getCurrencyType;-><init>()V

    iput-object p3, p0, Lo/CashBackDisabled$$Parcelable;->onNavigationEvent:Lo/getCurrencyType;

    const-string v0, "GET"

    invoke-virtual {p3, p1, v0, p2, p2}, Lo/getCurrencyType;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lo/SuggestedAmount;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/SuggestedAmount<",
            "Lo/initiateUPI;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lo/CashBackDisabled$$Parcelable;-><init>(Ljava/lang/String;Ljava/util/Map;Lo/SuggestedAmount;)V

    return-void
.end method


# virtual methods
.method protected final extraCallback(Lo/initiateUPI;)Lo/BankAccountSyncRequestJsonAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/initiateUPI;",
            ")",
            "Lo/BankAccountSyncRequestJsonAdapter<",
            "Lo/initiateUPI;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lo/Template$$Parcelable;->onPostMessage(Lo/initiateUPI;)Lo/GameWebViewFragment$MyJavascriptInterface;

    move-result-object v0

    invoke-static {p1, v0}, Lo/BankAccountSyncRequestJsonAdapter;->onPostMessage(Ljava/lang/Object;Lo/GameWebViewFragment$MyJavascriptInterface;)Lo/BankAccountSyncRequestJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method protected final synthetic onMessageChannelReady(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lo/initiateUPI;

    iget-object v0, p0, Lo/CashBackDisabled$$Parcelable;->onNavigationEvent:Lo/getCurrencyType;

    iget-object v1, p1, Lo/initiateUPI;->onNavigationEvent:Ljava/util/Map;

    iget v2, p1, Lo/initiateUPI;->extraCallback:I

    invoke-virtual {v0, v1, v2}, Lo/getCurrencyType;->extraCallback(Ljava/util/Map;I)V

    iget-object v0, p0, Lo/CashBackDisabled$$Parcelable;->onNavigationEvent:Lo/getCurrencyType;

    iget-object v1, p1, Lo/initiateUPI;->ICustomTabsCallback:[B

    invoke-static {}, Lo/getCurrencyType;->onMessageChannelReady()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lo/getCurrencyType;->onNavigationEvent([B)V

    :cond_0
    iget-object v0, p0, Lo/CashBackDisabled$$Parcelable;->onPostMessage:Lo/SuggestedAmount;

    invoke-virtual {v0, p1}, Lo/SuggestedAmount;->extraCallback(Ljava/lang/Object;)V

    return-void
.end method
