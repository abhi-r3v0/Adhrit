.class final Lo/getTransformedBoundingBox$extraCallback$3;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getTransformedBoundingBox$extraCallback;->onAnimationEnd(Landroid/animation/Animator;)V
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
        "com/dreamplug/fabrik/ui/onboardAddCard/MCFVerifyCardFragment$enterAnimator$1$2$onAnimationEnd$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/getTransformedBoundingBox$extraCallback;


# direct methods
.method constructor <init>(Lo/getTransformedBoundingBox$extraCallback;)V
    .locals 0

    iput-object p1, p0, Lo/getTransformedBoundingBox$extraCallback$3;->onPostMessage:Lo/getTransformedBoundingBox$extraCallback;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1442
    iget-object v0, p0, Lo/getTransformedBoundingBox$extraCallback$3;->onPostMessage:Lo/getTransformedBoundingBox$extraCallback;

    iget-object v0, v0, Lo/getTransformedBoundingBox$extraCallback;->ICustomTabsCallback:Lo/getTransformedBoundingBox;

    .line 2183
    iget-object v0, v0, Lo/getTransformedBoundingBox;->extraCallback:Lo/stopLoading;

    if-nez v0, :cond_0

    const-string v1, "addCardView"

    invoke-static {v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 1442
    :cond_0
    invoke-interface {v0}, Lo/stopLoading;->asInterface()V

    .line 438
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
