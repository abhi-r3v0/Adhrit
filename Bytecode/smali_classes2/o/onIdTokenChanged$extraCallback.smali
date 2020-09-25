.class public final Lo/onIdTokenChanged$extraCallback;
.super Lo/onIdTokenChanged$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onIdTokenChanged;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "extraCallback"
.end annotation


# instance fields
.field extraCallback:F

.field onPostMessage:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 401
    invoke-direct {p0}, Lo/onIdTokenChanged$onPostMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Landroid/graphics/Matrix;Landroid/graphics/Path;)V
    .locals 2

    .line 407
    iget-object v0, p0, Lo/onIdTokenChanged$onPostMessage;->ICustomTabsCallback$Stub:Landroid/graphics/Matrix;

    .line 408
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 409
    invoke-virtual {p2, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 410
    iget v0, p0, Lo/onIdTokenChanged$extraCallback;->extraCallback:F

    iget v1, p0, Lo/onIdTokenChanged$extraCallback;->onPostMessage:F

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 411
    invoke-virtual {p2, p1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
