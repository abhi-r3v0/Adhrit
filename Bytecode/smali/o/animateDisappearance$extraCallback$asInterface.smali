.class final Lo/animateDisappearance$extraCallback$asInterface;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/animateDisappearance$extraCallback;
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
        "com/dreamplug/fabrik/ui/lifestyle/win/landing/WinGridViewHolder$InnerCardHolder$setTimer$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/animateDisappearance$extraCallback;

.field private synthetic onNavigationEvent:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lo/animateDisappearance$extraCallback;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lo/animateDisappearance$extraCallback$asInterface;->extraCallback:Lo/animateDisappearance$extraCallback;

    iput-object p2, p0, Lo/animateDisappearance$extraCallback$asInterface;->onNavigationEvent:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1250
    iget-object v0, p0, Lo/animateDisappearance$extraCallback$asInterface;->extraCallback:Lo/animateDisappearance$extraCallback;

    .line 2112
    iget-object v0, v0, Lo/animateDisappearance$extraCallback;->requestPostMessageChannel:Lo/getServerTime;

    .line 1250
    invoke-interface {v0}, Lo/getServerTime;->onMessageChannelReady()Ljava/lang/Object;

    .line 1251
    iget-object v0, p0, Lo/animateDisappearance$extraCallback$asInterface;->onNavigationEvent:Landroid/widget/TextView;

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$gone"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    .line 3017
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
