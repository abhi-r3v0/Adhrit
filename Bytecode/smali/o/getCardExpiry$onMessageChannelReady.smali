.class public final Lo/getCardExpiry$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCardExpiry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/getCardExpiry;

.field private final onPostMessage:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lo/getCardExpiry;)V
    .locals 0

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 123
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lo/getCardExpiry$onMessageChannelReady;->onPostMessage:Landroid/os/Handler;

    .line 124
    iput-object p2, p0, Lo/getCardExpiry$onMessageChannelReady;->onMessageChannelReady:Lo/getCardExpiry;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;JJ)V
    .locals 9

    .line 137
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onMessageChannelReady:Lo/getCardExpiry;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onPostMessage:Landroid/os/Handler;

    new-instance v8, Lo/getCardNumber;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lo/getCardNumber;-><init>(Lo/getCardExpiry$onMessageChannelReady;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Lo/getCampaign;)V
    .locals 2

    .line 129
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onMessageChannelReady:Lo/getCardExpiry;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onPostMessage:Landroid/os/Handler;

    new-instance v1, Lo/getCardCurrency;

    invoke-direct {v1, p0, p1}, Lo/getCardCurrency;-><init>(Lo/getCardExpiry$onMessageChannelReady;Lo/getCampaign;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final extraCallback(IIIF)V
    .locals 8

    .line 165
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onMessageChannelReady:Lo/getCardExpiry;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onPostMessage:Landroid/os/Handler;

    new-instance v7, Lo/getInsightType;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lo/getInsightType;-><init>(Lo/getCardExpiry$onMessageChannelReady;IIIF)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final extraCallback(IJ)V
    .locals 2

    .line 154
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onMessageChannelReady:Lo/getCardExpiry;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onPostMessage:Landroid/os/Handler;

    new-instance v1, Lo/StatementResponse$CardDetails$CardExpiry;

    invoke-direct {v1, p0, p1, p2, p3}, Lo/StatementResponse$CardDetails$CardExpiry;-><init>(Lo/getCardExpiry$onMessageChannelReady;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic extraCallback(Landroid/view/Surface;)V
    .locals 1

    .line 176
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onMessageChannelReady:Lo/getCardExpiry;

    invoke-interface {v0, p1}, Lo/getCardExpiry;->onMessageChannelReady(Landroid/view/Surface;)V

    return-void
.end method

.method public final extraCallback(Lo/p$a;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onMessageChannelReady:Lo/getCardExpiry;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onPostMessage:Landroid/os/Handler;

    new-instance v1, Lo/getCardType;

    invoke-direct {v1, p0, p1}, Lo/getCardType;-><init>(Lo/getCardExpiry$onMessageChannelReady;Lo/p$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic onMessageChannelReady(IJ)V
    .locals 1

    .line 155
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onMessageChannelReady:Lo/getCardExpiry;

    invoke-interface {v0, p1, p2, p3}, Lo/getCardExpiry;->extraCallback(IJ)V

    return-void
.end method

.method final synthetic onMessageChannelReady(Lo/getCampaign;)V
    .locals 1

    .line 186
    invoke-virtual {p1}, Lo/getCampaign;->onPostMessage()V

    .line 187
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onMessageChannelReady:Lo/getCardExpiry;

    invoke-interface {v0, p1}, Lo/getCardExpiry;->ICustomTabsCallback(Lo/getCampaign;)V

    return-void
.end method

.method final synthetic onNavigationEvent(IIIF)V
    .locals 1

    .line 168
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onMessageChannelReady:Lo/getCardExpiry;

    invoke-interface {v0, p1, p2, p3, p4}, Lo/getCardExpiry;->onNavigationEvent(IIIF)V

    return-void
.end method

.method final synthetic onNavigationEvent(Lo/getCampaign;)V
    .locals 1

    .line 130
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onMessageChannelReady:Lo/getCardExpiry;

    invoke-interface {v0, p1}, Lo/getCardExpiry;->onNavigationEvent(Lo/getCampaign;)V

    return-void
.end method

.method public final onPostMessage(Landroid/view/Surface;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onMessageChannelReady:Lo/getCardExpiry;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onPostMessage:Landroid/os/Handler;

    new-instance v1, Lo/getKey;

    invoke-direct {v1, p0, p1}, Lo/getKey;-><init>(Lo/getCardExpiry$onMessageChannelReady;Landroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic onPostMessage(Ljava/lang/String;JJ)V
    .locals 6

    .line 140
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onMessageChannelReady:Lo/getCardExpiry;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lo/getCardExpiry;->onMessageChannelReady(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final onPostMessage(Lo/getCampaign;)V
    .locals 2

    .line 182
    invoke-virtual {p1}, Lo/getCampaign;->onPostMessage()V

    .line 183
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onMessageChannelReady:Lo/getCardExpiry;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onPostMessage:Landroid/os/Handler;

    new-instance v1, Lo/StatementResponse$Insights;

    invoke-direct {v1, p0, p1}, Lo/StatementResponse$Insights;-><init>(Lo/getCardExpiry$onMessageChannelReady;Lo/getCampaign;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic onPostMessage(Lo/p$a;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lo/getCardExpiry$onMessageChannelReady;->onMessageChannelReady:Lo/getCardExpiry;

    invoke-interface {v0, p1}, Lo/getCardExpiry;->extraCallback(Lo/p$a;)V

    return-void
.end method
