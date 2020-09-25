.class public final Lo/setText;
.super Lo/setPosition;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lo/setPosition;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPostMessage(IILandroid/graphics/Bitmap$Config;)Lo/getRootAlpha;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lo/getRootAlpha<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1019
    sget-object p2, Lo/setSelectionAnimationInterpolator;->extraCallback:Lo/setSelectionAnimationInterpolator;

    if-nez p2, :cond_0

    .line 1020
    new-instance p2, Lo/setSelectionAnimationInterpolator;

    invoke-direct {p2}, Lo/setSelectionAnimationInterpolator;-><init>()V

    sput-object p2, Lo/setSelectionAnimationInterpolator;->extraCallback:Lo/setSelectionAnimationInterpolator;

    .line 1022
    :cond_0
    sget-object p2, Lo/setSelectionAnimationInterpolator;->extraCallback:Lo/setSelectionAnimationInterpolator;

    .line 30
    invoke-static {p1, p2}, Lo/getRootAlpha;->extraCallback(Ljava/lang/Object;Lo/setPageMargin;)Lo/getRootAlpha;

    move-result-object p1

    return-object p1
.end method
