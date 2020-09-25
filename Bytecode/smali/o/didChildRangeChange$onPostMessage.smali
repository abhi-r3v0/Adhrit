.class final Lo/didChildRangeChange$onPostMessage;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/didChildRangeChange;->extraCallback(Landroid/widget/TextView;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Ljava/lang/Long;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/win/landing/WinCardBaseHolder$setTimer$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Landroid/widget/TextView;

.field private synthetic onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;

.field private synthetic onNavigationEvent:Lo/didChildRangeChange;


# direct methods
.method constructor <init>(Lo/didChildRangeChange;Landroid/widget/TextView;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;)V
    .locals 0

    iput-object p1, p0, Lo/didChildRangeChange$onPostMessage;->onNavigationEvent:Lo/didChildRangeChange;

    iput-object p2, p0, Lo/didChildRangeChange$onPostMessage;->ICustomTabsCallback:Landroid/widget/TextView;

    iput-object p3, p0, Lo/didChildRangeChange$onPostMessage;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 34
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1067
    iget-object p1, p0, Lo/didChildRangeChange$onPostMessage;->onNavigationEvent:Lo/didChildRangeChange;

    iget-object v2, p0, Lo/didChildRangeChange$onPostMessage;->ICustomTabsCallback:Landroid/widget/TextView;

    iget-object v3, p0, Lo/didChildRangeChange$onPostMessage;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;

    .line 1111
    iget-object v3, v3, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/TimerConfig;->onRelationshipValidationResult:Ljava/lang/String;

    .line 1067
    invoke-static {p1, v2, v0, v1, v3}, Lo/didChildRangeChange;->ICustomTabsCallback(Lo/didChildRangeChange;Landroid/widget/TextView;JLjava/lang/String;)V

    .line 34
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
