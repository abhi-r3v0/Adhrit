.class final Lo/getCardCurrency;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final extraCallback:Lo/getCardExpiry$onMessageChannelReady;

.field private final onPostMessage:Lo/getCampaign;


# direct methods
.method public constructor <init>(Lo/getCardExpiry$onMessageChannelReady;Lo/getCampaign;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/getCardCurrency;->extraCallback:Lo/getCardExpiry$onMessageChannelReady;

    iput-object p2, p0, Lo/getCardCurrency;->onPostMessage:Lo/getCampaign;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lo/getCardCurrency;->extraCallback:Lo/getCardExpiry$onMessageChannelReady;

    iget-object v1, p0, Lo/getCardCurrency;->onPostMessage:Lo/getCampaign;

    .line 1000
    invoke-virtual {v0, v1}, Lo/getCardExpiry$onMessageChannelReady;->onNavigationEvent(Lo/getCampaign;)V

    return-void
.end method
