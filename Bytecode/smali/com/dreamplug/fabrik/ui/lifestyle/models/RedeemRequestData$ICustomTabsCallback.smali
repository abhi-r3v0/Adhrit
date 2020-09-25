.class final Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData$ICustomTabsCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/dreamplug/fabrik/ui/lifestyle/models/LifestyleTemplateProperties;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;Lcom/dreamplug/fabrik/ui/lifestyle/models/Entity;Lcom/dreamplug/fabrik/ui/lifestyle/models/LeaderBoardInnerCard;Lcom/dreamplug/fabrik/ui/lifestyle/models/SectionsResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Ljava/lang/String;",
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u0004\u0018\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData$ICustomTabsCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 1

    .line 1430
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData$ICustomTabsCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    .line 2420
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->asBinder:Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;

    if-eqz v0, :cond_0

    .line 3065
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Cta;->onNavigationEvent:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 1430
    :cond_0
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData$ICustomTabsCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;

    .line 3414
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/RedeemRequestData;->onPostMessage:Ljava/lang/String;

    :cond_1
    return-object v0
.end method
