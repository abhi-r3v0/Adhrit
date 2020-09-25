.class final Lo/SmartStatementResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setLastItem;

.field private final synthetic onMessageChannelReady:Lo/SmartStatementResponseJsonAdapter;

.field private final synthetic onNavigationEvent:Lo/Info;

.field private final synthetic onPostMessage:Lo/CardFooter;


# direct methods
.method constructor <init>(Lo/SmartStatementResponseJsonAdapter;Lo/Info;Lo/setLastItem;Lo/CardFooter;)V
    .locals 0

    iput-object p1, p0, Lo/SmartStatementResponse;->onMessageChannelReady:Lo/SmartStatementResponseJsonAdapter;

    iput-object p2, p0, Lo/SmartStatementResponse;->onNavigationEvent:Lo/Info;

    iput-object p3, p0, Lo/SmartStatementResponse;->ICustomTabsCallback:Lo/setLastItem;

    iput-object p4, p0, Lo/SmartStatementResponse;->onPostMessage:Lo/CardFooter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lo/SmartStatementResponse;->onNavigationEvent:Lo/Info;

    iget-object v1, p0, Lo/SmartStatementResponse;->onMessageChannelReady:Lo/SmartStatementResponseJsonAdapter;

    invoke-static {v1}, Lo/SmartStatementResponseJsonAdapter;->ICustomTabsCallback(Lo/SmartStatementResponseJsonAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v1

    iget-object v2, p0, Lo/SmartStatementResponse;->ICustomTabsCallback:Lo/setLastItem;

    const/4 v3, 0x0

    iget-object v4, p0, Lo/SmartStatementResponse;->onPostMessage:Lo/CardFooter;

    iget-object v5, p0, Lo/SmartStatementResponse;->onMessageChannelReady:Lo/SmartStatementResponseJsonAdapter;

    invoke-static {v5}, Lo/SmartStatementResponseJsonAdapter;->onNavigationEvent(Lo/SmartStatementResponseJsonAdapter;)Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lo/Info;->onPostMessage(Lo/getEventName;Lo/setLastItem;Ljava/lang/String;Lo/Cta$Flow;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Fail to initialize adapter "

    iget-object v2, p0, Lo/SmartStatementResponse;->onMessageChannelReady:Lo/SmartStatementResponseJsonAdapter;

    iget-object v2, v2, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    :goto_0
    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lo/SmartStatementResponse;->onMessageChannelReady:Lo/SmartStatementResponseJsonAdapter;

    iget-object v1, v0, Lo/SmartStatementResponseJsonAdapter;->onPostMessage:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/SmartStatementResponseJsonAdapter;->onPostMessage(Ljava/lang/String;I)V

    return-void
.end method
