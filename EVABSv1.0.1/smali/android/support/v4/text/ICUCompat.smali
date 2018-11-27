.class public final Landroid/support/v4/text/ICUCompat;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/ICUCompat$ICUCompatApi21Impl;,
        Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 44
    new-instance v0, Landroid/support/v4/text/ICUCompat$ICUCompatApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/text/ICUCompat$ICUCompatApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;

    goto :goto_0

    .line 46
    :cond_0
    new-instance v0, Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;

    :goto_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 75
    sget-object v0, Landroid/support/v4/text/ICUCompat;->IMPL:Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/text/ICUCompat$ICUCompatBaseImpl;->maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
