.class final Lo/DefaultItemAnimator$getInterfaceDescriptor;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DefaultItemAnimator;->onMessageChannelReady(I)V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
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
.field private synthetic onNavigationEvent:Lo/DefaultItemAnimator;


# direct methods
.method constructor <init>(Lo/DefaultItemAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/DefaultItemAnimator$getInterfaceDescriptor;->onNavigationEvent:Lo/DefaultItemAnimator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1436
    iget-object v0, p0, Lo/DefaultItemAnimator$getInterfaceDescriptor;->onNavigationEvent:Lo/DefaultItemAnimator;

    invoke-static {v0}, Lo/DefaultItemAnimator;->onMessageChannelReady(Lo/DefaultItemAnimator;)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "view"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->cashbackCard:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/animateRemoveImpl;

    .line 2054
    iget-object v0, v0, Lo/animateRemoveImpl;->onNavigationEvent:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    .line 53
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
