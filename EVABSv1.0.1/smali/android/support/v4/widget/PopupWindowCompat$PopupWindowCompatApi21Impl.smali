.class Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi21Impl;
.super Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi19Impl;
.source "PopupWindowCompat.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/PopupWindowCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PopupWindowCompatApi21Impl"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindowCompatApi21"

.field private static sOverlapAnchorField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 126
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "mOverlapAnchor"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi21Impl;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    .line 127
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi21Impl;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "PopupWindowCompatApi21"

    const-string v2, "Could not fetch mOverlapAnchor field from PopupWindow"

    .line 129
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 119
    invoke-direct {p0}, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi19Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .locals 2

    .line 146
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi21Impl;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 148
    :try_start_0
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi21Impl;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "PopupWindowCompatApi21"

    const-string v1, "Could not get overlap anchor field in PopupWindow"

    .line 150
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 1

    .line 135
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi21Impl;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    .line 137
    :try_start_0
    sget-object v0, Landroid/support/v4/widget/PopupWindowCompat$PopupWindowCompatApi21Impl;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PopupWindowCompatApi21"

    const-string v0, "Could not set overlap anchor field in PopupWindow"

    .line 139
    invoke-static {p2, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
