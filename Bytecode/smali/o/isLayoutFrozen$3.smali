.class final Lo/isLayoutFrozen$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/isLayoutFrozen;-><init>(Landroid/view/View;Lo/pullGlows;)V
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
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
.field private synthetic ICustomTabsCallback:Lo/pullGlows;

.field private synthetic onNavigationEvent:Lo/isLayoutFrozen;


# direct methods
.method constructor <init>(Lo/isLayoutFrozen;Lo/pullGlows;)V
    .locals 0

    iput-object p1, p0, Lo/isLayoutFrozen$3;->onNavigationEvent:Lo/isLayoutFrozen;

    iput-object p2, p0, Lo/isLayoutFrozen$3;->ICustomTabsCallback:Lo/pullGlows;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 15
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    iget-object p1, p0, Lo/isLayoutFrozen$3;->onNavigationEvent:Lo/isLayoutFrozen;

    .line 2015
    iget-object p1, p1, Lo/isLayoutFrozen;->warmup:Ljava/util/List;

    if-nez p1, :cond_0

    const-string v0, "inputListData"

    invoke-static {v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 1036
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/scrollStep;

    if-eqz p1, :cond_1

    .line 1038
    iget-object v0, p0, Lo/isLayoutFrozen$3;->onNavigationEvent:Lo/isLayoutFrozen;

    .line 3015
    iget-object v0, v0, Lo/isLayoutFrozen;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    if-eqz v0, :cond_1

    .line 3111
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->onNavigationEvent:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1039
    iget-object v1, p0, Lo/isLayoutFrozen$3;->ICustomTabsCallback:Lo/pullGlows;

    .line 4045
    iget-object v2, p1, Lo/scrollStep;->onPostMessage:Ljava/lang/String;

    .line 4046
    iget-object p1, p1, Lo/scrollStep;->onNavigationEvent:Ljava/lang/String;

    .line 1039
    invoke-virtual {v1, v2, p1, v0}, Lo/pullGlows;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1040
    iget-object p1, p0, Lo/isLayoutFrozen$3;->ICustomTabsCallback:Lo/pullGlows;

    invoke-virtual {p1}, Lo/pullGlows;->asInterface()V

    .line 15
    :cond_1
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
