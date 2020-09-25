.class final Lo/setTitleMarginBottom$updateVisuals;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/onDisconnectSetValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/setTitleMarginBottom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/onDisconnectSetValue<",
        "Lo/setInitialSavedState;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\n\u00a2\u0006\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "background",
        "Lcom/dreamplug/fabrik/helper/assets/Background;",
        "invoke",
        "com/dreamplug/androidapp/gating/NewOnboardAddCardFragment$updateReferenceCard$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/setTitleMarginBottom;


# direct methods
.method constructor <init>(Lo/setTitleMarginBottom;)V
    .locals 0

    iput-object p1, p0, Lo/setTitleMarginBottom$updateVisuals;->onNavigationEvent:Lo/setTitleMarginBottom;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 71
    check-cast p1, Lo/setInitialSavedState;

    if-eqz p1, :cond_1

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    const/4 v2, 0x1

    .line 2010
    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 1394
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 1395
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v0, v4, v2

    const/4 v2, 0x2

    aput v0, v4, v2

    const/4 v2, 0x3

    aput v0, v4, v2

    const/4 v2, 0x4

    aput v0, v4, v2

    const/4 v2, 0x5

    aput v0, v4, v2

    const/4 v2, 0x6

    aput v0, v4, v2

    const/4 v2, 0x7

    aput v0, v4, v2

    const/4 v0, 0x0

    invoke-direct {v3, v4, v0, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    check-cast v3, Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 1399
    instance-of v0, p1, Lo/setInitialSavedState$extraCallback;

    const-string v2, "backgroundView"

    const-string v3, "backgroundDrawable.paint"

    if-eqz v0, :cond_0

    .line 1401
    :try_start_0
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/setInitialSavedState$extraCallback;

    .line 2012
    iget-object p1, p1, Lo/setInitialSavedState$extraCallback;->extraCallback:Ljava/util/List;

    .line 1401
    invoke-static {p1}, Lo/getSessionPersistenceKey;->extraCallback(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1402
    iget-object p1, p0, Lo/setTitleMarginBottom$updateVisuals;->onNavigationEvent:Lo/setTitleMarginBottom;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, v0}, Lo/setTitleMarginBottom;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1407
    :cond_0
    instance-of v0, p1, Lo/setInitialSavedState$onMessageChannelReady;

    if-eqz v0, :cond_1

    .line 1410
    :try_start_1
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lo/setInitialSavedState$onMessageChannelReady;

    .line 2019
    iget p1, p1, Lo/setInitialSavedState$onMessageChannelReady;->onNavigationEvent:I

    .line 1410
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1411
    iget-object p1, p0, Lo/setTitleMarginBottom$updateVisuals;->onNavigationEvent:Lo/setTitleMarginBottom;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->backgroundView:I

    invoke-virtual {p1, v0}, Lo/setTitleMarginBottom;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    :catch_0
    :cond_1
    :goto_0
    sget-object p1, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object p1
.end method
