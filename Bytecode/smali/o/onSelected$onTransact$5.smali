.class final Lo/onSelected$onTransact$5;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onSelected$onTransact;
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
.field private synthetic extraCallback:Lo/onSelected$onTransact;


# direct methods
.method constructor <init>(Lo/onSelected$onTransact;)V
    .locals 0

    iput-object p1, p0, Lo/onSelected$onTransact$5;->extraCallback:Lo/onSelected$onTransact;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 2

    .line 1199
    iget-object v0, p0, Lo/onSelected$onTransact$5;->extraCallback:Lo/onSelected$onTransact;

    iget-object v0, v0, Lo/onSelected$onTransact;->ICustomTabsCallback:Lo/onSelected;

    invoke-static {v0}, Lo/onSelected;->onPostMessage(Lo/onSelected;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lo/setInterpolator;->onNavigationEvent:Lo/setInterpolator;

    const v1, 0x7f130443

    invoke-static {v1}, Lo/setInterpolator;->extraCallback(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1203
    iget-object v0, p0, Lo/onSelected$onTransact$5;->extraCallback:Lo/onSelected$onTransact;

    iget-object v0, v0, Lo/onSelected$onTransact;->ICustomTabsCallback:Lo/onSelected;

    invoke-static {v0}, Lo/onSelected;->extraCallback(Lo/onSelected;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 1204
    iget-object v0, p0, Lo/onSelected$onTransact$5;->extraCallback:Lo/onSelected$onTransact;

    iget-object v0, v0, Lo/onSelected$onTransact;->ICustomTabsCallback:Lo/onSelected;

    invoke-static {v0}, Lo/onSelected;->onNavigationEvent(Lo/onSelected;)V

    .line 54
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
