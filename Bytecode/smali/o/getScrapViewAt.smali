.class public final Lo/getScrapViewAt;
.super Lo/ensureIndexed$onPostMessage;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getScrapViewAt$onPostMessage;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0010\u001b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006JE\u0010\u0007\u001a\u000e\u0012\u0002\u0008\u0003\u0012\u0004\u0012\u00020\t\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016\u00a2\u0006\u0002\u0010\u0012J7\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0002\u0008\u0003\u0018\u00010\u00082\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016\u00a2\u0006\u0002\u0010\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/dreamplug/network/internals/MoshiMigrationConverterFactory;",
        "Lretrofit2/Converter$Factory;",
        "gsonConverterFactory",
        "Lretrofit2/converter/gson/GsonConverterFactory;",
        "moshiConverterFactory",
        "Lretrofit2/converter/moshi/MoshiConverterFactory;",
        "(Lretrofit2/converter/gson/GsonConverterFactory;Lretrofit2/converter/moshi/MoshiConverterFactory;)V",
        "requestBodyConverter",
        "Lretrofit2/Converter;",
        "Lokhttp3/RequestBody;",
        "type",
        "Ljava/lang/reflect/Type;",
        "parameterAnnotations",
        "",
        "",
        "methodAnnotations",
        "retrofit",
        "Lretrofit2/Retrofit;",
        "(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;",
        "responseBodyConverter",
        "Lokhttp3/ResponseBody;",
        "annotations",
        "(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;",
        "Companion",
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
.field public static final ICustomTabsCallback:Ljava/lang/String; = "GSON"

.field public static final onMessageChannelReady:Ljava/lang/String; = "MOSHI"


# instance fields
.field private final extraCallback:Lo/decodeStringStreaming;

.field private final onNavigationEvent:Lo/getBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lo/decodeStringStreaming;Lo/getBuffer;)V
    .locals 1

    const-string v0, "gsonConverterFactory"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "moshiConverterFactory"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lo/ensureIndexed$onPostMessage;-><init>()V

    iput-object p1, p0, Lo/getScrapViewAt;->extraCallback:Lo/decodeStringStreaming;

    iput-object p2, p0, Lo/getScrapViewAt;->onNavigationEvent:Lo/getBuffer;

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/ensureIndexed;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lo/NodeFromJSON;",
            ")",
            "Lo/ensureIndexed<",
            "*",
            "Lo/isCompleteForPath;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameterAnnotations"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "methodAnnotations"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "retrofit"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    .line 31
    invoke-static {v2}, Lo/extraCallback;->extraCallback(Ljava/lang/annotation/Annotation;)Lo/viewExistsForQuery;

    move-result-object v2

    const-class v3, Lo/getChangedScrapViewForPosition;

    invoke-static {v3}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v3

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 32
    iget-object p2, p0, Lo/getScrapViewAt;->extraCallback:Lo/decodeStringStreaming;

    .line 1071
    iget-object p3, p2, Lo/decodeStringStreaming;->ICustomTabsCallback:Lo/writeStringNoTag;

    invoke-static {p1}, Lo/writeRawByte;->extraCallback(Ljava/lang/reflect/Type;)Lo/writeRawByte;

    move-result-object p1

    invoke-virtual {p3, p1}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object p1

    .line 1072
    new-instance p3, Lo/decodeString;

    iget-object p2, p2, Lo/decodeStringStreaming;->ICustomTabsCallback:Lo/writeStringNoTag;

    invoke-direct {p3, p2, p1}, Lo/decodeString;-><init>(Lo/writeStringNoTag;Lo/computeDoubleSize;)V

    return-object p3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lo/getScrapViewAt;->onNavigationEvent:Lo/getBuffer;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/ensureIndexed$onPostMessage;->extraCallback(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/ensureIndexed;

    move-result-object p1

    return-object p1
.end method

.method public final onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/ensureIndexed;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lo/NodeFromJSON;",
            ")",
            "Lo/ensureIndexed<",
            "Lo/getChildKey;",
            "*>;"
        }
    .end annotation

    const-string/jumbo v0, "type"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "retrofit"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 18
    invoke-static {v2}, Lo/extraCallback;->extraCallback(Ljava/lang/annotation/Annotation;)Lo/viewExistsForQuery;

    move-result-object v2

    const-class v3, Lo/getChangedScrapViewForPosition;

    invoke-static {v3}, Lo/applyEmulatorSettings;->ICustomTabsCallback(Ljava/lang/Class;)Lo/viewExistsForQuery;

    move-result-object v3

    invoke-static {v2, v3}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 19
    iget-object p2, p0, Lo/getScrapViewAt;->extraCallback:Lo/decodeStringStreaming;

    .line 1064
    iget-object p3, p2, Lo/decodeStringStreaming;->ICustomTabsCallback:Lo/writeStringNoTag;

    invoke-static {p1}, Lo/writeRawByte;->extraCallback(Ljava/lang/reflect/Type;)Lo/writeRawByte;

    move-result-object p1

    invoke-virtual {p3, p1}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object p1

    .line 1065
    new-instance p3, Lo/appendBytes;

    iget-object p2, p2, Lo/decodeStringStreaming;->ICustomTabsCallback:Lo/writeStringNoTag;

    invoke-direct {p3, p2, p1}, Lo/appendBytes;-><init>(Lo/writeStringNoTag;Lo/computeDoubleSize;)V

    return-object p3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lo/getScrapViewAt;->onNavigationEvent:Lo/getBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lo/ensureIndexed$onPostMessage;->onMessageChannelReady(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lo/NodeFromJSON;)Lo/ensureIndexed;

    move-result-object p1

    return-object p1
.end method
