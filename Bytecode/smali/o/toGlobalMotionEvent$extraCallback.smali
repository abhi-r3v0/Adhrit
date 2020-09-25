.class public final Lo/toGlobalMotionEvent$extraCallback;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/toGlobalMotionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation


# instance fields
.field public final onNavigationEvent:Lo/getShowDividers;


# direct methods
.method constructor <init>(Lo/getShowDividers;)V
    .locals 0

    .line 434
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 435
    iput-object p1, p0, Lo/toGlobalMotionEvent$extraCallback;->onNavigationEvent:Lo/getShowDividers;

    return-void
.end method


# virtual methods
.method public final getChangingConfigurations()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 447
    new-instance v0, Lo/toGlobalMotionEvent;

    invoke-direct {v0, p0}, Lo/toGlobalMotionEvent;-><init>(Lo/toGlobalMotionEvent$extraCallback;)V

    return-object v0
.end method

.method public final newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 441
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method
