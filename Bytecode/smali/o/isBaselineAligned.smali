.class public final Lo/isBaselineAligned;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/drawDividersHorizontal;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/drawDividersHorizontal<",
        "Landroid/graphics/drawable/Drawable;",
        "[B>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/drawDividersHorizontal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/drawDividersHorizontal<",
            "Lo/toGlobalMotionEvent;",
            "[B>;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/dispatchFitSystemWindows;

.field private final onPostMessage:Lo/drawDividersHorizontal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/drawDividersHorizontal<",
            "Landroid/graphics/Bitmap;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/dispatchFitSystemWindows;Lo/drawDividersHorizontal;Lo/drawDividersHorizontal;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/dispatchFitSystemWindows;",
            "Lo/drawDividersHorizontal<",
            "Landroid/graphics/Bitmap;",
            "[B>;",
            "Lo/drawDividersHorizontal<",
            "Lo/toGlobalMotionEvent;",
            "[B>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lo/isBaselineAligned;->onNavigationEvent:Lo/dispatchFitSystemWindows;

    .line 28
    iput-object p2, p0, Lo/isBaselineAligned;->onPostMessage:Lo/drawDividersHorizontal;

    .line 29
    iput-object p3, p0, Lo/isBaselineAligned;->extraCallback:Lo/drawDividersHorizontal;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Lo/applyFrameworkTintUsingColorFilter;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Lo/applyFrameworkTintUsingColorFilter;",
            ")",
            "Lo/setCompoundDrawablesRelativeWithIntrinsicBounds<",
            "[B>;"
        }
    .end annotation

    .line 36
    invoke-interface {p1}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onPostMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 37
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 38
    iget-object p1, p0, Lo/isBaselineAligned;->onPostMessage:Lo/drawDividersHorizontal;

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 39
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lo/isBaselineAligned;->onNavigationEvent:Lo/dispatchFitSystemWindows;

    invoke-static {v0, v1}, Lo/dispatchDraw;->onPostMessage(Landroid/graphics/Bitmap;Lo/dispatchFitSystemWindows;)Lo/dispatchDraw;

    move-result-object v0

    .line 38
    invoke-interface {p1, v0, p2}, Lo/drawDividersHorizontal;->ICustomTabsCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Lo/applyFrameworkTintUsingColorFilter;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    move-result-object p1

    return-object p1

    .line 40
    :cond_0
    instance-of v0, v0, Lo/toGlobalMotionEvent;

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lo/isBaselineAligned;->extraCallback:Lo/drawDividersHorizontal;

    invoke-interface {v0, p1, p2}, Lo/drawDividersHorizontal;->ICustomTabsCallback(Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;Lo/applyFrameworkTintUsingColorFilter;)Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
