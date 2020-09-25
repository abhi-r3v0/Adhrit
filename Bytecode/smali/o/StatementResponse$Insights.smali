.class final Lo/StatementResponse$Insights;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final onNavigationEvent:Lo/getCampaign;

.field private final onPostMessage:Lo/getCardExpiry$onMessageChannelReady;


# direct methods
.method public constructor <init>(Lo/getCardExpiry$onMessageChannelReady;Lo/getCampaign;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/StatementResponse$Insights;->onPostMessage:Lo/getCardExpiry$onMessageChannelReady;

    iput-object p2, p0, Lo/StatementResponse$Insights;->onNavigationEvent:Lo/getCampaign;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/StatementResponse$Insights;->onPostMessage:Lo/getCardExpiry$onMessageChannelReady;

    iget-object v1, p0, Lo/StatementResponse$Insights;->onNavigationEvent:Lo/getCampaign;

    .line 1000
    invoke-virtual {v0, v1}, Lo/getCardExpiry$onMessageChannelReady;->onMessageChannelReady(Lo/getCampaign;)V

    return-void
.end method
