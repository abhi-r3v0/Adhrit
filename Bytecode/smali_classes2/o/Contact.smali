.class public final Lo/Contact;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static ICustomTabsCallback:Ljava/lang/String;

.field private static final extraCallback:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/Contact;->extraCallback:Ljava/lang/Object;

    return-void
.end method

.method public static extraCallback()Ljava/lang/String;
    .locals 2

    sget-object v0, Lo/Contact;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/Contact;->ICustomTabsCallback:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static extraCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lo/Contact;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lo/Contact;->ICustomTabsCallback:Ljava/lang/String;

    if-nez v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    :try_start_1
    invoke-virtual {p0, p2, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    const-string p2, "com.google.ads.mediation.MediationAdapter"

    const/4 v1, 0x0

    invoke-static {p2, v1, p0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    new-array v4, v3, [B

    invoke-direct {v2, v4}, Ljava/math/BigInteger;-><init>([B)V

    const-string v4, ","

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_1

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    aget-object v5, p1, v4

    invoke-static {p0, p2, v5}, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string p1, "%X"

    new-array p2, v3, [Ljava/lang/Object;

    aput-object v2, p2, v1

    invoke-static {p0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    sput-object p0, Lo/Contact;->ICustomTabsCallback:Ljava/lang/String;

    goto :goto_2

    :catchall_0
    const-string p0, "err"

    goto :goto_1

    :cond_2
    :goto_2
    sget-object p0, Lo/Contact;->ICustomTabsCallback:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method
