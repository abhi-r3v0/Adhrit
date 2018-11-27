.class public final Landroid/support/v4/graphics/BitmapCompat;
.super Ljava/lang/Object;
.source "BitmapCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/BitmapCompat$BitmapCompatApi19Impl;,
        Landroid/support/v4/graphics/BitmapCompat$BitmapCompatApi18Impl;,
        Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 66
    new-instance v0, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatApi19Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatApi19Impl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;

    goto :goto_0

    .line 67
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 68
    new-instance v0, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatApi18Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatApi18Impl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;

    goto :goto_0

    .line 70
    :cond_1
    new-instance v0, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .locals 1

    .line 90
    sget-object v0, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;->getAllocationByteCount(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public static hasMipMap(Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 75
    sget-object v0, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;->hasMipMap(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .locals 1

    .line 79
    sget-object v0, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;->setHasMipMap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
