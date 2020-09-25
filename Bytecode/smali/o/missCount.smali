.class public final Lo/missCount;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0002J\u001c\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/landing/WinResManager;",
        "",
        "()V",
        "fetchToCache",
        "",
        "context",
        "Landroid/content/Context;",
        "asset",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;",
        "prefetch",
        "displayList",
        "",
        "Lcom/dreamplug/utils/list/ListItem;",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8010
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic ICustomTabsCallback(Landroid/view/View;Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 6

    and-int/lit8 v0, p6, 0x2

    if-eqz v0, :cond_0

    .line 6009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "Resources.getSystem()"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/4 v0, 0x1

    const/high16 v1, 0x41000000    # 8.0f

    .line 6010
    invoke-static {v0, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x4

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    move-object v3, v0

    goto :goto_0

    :cond_1
    move-object v3, p3

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const-string p4, "#b2b2b2"

    :cond_2
    move-object v4, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move-object v5, v0

    goto :goto_1

    :cond_3
    move-object v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    .line 99
    invoke-static/range {v0 .. v5}, Lo/missCount;->onNavigationEvent(Landroid/view/View;Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static final ICustomTabsCallback(Landroid/view/View;[IF)V
    .locals 2

    const-string v0, "$this$setGradientBackground"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colors"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    const/4 p1, 0x0

    .line 117
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 118
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 119
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 120
    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static onMessageChannelReady(Landroid/content/Context;Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 6094
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;->onNavigationEvent:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "image"

    .line 6031
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6096
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;->onPostMessage:Ljava/lang/String;

    goto :goto_0

    .line 7092
    :cond_0
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/Asset;->extraCallback:Ljava/lang/String;

    :goto_0
    if-eqz p1, :cond_1

    const-string/jumbo v0, "win_prefetch"

    .line 6037
    invoke-static {v0, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 6038
    invoke-static {}, Lo/CombineContinuationsWorker;->ICustomTabsCallback()Lo/weakContext;

    move-result-object v0

    invoke-static {p1}, Lo/getHostPrefix;->onNavigationEvent(Ljava/lang/String;)Lo/getHostPrefix;

    move-result-object p1

    .line 7451
    sget-object v1, Lo/getInstallVersion;->extraCallback:Lo/getInstallVersion;

    invoke-virtual {v0, p1, p0, v1}, Lo/weakContext;->extraCallback(Lo/getHostPrefix;Ljava/lang/Object;Lo/getInstallVersion;)Lo/WorkDatabase;

    :cond_1
    return-void
.end method

.method public static final onNavigationEvent(Landroid/view/View;I)V
    .locals 6

    const-string v0, "$this$backgroundColorRes"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x41000000    # 8.0f

    .line 5010
    invoke-static {v1, v2, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    .line 67
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/ShapeDrawable;-><init>()V

    .line 68
    new-instance v3, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/16 v4, 0x8

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    aput v0, v4, v1

    const/4 v1, 0x2

    aput v0, v4, v1

    const/4 v1, 0x3

    aput v0, v4, v1

    const/4 v1, 0x4

    aput v0, v4, v1

    const/4 v1, 0x5

    aput v0, v4, v1

    const/4 v1, 0x6

    aput v0, v4, v1

    const/4 v1, 0x7

    aput v0, v4, v1

    const/4 v0, 0x0

    invoke-direct {v3, v4, v0, v0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    check-cast v3, Landroid/graphics/drawable/shapes/Shape;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 70
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const-string v1, "backgroundDrawable.paint"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lo/fromParcel;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    check-cast v2, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic onNavigationEvent(Landroid/view/View;Ljava/lang/String;FLjava/lang/String;Ljava/lang/Float;[FLjava/lang/Integer;I)V
    .locals 5

    and-int/lit8 v0, p7, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p1, v1

    :cond_0
    and-int/lit8 v0, p7, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 2009
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "Resources.getSystem()"

    invoke-static {p2, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 v0, 0x41000000    # 8.0f

    .line 2010
    invoke-static {v2, v0, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    :cond_1
    and-int/lit8 v0, p7, 0x4

    if-eqz v0, :cond_2

    move-object p3, v1

    :cond_2
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_3

    move-object p4, v1

    :cond_3
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_4

    move-object p5, v1

    :cond_4
    and-int/lit8 p7, p7, 0x40

    if-eqz p7, :cond_5

    move-object p6, v1

    :cond_5
    const-string p7, "$this$setBackgroundColor"

    .line 41
    invoke-static {p0, p7}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2042
    new-instance p7, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p7}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x0

    .line 2043
    invoke-virtual {p7, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const-string v1, "prefix"

    const-string v3, "$this$startsWith"

    const-string v4, "#"

    if-eqz p1, :cond_7

    .line 2047
    sget-object p6, Lcom/dreamplug/utils/helpers/MoshiColorAdapter;->onNavigationEvent:Lcom/dreamplug/utils/helpers/MoshiColorAdapter;

    .line 2332
    invoke-static {p1, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2334
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p6

    if-eqz p6, :cond_6

    goto :goto_0

    .line 2047
    :cond_6
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Lcom/dreamplug/utils/helpers/MoshiColorAdapter;->extraCallback(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p7, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_7
    if-eqz p6, :cond_8

    .line 2049
    invoke-virtual {p6}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p7, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :cond_8
    :goto_1
    if-eqz p5, :cond_9

    .line 2052
    invoke-virtual {p7, p5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    goto :goto_2

    .line 2054
    :cond_9
    invoke-virtual {p7, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    :goto_2
    if-eqz p3, :cond_d

    .line 2056
    move-object p1, p3

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-lez p1, :cond_a

    const/4 v0, 0x1

    :cond_a
    if-ne v0, v2, :cond_d

    if-eqz p4, :cond_d

    .line 3332
    invoke-static {p3, v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3334
    invoke-virtual {p3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_3

    .line 2057
    :cond_b
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 2058
    :goto_3
    invoke-virtual {p4}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 4132
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_c

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 2058
    invoke-static {p3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p7, p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    goto :goto_4

    .line 4132
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot round NaN value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Throwable;

    throw p0

    .line 2060
    :cond_d
    :goto_4
    check-cast p7, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private static onNavigationEvent(Landroid/view/View;Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 7

    const-string v0, "$this$setAssetBackground"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundId"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultColor"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    new-instance v0, Lo/missCount$extraCallback;

    invoke-direct {v0, p0}, Lo/missCount$extraCallback;-><init>(Landroid/view/View;)V

    move-object v6, v0

    check-cast v6, Lo/onDisconnectSetValue;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v1 .. v6}, Lo/missCount;->onPostMessage(Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;Lo/onDisconnectSetValue;)V

    return-void
.end method

.method public static final onNavigationEvent(Landroid/widget/TextView;Landroid/content/Context;I)V
    .locals 2

    const-string v0, "$this$setTextStyle"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    .line 108
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void

    .line 110
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method public static final onPostMessage(Ljava/lang/String;F[FLjava/lang/String;Landroid/graphics/drawable/Drawable;Lo/onDisconnectSetValue;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "F[F",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            "Lo/onDisconnectSetValue<",
            "-",
            "Landroid/graphics/drawable/Drawable;",
            "Lo/addWrites;",
            ">;)V"
        }
    .end annotation

    const-string v0, "backgroundId"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultColor"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "resultCallback"

    invoke-static {p5, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    sget-object v0, Lo/setTargetFragment;->onPostMessage:Lo/setTargetFragment;

    new-instance v0, Lo/missCount$onNavigationEvent;

    move-object v1, v0

    move-object v2, p2

    move v3, p1

    move-object v4, p0

    move-object v5, p4

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lo/missCount$onNavigationEvent;-><init>([FFLjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Lo/onDisconnectSetValue;)V

    check-cast v0, Lo/onDisconnectSetValue;

    invoke-static {p0, v0}, Lo/setTargetFragment;->onPostMessage(Ljava/lang/String;Lo/onDisconnectSetValue;)V

    return-void
.end method
