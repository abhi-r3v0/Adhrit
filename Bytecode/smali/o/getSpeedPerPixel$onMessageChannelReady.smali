.class final Lo/getSpeedPerPixel$onMessageChannelReady;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getSpeedPerPixel;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Landroid/animation/ValueAnimator;",
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
        "animator",
        "Landroid/animation/ValueAnimator;",
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
.field private synthetic onPostMessage:Lo/getSpeedPerPixel;


# direct methods
.method constructor <init>(Lo/getSpeedPerPixel;)V
    .locals 0

    iput-object p1, p0, Lo/getSpeedPerPixel$onMessageChannelReady;->onPostMessage:Lo/getSpeedPerPixel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 27
    check-cast p1, Landroid/animation/ValueAnimator;

    const-string v0, "animator"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 1093
    iget-object v0, p0, Lo/getSpeedPerPixel$onMessageChannelReady;->onPostMessage:Lo/getSpeedPerPixel;

    invoke-static {v0}, Lo/getSpeedPerPixel;->onPostMessage(Lo/getSpeedPerPixel;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1094
    iget-object v0, p0, Lo/getSpeedPerPixel$onMessageChannelReady;->onPostMessage:Lo/getSpeedPerPixel;

    invoke-static {v0}, Lo/getSpeedPerPixel;->extraCallback(Lo/getSpeedPerPixel;)Lo/setSpeed;

    move-result-object v0

    iget-object v1, p0, Lo/getSpeedPerPixel$onMessageChannelReady;->onPostMessage:Lo/getSpeedPerPixel;

    invoke-static {v1}, Lo/getSpeedPerPixel;->onNavigationEvent(Lo/getSpeedPerPixel;)F

    move-result v1

    neg-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lo/setSpeed;->setTranslationY(F)V

    .line 1095
    iget-object p1, p0, Lo/getSpeedPerPixel$onMessageChannelReady;->onPostMessage:Lo/getSpeedPerPixel;

    invoke-static {p1}, Lo/getSpeedPerPixel;->ICustomTabsCallback(Lo/getSpeedPerPixel;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lo/getSpeedPerPixel$onMessageChannelReady;->onPostMessage:Lo/getSpeedPerPixel;

    invoke-static {v0}, Lo/getSpeedPerPixel;->onNavigationEvent(Lo/getSpeedPerPixel;)F

    move-result v0

    neg-float v0, v0

    mul-float v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1096
    iget-object p1, p0, Lo/getSpeedPerPixel$onMessageChannelReady;->onPostMessage:Lo/getSpeedPerPixel;

    invoke-static {p1}, Lo/getSpeedPerPixel;->asInterface(Lo/getSpeedPerPixel;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lo/getSpeedPerPixel$onMessageChannelReady;->onPostMessage:Lo/getSpeedPerPixel;

    invoke-static {v0}, Lo/getSpeedPerPixel;->onNavigationEvent(Lo/getSpeedPerPixel;)F

    move-result v0

    neg-float v0, v0

    mul-float v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 1097
    iget-object p1, p0, Lo/getSpeedPerPixel$onMessageChannelReady;->onPostMessage:Lo/getSpeedPerPixel;

    invoke-static {p1}, Lo/getSpeedPerPixel;->asBinder(Lo/getSpeedPerPixel;)Lo/PlaybackStateCompat;

    move-result-object p1

    iget-object v0, p0, Lo/getSpeedPerPixel$onMessageChannelReady;->onPostMessage:Lo/getSpeedPerPixel;

    invoke-static {v0}, Lo/getSpeedPerPixel;->ICustomTabsCallback$Stub(Lo/getSpeedPerPixel;)F

    move-result v0

    mul-float v0, v0, v2

    invoke-virtual {p1, v0}, Lo/PlaybackStateCompat;->setTranslationY(F)V

    .line 1098
    iget-object p1, p0, Lo/getSpeedPerPixel$onMessageChannelReady;->onPostMessage:Lo/getSpeedPerPixel;

    invoke-static {p1}, Lo/getSpeedPerPixel;->onTransact(Lo/getSpeedPerPixel;)Lo/makeOptionalFitsSystemWindows;

    move-result-object p1

    iget-object v0, p0, Lo/getSpeedPerPixel$onMessageChannelReady;->onPostMessage:Lo/getSpeedPerPixel;

    invoke-static {v0}, Lo/getSpeedPerPixel;->ICustomTabsCallback$Stub(Lo/getSpeedPerPixel;)F

    move-result v0

    mul-float v0, v0, v2

    invoke-virtual {p1, v0}, Lo/makeOptionalFitsSystemWindows;->setTranslationY(F)V

    .line 27
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1

    .line 1092
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
