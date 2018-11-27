.class Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;
.super Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;
.source "DrawableCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x11
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/graphics/drawable/DrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawableCompatApi17Impl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawableCompatApi17"

.field private static sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sGetLayoutDirectionMethodFetched:Z

.field private static sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sSetLayoutDirectionMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatBaseImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 5

    .line 163
    sget-boolean v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethodFetched:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 165
    :try_start_0
    const-class v2, Landroid/graphics/drawable/Drawable;

    const-string v3, "getLayoutDirection"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 166
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "DrawableCompatApi17"

    const-string v4, "Failed to retrieve getLayoutDirection() method"

    .line 168
    invoke-static {v3, v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    :goto_0
    sput-boolean v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethodFetched:Z

    .line 173
    :cond_0
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 175
    :try_start_1
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p1

    :catch_1
    move-exception p1

    const-string v0, "DrawableCompatApi17"

    const-string v2, "Failed to invoke getLayoutDirection() via reflection"

    .line 177
    invoke-static {v0, v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 178
    sput-object p1, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    :cond_1
    return v1
.end method

.method public setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z
    .locals 6

    .line 138
    sget-boolean v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethodFetched:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 140
    :try_start_0
    const-class v0, Landroid/graphics/drawable/Drawable;

    const-string v3, "setLayoutDirection"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 141
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    .line 142
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "DrawableCompatApi17"

    const-string v4, "Failed to retrieve setLayoutDirection(int) method"

    .line 144
    invoke-static {v3, v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_0
    sput-boolean v2, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethodFetched:Z

    .line 149
    :cond_0
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 151
    :try_start_1
    sget-object v0, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    invoke-virtual {v0, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return v2

    :catch_1
    move-exception p1

    const-string p2, "DrawableCompatApi17"

    const-string v0, "Failed to invoke setLayoutDirection(int) via reflection"

    .line 154
    invoke-static {p2, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 155
    sput-object p1, Landroid/support/v4/graphics/drawable/DrawableCompat$DrawableCompatApi17Impl;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    :cond_1
    return v1
.end method
