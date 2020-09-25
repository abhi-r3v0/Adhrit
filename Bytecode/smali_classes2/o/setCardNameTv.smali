.class public final Lo/setCardNameTv;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method static synthetic ICustomTabsCallback(Landroid/content/Context;Z)Z
    .locals 0

    invoke-static {p0, p1}, Lo/setCardNameTv;->onNavigationEvent(Landroid/content/Context;Z)Z

    move-result p0

    return p0
.end method

.method private static onNavigationEvent(Landroid/content/Context;Z)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const-string p1, "com.google.android.gms.ads.dynamite"

    invoke-static {p0, p1}, Lcom/google/android/gms/dynamite/DynamiteModule;->extraCallback(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-static {p0, p1}, Lcom/google/android/gms/dynamite/DynamiteModule;->onNavigationEvent(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-gt v1, p0, :cond_2

    return v0

    :cond_2
    return v2
.end method
