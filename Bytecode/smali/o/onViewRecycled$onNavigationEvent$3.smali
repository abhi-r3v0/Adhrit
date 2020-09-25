.class final Lo/onViewRecycled$onNavigationEvent$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onViewRecycled$onNavigationEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/win/trophyroom/winnings/TrophyWinType1Holder$setWinSectionDisplayWithCopyView$1$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/onViewRecycled$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/onViewRecycled$onNavigationEvent;)V
    .locals 0

    iput-object p1, p0, Lo/onViewRecycled$onNavigationEvent$3;->extraCallback:Lo/onViewRecycled$onNavigationEvent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1161
    iget-object v0, p0, Lo/onViewRecycled$onNavigationEvent$3;->extraCallback:Lo/onViewRecycled$onNavigationEvent;

    iget-object v0, v0, Lo/onViewRecycled$onNavigationEvent;->onNavigationEvent:Lo/onViewRecycled;

    invoke-static {v0}, Lo/onViewRecycled;->onPostMessage(Lo/onViewRecycled;)Lo/checkAppCompatTheme;

    move-result-object v0

    iget-object v0, v0, Lo/checkAppCompatTheme;->extraCallback:Lo/createFullSpanItemFromEnd;

    const-string v1, "binding.buttonCopyCode"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "copy_code"

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1162
    iget-object v0, p0, Lo/onViewRecycled$onNavigationEvent$3;->extraCallback:Lo/onViewRecycled$onNavigationEvent;

    iget-object v0, v0, Lo/onViewRecycled$onNavigationEvent;->onNavigationEvent:Lo/onViewRecycled;

    invoke-static {v0}, Lo/onViewRecycled;->onPostMessage(Lo/onViewRecycled;)Lo/checkAppCompatTheme;

    move-result-object v0

    iget-object v0, v0, Lo/checkAppCompatTheme;->extraCallback:Lo/createFullSpanItemFromEnd;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f13012b

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
