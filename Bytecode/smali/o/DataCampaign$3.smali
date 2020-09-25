.class final Lo/DataCampaign$3;
.super Lo/Worker;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/DataCampaign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/Worker<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/lang/String;

.field private synthetic extraCallback:Lo/DataCampaign;

.field private synthetic onPostMessage:Z


# direct methods
.method constructor <init>(Lo/DataCampaign;Ljava/lang/String;Z)V
    .locals 0

    .line 557
    iput-object p1, p0, Lo/DataCampaign$3;->extraCallback:Lo/DataCampaign;

    iput-object p2, p0, Lo/DataCampaign$3;->ICustomTabsCallback:Ljava/lang/String;

    iput-boolean p3, p0, Lo/DataCampaign$3;->onPostMessage:Z

    invoke-direct {p0}, Lo/Worker;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/WorkDatabase;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WorkDatabase<",
            "TT;>;)V"
        }
    .end annotation

    .line 576
    iget-object v0, p0, Lo/DataCampaign$3;->extraCallback:Lo/DataCampaign;

    iget-object v1, p0, Lo/DataCampaign$3;->ICustomTabsCallback:Ljava/lang/String;

    invoke-interface {p1}, Lo/WorkDatabase;->onTransact()Ljava/lang/Throwable;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lo/DataCampaign;->onPostMessage(Lo/DataCampaign;Ljava/lang/String;Lo/WorkDatabase;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/WorkDatabase;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WorkDatabase<",
            "TT;>;)V"
        }
    .end annotation

    .line 562
    invoke-interface {p1}, Lo/WorkDatabase;->extraCallback()Z

    move-result v5

    .line 564
    invoke-interface {p1}, Lo/WorkDatabase;->asBinder()F

    move-result v4

    .line 565
    invoke-interface {p1}, Lo/WorkDatabase;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 567
    iget-object v0, p0, Lo/DataCampaign$3;->extraCallback:Lo/DataCampaign;

    iget-object v1, p0, Lo/DataCampaign$3;->ICustomTabsCallback:Ljava/lang/String;

    iget-boolean v6, p0, Lo/DataCampaign$3;->onPostMessage:Z

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v0 .. v7}, Lo/DataCampaign;->onPostMessage(Lo/DataCampaign;Ljava/lang/String;Lo/WorkDatabase;Ljava/lang/Object;FZZZ)V

    return-void

    :cond_0
    if-eqz v5, :cond_1

    .line 570
    iget-object v0, p0, Lo/DataCampaign$3;->extraCallback:Lo/DataCampaign;

    iget-object v1, p0, Lo/DataCampaign$3;->ICustomTabsCallback:Ljava/lang/String;

    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, v1, p1, v2}, Lo/DataCampaign;->onPostMessage(Lo/DataCampaign;Ljava/lang/String;Lo/WorkDatabase;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final onPostMessage(Lo/WorkDatabase;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/WorkDatabase<",
            "TT;>;)V"
        }
    .end annotation

    .line 581
    invoke-interface {p1}, Lo/WorkDatabase;->extraCallback()Z

    move-result v0

    .line 582
    invoke-interface {p1}, Lo/WorkDatabase;->asBinder()F

    move-result v1

    .line 583
    iget-object v2, p0, Lo/DataCampaign$3;->extraCallback:Lo/DataCampaign;

    iget-object v3, p0, Lo/DataCampaign$3;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v2, v3, p1, v1, v0}, Lo/DataCampaign;->onMessageChannelReady(Lo/DataCampaign;Ljava/lang/String;Lo/WorkDatabase;FZ)V

    return-void
.end method
