.class public final Lcom/appsflyer/internal/p;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/p$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ı(Landroid/content/Context;)Landroid/location/Location;
    .locals 8

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "location"

    .line 39
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    const-string v3, "network"

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1053
    filled-new-array {v0, v4}, [Ljava/lang/String;

    move-result-object v4

    .line 1093
    invoke-static {p0, v4}, Lcom/appsflyer/internal/p;->ǃ(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1094
    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    const-string v4, "gps"

    .line 1055
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 2093
    invoke-static {p0, v0}, Lcom/appsflyer/internal/p;->ǃ(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 2094
    invoke-virtual {v2, v4}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    if-nez p0, :cond_2

    if-nez v3, :cond_2

    move-object v3, v1

    goto :goto_2

    :cond_2
    if-nez p0, :cond_3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    if-nez p0, :cond_5

    .line 3083
    :cond_4
    invoke-virtual {v3}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    cmp-long v0, v6, v4

    if-gez v0, :cond_5

    goto :goto_2

    :cond_5
    move-object v3, p0

    :goto_2
    if-eqz v3, :cond_6

    move-object v1, v3

    :catchall_0
    :cond_6
    return-object v1
.end method

.method private static ǃ(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 4

    .line 22
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 23
    invoke-static {p0, v3}, Lcom/appsflyer/AndroidUtils;->isPermissionAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
