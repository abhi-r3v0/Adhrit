.class public final Lo/getIconBitmap$onNavigationEvent;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getIconBitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# static fields
.field public static final alpha:I = 0x7f040035

.field public static final coordinatorLayoutStyle:I = 0x7f0400f6

.field public static final font:I = 0x7f0401bc

.field public static final fontProviderAuthority:I = 0x7f0401be

.field public static final fontProviderCerts:I = 0x7f0401bf

.field public static final fontProviderFetchStrategy:I = 0x7f0401c0

.field public static final fontProviderFetchTimeout:I = 0x7f0401c1

.field public static final fontProviderPackage:I = 0x7f0401c2

.field public static final fontProviderQuery:I = 0x7f0401c3

.field public static final fontStyle:I = 0x7f0401c4

.field public static final fontVariationSettings:I = 0x7f0401c5

.field public static final fontWeight:I = 0x7f0401c6

.field public static final keylines:I = 0x7f040258

.field public static final layout_anchor:I = 0x7f04025e

.field public static final layout_anchorGravity:I = 0x7f04025f

.field public static final layout_behavior:I = 0x7f040260

.field public static final layout_dodgeInsetEdges:I = 0x7f04028f

.field public static final layout_insetEdge:I = 0x7f040299

.field public static final layout_keyline:I = 0x7f04029a

.field public static final statusBarBackground:I = 0x7f0403e0

.field public static final ttcIndex:I = 0x7f040460


# instance fields
.field private final extraCallback:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1024
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1025
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/getIconBitmap$onNavigationEvent;->extraCallback:Landroid/content/Context;

    return-void
.end method

.method static extraCallback(Ljava/lang/String;Lo/setShowingForActionMode;Z)Ljava/lang/String;
    .locals 3

    .line 2153
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lottie_cache_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\\W+"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    .line 3019
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, ".temp"

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lo/setShowingForActionMode;->onMessageChannelReady:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2153
    :cond_0
    iget-object p0, p1, Lo/setShowingForActionMode;->onMessageChannelReady:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extraCallback([B)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, "SHA-1"

    .line 4038
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    const/4 v1, 0x0

    .line 4039
    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljava/security/MessageDigest;->update([BII)V

    .line 4040
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const/16 v0, 0xb

    .line 4041
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4043
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method final onNavigationEvent(Ljava/lang/String;Ljava/io/InputStream;Lo/setShowingForActionMode;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2085
    invoke-static {p1, p3, v0}, Lo/getIconBitmap$onNavigationEvent;->extraCallback(Ljava/lang/String;Lo/setShowingForActionMode;Z)Ljava/lang/String;

    move-result-object p1

    .line 2086
    new-instance p3, Ljava/io/File;

    invoke-virtual {p0}, Lo/getIconBitmap$onNavigationEvent;->onPostMessage()Ljava/io/File;

    move-result-object v0

    invoke-direct {p3, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2088
    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v0, 0x400

    :try_start_1
    new-array v0, v0, [B

    .line 2094
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 2095
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 2098
    :cond_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2100
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2103
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    return-object p3

    :catchall_0
    move-exception p3

    .line 2100
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    throw p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 2103
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    throw p1
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/getPercentRating;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/getPercentRating<",
            "Lo/setShowingForActionMode;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1130
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lo/getIconBitmap$onNavigationEvent;->onPostMessage()Ljava/io/File;

    move-result-object v2

    sget-object v3, Lo/setShowingForActionMode;->onNavigationEvent:Lo/setShowingForActionMode;

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lo/getIconBitmap$onNavigationEvent;->extraCallback(Ljava/lang/String;Lo/setShowingForActionMode;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1134
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Lo/getIconBitmap$onNavigationEvent;->onPostMessage()Ljava/io/File;

    move-result-object v2

    sget-object v3, Lo/setShowingForActionMode;->ICustomTabsCallback:Lo/setShowingForActionMode;

    invoke-static {p1, v3, v4}, Lo/getIconBitmap$onNavigationEvent;->extraCallback(Ljava/lang/String;Lo/setShowingForActionMode;Z)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    if-nez v1, :cond_2

    return-object v0

    .line 1063
    :cond_2
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1069
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v3, ".zip"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1070
    sget-object v0, Lo/setShowingForActionMode;->ICustomTabsCallback:Lo/setShowingForActionMode;

    goto :goto_1

    .line 1072
    :cond_3
    sget-object v0, Lo/setShowingForActionMode;->onNavigationEvent:Lo/setShowingForActionMode;

    .line 1075
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Cache hit for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/onContentScrollStarted;->ICustomTabsCallback(Ljava/lang/String;)V

    .line 1076
    new-instance p1, Lo/getPercentRating;

    invoke-direct {p1, v0, v2}, Lo/getPercentRating;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :catch_0
    return-object v0
.end method

.method onPostMessage()Ljava/io/File;
    .locals 3

    .line 2142
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lo/getIconBitmap$onNavigationEvent;->extraCallback:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "lottie_network_cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2143
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2144
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 2146
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2147
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-object v0
.end method
