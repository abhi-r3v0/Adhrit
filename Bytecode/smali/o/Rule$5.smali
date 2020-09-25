.class public final Lo/Rule$5;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/LottieAnimationView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private synthetic extraCallback:I

.field private synthetic onNavigationEvent:Lo/Rule;


# direct methods
.method public constructor <init>(Lo/Rule;I)V
    .locals 0

    .line 303
    iput-object p1, p0, Lo/Rule$5;->onNavigationEvent:Lo/Rule;

    iput p2, p0, Lo/Rule$5;->extraCallback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 306
    iget-object v0, p0, Lo/Rule$5;->onNavigationEvent:Lo/Rule;

    iget v1, p0, Lo/Rule$5;->extraCallback:I

    invoke-virtual {v0, v1, p1}, Lo/Rule;->onNavigationEvent(ILandroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 311
    iget-object v0, p0, Lo/Rule$5;->onNavigationEvent:Lo/Rule;

    iget v1, p0, Lo/Rule$5;->extraCallback:I

    invoke-virtual {v0, v1}, Lo/Rule;->ICustomTabsCallback(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
