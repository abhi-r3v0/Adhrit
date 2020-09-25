.class public final Lo/w$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/w;

.field private final onNavigationEvent:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lo/w;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 100
    invoke-static {p1}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lo/w$onMessageChannelReady;->onNavigationEvent:Landroid/os/Handler;

    .line 101
    iput-object p2, p0, Lo/w$onMessageChannelReady;->onMessageChannelReady:Lo/w;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 2

    .line 164
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onMessageChannelReady:Lo/w;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/z;

    invoke-direct {v1, p0, p1}, Lo/z;-><init>(Lo/w$onMessageChannelReady;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;JJ)V
    .locals 9

    .line 118
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onMessageChannelReady:Lo/w;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onNavigationEvent:Landroid/os/Handler;

    new-instance v8, Lo/x$3;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lo/x$3;-><init>(Lo/w$onMessageChannelReady;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic extraCallback(I)V
    .locals 1

    .line 165
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onMessageChannelReady:Lo/w;

    invoke-interface {v0, p1}, Lo/w;->ICustomTabsCallback(I)V

    return-void
.end method

.method public final extraCallback(IJJ)V
    .locals 9

    .line 140
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onMessageChannelReady:Lo/w;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onNavigationEvent:Landroid/os/Handler;

    new-instance v8, Lo/fetchMsa;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lo/fetchMsa;-><init>(Lo/w$onMessageChannelReady;IJJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method final synthetic extraCallback(Lo/getCampaign;)V
    .locals 1

    .line 154
    invoke-virtual {p1}, Lo/getCampaign;->onPostMessage()V

    .line 155
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onMessageChannelReady:Lo/w;

    invoke-interface {v0, p1}, Lo/w;->onMessageChannelReady(Lo/getCampaign;)V

    return-void
.end method

.method final synthetic onMessageChannelReady(IJJ)V
    .locals 6

    .line 142
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onMessageChannelReady:Lo/w;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lo/w;->onMessageChannelReady(IJJ)V

    return-void
.end method

.method final synthetic onMessageChannelReady(Ljava/lang/String;JJ)V
    .locals 6

    .line 121
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onMessageChannelReady:Lo/w;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lo/w;->extraCallback(Ljava/lang/String;JJ)V

    return-void
.end method

.method final synthetic onMessageChannelReady(Lo/getCampaign;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onMessageChannelReady:Lo/w;

    invoke-interface {v0, p1}, Lo/w;->onPostMessage(Lo/getCampaign;)V

    return-void
.end method

.method final synthetic onMessageChannelReady(Lo/p$a;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onMessageChannelReady:Lo/w;

    invoke-interface {v0, p1}, Lo/w;->onMessageChannelReady(Lo/p$a;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/getCampaign;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onMessageChannelReady:Lo/w;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/v$a;

    invoke-direct {v1, p0, p1}, Lo/v$a;-><init>(Lo/w$onMessageChannelReady;Lo/getCampaign;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/getCampaign;)V
    .locals 2

    .line 150
    invoke-virtual {p1}, Lo/getCampaign;->onPostMessage()V

    .line 151
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onMessageChannelReady:Lo/w;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/isHuawei;

    invoke-direct {v1, p0, p1}, Lo/isHuawei;-><init>(Lo/w$onMessageChannelReady;Lo/getCampaign;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/p$a;)V
    .locals 2

    .line 130
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onMessageChannelReady:Lo/w;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lo/w$onMessageChannelReady;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/x;

    invoke-direct {v1, p0, p1}, Lo/x;-><init>(Lo/w$onMessageChannelReady;Lo/p$a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
