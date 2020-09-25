.class final Lo/detachViewAt$onNavigationEvent;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/detachViewAt;->onPostMessage(Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/view/View;",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke",
        "com/dreamplug/fabrik/ui/nba/adapter/paymentV2/template/NBAPaymentTemplate4Holder$setFooter$1$1$1",
        "com/dreamplug/fabrik/ui/nba/adapter/paymentV2/template/NBAPaymentTemplate4Holder$$special$$inlined$let$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/detachViewAt;

.field private synthetic onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;


# direct methods
.method constructor <init>(Lo/detachViewAt;Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;)V
    .locals 0

    iput-object p1, p0, Lo/detachViewAt$onNavigationEvent;->onMessageChannelReady:Lo/detachViewAt;

    iput-object p2, p0, Lo/detachViewAt$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 19
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1041
    iget-object p1, p0, Lo/detachViewAt$onNavigationEvent;->onMessageChannelReady:Lo/detachViewAt;

    .line 2021
    iget-object p1, p1, Lo/detachViewAt;->ICustomTabsCallback:Lo/hasGapsToFix$onMessageChannelReady;

    if-nez p1, :cond_0

    .line 1041
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    iget-object v0, p0, Lo/detachViewAt$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    check-cast v0, Lo/StaggeredGridLayoutManager;

    const/4 v1, 0x0

    const-string v2, "click"

    .line 2066
    invoke-interface {p1, v2, v0, v1}, Lo/hasGapsToFix$onMessageChannelReady;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V

    .line 1042
    iget-object p1, p0, Lo/detachViewAt$onNavigationEvent;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;

    .line 3024
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/NBACard;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;

    .line 3035
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/TemplateProperties;->onTransact:Lcom/dreamplug/fabrik/ui/nba/helper/Footer;

    .line 3116
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/nba/helper/Footer;->onNavigationEvent:Lcom/dreamplug/fabrik/ui/nba/helper/Cta;

    if-eqz p1, :cond_1

    .line 1042
    invoke-virtual {p1}, Lcom/dreamplug/fabrik/ui/nba/helper/Cta;->getType()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "flow"

    .line 1043
    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    :cond_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
