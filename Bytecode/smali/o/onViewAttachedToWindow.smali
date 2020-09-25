.class public final Lo/onViewAttachedToWindow;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile extraCallback:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-static {p0, p1, p2, v0}, Lo/onViewAttachedToWindow;->onPostMessage(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static onPostMessage(Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 40
    invoke-static {p0, p0, p1, p2}, Lo/onViewAttachedToWindow;->onPostMessage(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private static onPostMessage(Landroid/content/Context;Landroid/content/Context;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 48
    :try_start_0
    sget-boolean v0, Lo/onViewAttachedToWindow;->extraCallback:Z

    if-eqz v0, :cond_2

    if-eqz p3, :cond_0

    .line 1068
    new-instance v0, Lo/IPostMessageService$Stub$Proxy;

    invoke-direct {v0, p1, p3}, Lo/IPostMessageService$Stub$Proxy;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 1069
    :goto_0
    invoke-static {v0, p2}, Lo/postMessage;->extraCallback(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    nop

    goto :goto_1

    :catch_1
    move-exception p3

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 57
    invoke-static {p1, p2}, Lo/fromParcel;->onPostMessage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 55
    :cond_1
    throw p3

    :catch_2
    const/4 p0, 0x0

    .line 52
    sput-boolean p0, Lo/onViewAttachedToWindow;->extraCallback:Z

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    goto :goto_2

    .line 63
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p3

    .line 1074
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1075
    invoke-static {p0, p2, p3}, Lo/containsKey;->extraCallback(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
