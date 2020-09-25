.class public final Lo/setSelectionAnimationInterpolator;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPageMargin;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setPageMargin<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static extraCallback:Lo/setSelectionAnimationInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic extraCallback(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Landroid/graphics/Bitmap;

    .line 1029
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method
