.class final Lo/onActivityCreated$extraCallback;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityCreated;->ICustomTabsCallback(Lo/onCanceled;Lo/onActivityCreated$onNavigationEvent;)V
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "invoke",
        "com/dreamplug/fabrik/helper/ui/widget/CredCard$init$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/onCanceled;

.field private synthetic onNavigationEvent:Lo/onActivityCreated;

.field private synthetic onPostMessage:Lo/onActivityCreated$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/onActivityCreated;Lo/onCanceled;Lo/onActivityCreated$onNavigationEvent;)V
    .locals 0

    iput-object p1, p0, Lo/onActivityCreated$extraCallback;->onNavigationEvent:Lo/onActivityCreated;

    iput-object p2, p0, Lo/onActivityCreated$extraCallback;->onMessageChannelReady:Lo/onCanceled;

    iput-object p3, p0, Lo/onActivityCreated$extraCallback;->onPostMessage:Lo/onActivityCreated$onNavigationEvent;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 26
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1102
    iget-object p1, p0, Lo/onActivityCreated$extraCallback;->onMessageChannelReady:Lo/onCanceled;

    const-string/jumbo v0, "tap"

    .line 2007
    iput-object v0, p1, Lo/onCanceled;->ICustomTabsCallback:Ljava/lang/String;

    .line 1103
    iget-object p1, p0, Lo/onActivityCreated$extraCallback;->onPostMessage:Lo/onActivityCreated$onNavigationEvent;

    invoke-static {p1}, Lo/onActivityCreated;->extraCallback(Lo/onActivityCreated$onNavigationEvent;)V

    .line 26
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
