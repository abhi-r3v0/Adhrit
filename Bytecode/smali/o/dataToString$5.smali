.class final Lo/dataToString$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dataToString;-><init>(Lo/onSessionEvent;Lcom/dreamplug/androidapp/onboarding/PaymentMode;Lo/dataToString$onMessageChannelReady;Ljava/lang/String;Ljava/lang/String;)V
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
.field private synthetic onNavigationEvent:Lo/dataToString;


# direct methods
.method constructor <init>(Lo/dataToString;)V
    .locals 0

    iput-object p1, p0, Lo/dataToString$5;->onNavigationEvent:Lo/dataToString;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 27
    check-cast p1, Landroid/view/View;

    const-string v0, "it"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1048
    iget-object p1, p0, Lo/dataToString$5;->onNavigationEvent:Lo/dataToString;

    invoke-static {p1}, Lo/dataToString;->onMessageChannelReady(Lo/dataToString;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "editCard"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1049
    iget-object p1, p0, Lo/dataToString$5;->onNavigationEvent:Lo/dataToString;

    .line 2027
    iget-object p1, p1, Lo/dataToString;->onMessageChannelReady:Lo/dataToString$onMessageChannelReady;

    if-eqz p1, :cond_0

    .line 1049
    invoke-interface {p1}, Lo/dataToString$onMessageChannelReady;->ICustomTabsCallback()V

    .line 27
    :cond_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
