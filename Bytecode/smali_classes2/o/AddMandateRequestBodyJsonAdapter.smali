.class final Lo/AddMandateRequestBodyJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/AutoDebitAddMandateResponseJsonAdapter;

.field private final synthetic onNavigationEvent:Lo/GreetingCampaignCodeRequest;


# direct methods
.method constructor <init>(Lo/AutoDebitAddMandateResponseJsonAdapter;Lo/GreetingCampaignCodeRequest;)V
    .locals 0

    iput-object p1, p0, Lo/AddMandateRequestBodyJsonAdapter;->ICustomTabsCallback:Lo/AutoDebitAddMandateResponseJsonAdapter;

    iput-object p2, p0, Lo/AddMandateRequestBodyJsonAdapter;->onNavigationEvent:Lo/GreetingCampaignCodeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/AddMandateRequestBodyJsonAdapter;->ICustomTabsCallback:Lo/AutoDebitAddMandateResponseJsonAdapter;

    invoke-static {v0}, Lo/AutoDebitAddMandateResponseJsonAdapter;->onNavigationEvent(Lo/AutoDebitAddMandateResponseJsonAdapter;)Lo/Colors;

    move-result-object v0

    iget-object v1, p0, Lo/AddMandateRequestBodyJsonAdapter;->onNavigationEvent:Lo/GreetingCampaignCodeRequest;

    invoke-interface {v0, v1}, Lo/Colors;->onPostMessage(Lo/GreetingCampaignCodeRequest;)V

    iget-object v0, p0, Lo/AddMandateRequestBodyJsonAdapter;->ICustomTabsCallback:Lo/AutoDebitAddMandateResponseJsonAdapter;

    invoke-static {v0}, Lo/AutoDebitAddMandateResponseJsonAdapter;->onPostMessage(Lo/AutoDebitAddMandateResponseJsonAdapter;)Lo/applyTo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/AddMandateRequestBodyJsonAdapter;->ICustomTabsCallback:Lo/AutoDebitAddMandateResponseJsonAdapter;

    invoke-static {v0}, Lo/AutoDebitAddMandateResponseJsonAdapter;->onPostMessage(Lo/AutoDebitAddMandateResponseJsonAdapter;)Lo/applyTo;

    move-result-object v0

    invoke-virtual {v0}, Lo/applyTo;->extraCallback()V

    iget-object v0, p0, Lo/AddMandateRequestBodyJsonAdapter;->ICustomTabsCallback:Lo/AutoDebitAddMandateResponseJsonAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/AutoDebitAddMandateResponseJsonAdapter;->onPostMessage(Lo/AutoDebitAddMandateResponseJsonAdapter;Lo/applyTo;)Lo/applyTo;

    :cond_0
    return-void
.end method
