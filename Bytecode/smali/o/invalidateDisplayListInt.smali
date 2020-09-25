.class public final Lo/invalidateDisplayListInt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J$\u0010\u000c\u001a\u0004\u0018\u00010\u00012\u0008\u0010\r\u001a\u0004\u0018\u00010\n2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\nJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014J\u0008\u0010\u0015\u001a\u00020\u0016H\u0002J\u0008\u0010\u0017\u001a\u00020\u0012H\u0007J\"\u0010\u0018\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\nH\u0007J+\u0010\u001b\u001a\u00020\n\"\u0004\u0008\u0000\u0010\u001c2\u0006\u0010\u001d\u001a\u0002H\u001c2\u0006\u0010\u0010\u001a\u00020\n2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u001eJ5\u0010\u001f\u001a\u00020\u0012\"\u0004\u0008\u0000\u0010\u001c2\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010 \u001a\u0002H\u001c2\u0006\u0010\u0010\u001a\u00020\n2\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u000fH\u0007\u00a2\u0006\u0002\u0010!R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0008X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/dreamplug/network/internals/CacheManager;",
        "",
        "()V",
        "CACHE_DIR",
        "Ljava/io/File;",
        "DEBUG_CACHE",
        "",
        "MAX_ENTRY_OF_A_KEY",
        "",
        "TAG",
        "",
        "TOTAL_MAX_SIZE_IN_BYTES",
        "fromJson",
        "json",
        "typeOfT",
        "Ljava/lang/reflect/Type;",
        "serializerType",
        "init",
        "",
        "context",
        "Landroid/content/Context;",
        "newdiskLruCacheInstance",
        "Lokhttp3/internal/cache/DiskLruCache;",
        "purgeAll",
        "read",
        "key",
        "type",
        "toJson",
        "T",
        "src",
        "(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/String;",
        "write",
        "value",
        "(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;)V",
        "network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static extraCallback:Ljava/io/File;

.field public static final onNavigationEvent:Lo/invalidateDisplayListInt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lo/invalidateDisplayListInt;

    invoke-direct {v0}, Lo/invalidateDisplayListInt;-><init>()V

    sput-object v0, Lo/invalidateDisplayListInt;->onNavigationEvent:Lo/invalidateDisplayListInt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/getPrevName;
    .locals 6

    .line 44
    sget-object v0, Lo/getEventCache;->onPostMessage:Lo/getEventCache;

    .line 45
    sget-object v1, Lo/invalidateDisplayListInt;->extraCallback:Ljava/io/File;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/32 v4, 0x500000

    .line 44
    invoke-static/range {v0 .. v5}, Lo/getPrevName;->onPostMessage(Lo/getEventCache;Ljava/io/File;IIJ)Lo/getPrevName;

    move-result-object v0

    const-string v1, "DiskLruCache.create(File\u2026X_SIZE_IN_BYTES.toLong())"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ICustomTabsCallback(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    sget-object v0, Lo/invalidateDisplayListInt;->extraCallback:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "context\n                .cacheDir"

    invoke-static {p0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/CacheManager"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lo/invalidateDisplayListInt;->extraCallback:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public static extraCallback(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "serializerType"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    sget-object v0, Lo/getScrapViewAt;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {p2, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->extraCallback()Lo/writeStringNoTag;

    move-result-object p2

    .line 1845
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 1846
    invoke-virtual {p2, v0, p1}, Lo/writeStringNoTag;->extraCallback(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 107
    :cond_0
    sget-object p2, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object p2

    .line 2068
    sget-object v0, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    const/4 v1, 0x0

    .line 2098
    invoke-virtual {p2, p1, v0, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    .line 107
    invoke-virtual {p1, p0}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, "serializerType"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lo/getScrapViewAt;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->extraCallback()Lo/writeStringNoTag;

    move-result-object p1

    if-nez p0, :cond_0

    .line 2616
    sget-object p0, Lo/writeSInt64NoTag;->onMessageChannelReady:Lo/writeSInt64NoTag;

    invoke-virtual {p1, p0}, Lo/writeStringNoTag;->onMessageChannelReady(Lo/writeEnumNoTag;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2618
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lo/writeStringNoTag;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    const-string p1, "gson.toJson(src)"

    .line 111
    invoke-static {p0, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 112
    :cond_1
    sget-object p1, Lo/factorInBindTime;->ICustomTabsCallback:Lo/factorInBindTime;

    invoke-static {}, Lo/factorInBindTime;->ICustomTabsCallback()Lo/sessionFile;

    move-result-object p1

    .line 3068
    sget-object v0, Lo/serializeBeginSession;->onMessageChannelReady:Ljava/util/Set;

    const/4 v1, 0x0

    .line 3098
    invoke-virtual {p1, p2, v0, v1}, Lo/sessionFile;->onMessageChannelReady(Ljava/lang/reflect/Type;Ljava/util/Set;Ljava/lang/String;)Lo/JniNativeApi;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 112
    invoke-virtual {p1, p0}, Lo/JniNativeApi;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "(moshi.adapter<Any>(type\u2026onAdapter<T>).toJson(src)"

    invoke-static {p0, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_2
    new-instance p0, Lkotlin/TypeCastException;

    const-string p1, "null cannot be cast to non-null type com.squareup.moshi.JsonAdapter<T>"

    invoke-direct {p0, p1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
