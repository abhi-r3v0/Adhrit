.class final Lo/getItemAnimator$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate",
        "com/dreamplug/fabrik/ui/lifestyle/win/details/WinDetailsNotifyTemplate$animateSecontaryText$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/getItemAnimator;


# direct methods
.method constructor <init>(Lo/getItemAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/getItemAnimator$onPostMessage;->extraCallback:Lo/getItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    const-string v0, "it"

    .line 243
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 244
    iget-object v0, p0, Lo/getItemAnimator$onPostMessage;->extraCallback:Lo/getItemAnimator;

    invoke-static {v0}, Lo/getItemAnimator;->asInterface(Lo/getItemAnimator;)Lo/createFullSpanItemFromEnd;

    move-result-object v0

    const-string/jumbo v1, "secondaryText"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v2, 0x41100000    # 9.0f

    mul-float v2, v2, p1

    const/high16 v3, 0x41200000    # 10.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lo/createFullSpanItemFromEnd;->setAlpha(F)V

    .line 245
    iget-object v0, p0, Lo/getItemAnimator$onPostMessage;->extraCallback:Lo/getItemAnimator;

    invoke-static {v0}, Lo/getItemAnimator;->asInterface(Lo/getItemAnimator;)Lo/createFullSpanItemFromEnd;

    move-result-object v0

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/getItemAnimator$onPostMessage;->extraCallback:Lo/getItemAnimator;

    invoke-static {v1}, Lo/getItemAnimator;->ICustomTabsCallback$Stub(Lo/getItemAnimator;)Lo/setSpeed;

    move-result-object v1

    const-string v2, "backgroundView"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lo/setSpeed;->getX()F

    move-result v1

    .line 1009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "Resources.getSystem()"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x41c00000    # 24.0f

    .line 1010
    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    mul-float p1, p1, v2

    add-float/2addr v1, p1

    .line 245
    invoke-virtual {v0, v1}, Lo/createFullSpanItemFromEnd;->setX(F)V

    return-void

    .line 243
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
