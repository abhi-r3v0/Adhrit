.class public final Lo/measureHeightOfChildrenCompat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/shouldApplyFrameworkTintUsingColorFilter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/shouldApplyFrameworkTintUsingColorFilter<",
        "Landroid/graphics/drawable/BitmapDrawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final onNavigationEvent:Lo/shouldApplyFrameworkTintUsingColorFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/shouldApplyFrameworkTintUsingColorFilter<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Lo/dispatchFitSystemWindows;


# direct methods
.method public constructor <init>(Lo/dispatchFitSystemWindows;Lo/shouldApplyFrameworkTintUsingColorFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/dispatchFitSystemWindows;",
            "Lo/shouldApplyFrameworkTintUsingColorFilter<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lo/measureHeightOfChildrenCompat;->onPostMessage:Lo/dispatchFitSystemWindows;

    .line 21
    iput-object p2, p0, Lo/measureHeightOfChildrenCompat;->onNavigationEvent:Lo/shouldApplyFrameworkTintUsingColorFilter;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Lo/applyFrameworkTintUsingColorFilter;)Lo/getSupportImageTintMode;
    .locals 1

    .line 33
    iget-object v0, p0, Lo/measureHeightOfChildrenCompat;->onNavigationEvent:Lo/shouldApplyFrameworkTintUsingColorFilter;

    invoke-interface {v0, p1}, Lo/shouldApplyFrameworkTintUsingColorFilter;->onMessageChannelReady(Lo/applyFrameworkTintUsingColorFilter;)Lo/getSupportImageTintMode;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onMessageChannelReady(Ljava/lang/Object;Ljava/io/File;Lo/applyFrameworkTintUsingColorFilter;)Z
    .locals 3

    .line 14
    check-cast p1, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;

    .line 1027
    iget-object v0, p0, Lo/measureHeightOfChildrenCompat;->onNavigationEvent:Lo/shouldApplyFrameworkTintUsingColorFilter;

    new-instance v1, Lo/dispatchDraw;

    invoke-interface {p1}, Lo/setCompoundDrawablesRelativeWithIntrinsicBounds;->onPostMessage()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v2, p0, Lo/measureHeightOfChildrenCompat;->onPostMessage:Lo/dispatchFitSystemWindows;

    invoke-direct {v1, p1, v2}, Lo/dispatchDraw;-><init>(Landroid/graphics/Bitmap;Lo/dispatchFitSystemWindows;)V

    invoke-interface {v0, v1, p2, p3}, Lo/shouldApplyFrameworkTintUsingColorFilter;->onMessageChannelReady(Ljava/lang/Object;Ljava/io/File;Lo/applyFrameworkTintUsingColorFilter;)Z

    move-result p1

    return p1
.end method
