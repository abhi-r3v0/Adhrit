.class final Lo/animateDisappearance$extraCallback$onMessageChannelReady$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/nextTransactionOrder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/animateDisappearance$extraCallback$onMessageChannelReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/nextTransactionOrder<",
        "Ljava/lang/Boolean;",
        "Lo/AFHelper;",
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
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\n\u00a2\u0006\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "",
        "<anonymous parameter 1>",
        "Lcom/facebook/imagepipeline/image/ImageInfo;",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/win/landing/WinGridViewHolder$InnerCardHolder$bind$2$3$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/animateDisappearance$extraCallback$onMessageChannelReady;


# direct methods
.method constructor <init>(Lo/animateDisappearance$extraCallback$onMessageChannelReady;)V
    .locals 0

    iput-object p1, p0, Lo/animateDisappearance$extraCallback$onMessageChannelReady$3;->onPostMessage:Lo/animateDisappearance$extraCallback$onMessageChannelReady;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1184
    iget-object p1, p0, Lo/animateDisappearance$extraCallback$onMessageChannelReady$3;->onPostMessage:Lo/animateDisappearance$extraCallback$onMessageChannelReady;

    iget-object p1, p1, Lo/animateDisappearance$extraCallback$onMessageChannelReady;->onPostMessage:Lo/animateDisappearance$extraCallback;

    iget-object p2, p0, Lo/animateDisappearance$extraCallback$onMessageChannelReady$3;->onPostMessage:Lo/animateDisappearance$extraCallback$onMessageChannelReady;

    iget-object p2, p2, Lo/animateDisappearance$extraCallback$onMessageChannelReady;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    .line 2112
    invoke-virtual {p1, p2}, Lo/animateDisappearance$extraCallback;->onNavigationEvent(Landroid/graphics/drawable/Drawable;)V

    .line 112
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
