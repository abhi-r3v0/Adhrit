.class public final Lo/saveUserMerge;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/picasso/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/saveUserMerge$onPostMessage;
    }
.end annotation


# static fields
.field private static volatile ICustomTabsCallback:Ljava/lang/Object;

.field private static final extraCallback:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final onMessageChannelReady:Ljava/lang/Object;


# instance fields
.field private final onPostMessage:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lo/saveUserMerge;->onMessageChannelReady:Ljava/lang/Object;

    .line 40
    new-instance v0, Lo/saveUserMerge$1;

    invoke-direct {v0}, Lo/saveUserMerge$1;-><init>()V

    sput-object v0, Lo/saveUserMerge;->extraCallback:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/saveUserMerge;->onPostMessage:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/net/Uri;I)Lcom/squareup/picasso/Downloader$onNavigationEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_2

    .line 62
    iget-object v0, p0, Lo/saveUserMerge;->onPostMessage:Landroid/content/Context;

    .line 1114
    sget-object v1, Lo/saveUserMerge;->ICustomTabsCallback:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 1116
    :try_start_0
    sget-object v1, Lo/saveUserMerge;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1117
    :try_start_1
    sget-object v2, Lo/saveUserMerge;->ICustomTabsCallback:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 1128
    invoke-static {v0}, Lo/saveUserOverwrite;->extraCallback(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 1129
    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v2

    if-nez v2, :cond_0

    .line 1131
    invoke-static {v0}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/io/File;)J

    move-result-wide v2

    .line 1132
    invoke-static {v0, v2, v3}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;

    move-result-object v2

    .line 1118
    :cond_0
    sput-object v2, Lo/saveUserMerge;->ICustomTabsCallback:Ljava/lang/Object;

    .line 1120
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    nop

    .line 2054
    :cond_2
    :goto_0
    new-instance v0, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/perf/network/FirebasePerfUrlConnection;->instrument(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/URLConnection;

    check-cast p1, Ljava/net/HttpURLConnection;

    const/16 v0, 0x3a98

    .line 2055
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x4e20

    .line 2056
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v0, 0x1

    .line 66
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setUseCaches(Z)V

    if-eqz p2, :cond_7

    .line 71
    invoke-static {p2}, Lo/lambda$addTokenChangeListener$2;->onPostMessage(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "only-if-cached,max-age=2147483647"

    goto :goto_1

    .line 74
    :cond_3
    sget-object v0, Lo/saveUserMerge;->extraCallback:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 77
    invoke-static {p2}, Lo/lambda$addTokenChangeListener$2;->ICustomTabsCallback(I)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "no-cache"

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    :cond_4
    invoke-static {p2}, Lo/lambda$addTokenChangeListener$2;->onNavigationEvent(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    const/16 v1, 0x2c

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, "no-store"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "Cache-Control"

    .line 90
    invoke-virtual {p1, v1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    :cond_7
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_8

    const/4 p2, -0x1

    const-string v0, "Content-Length"

    .line 100
    invoke-virtual {p1, v0, p2}, Ljava/net/URLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p2

    int-to-long v0, p2

    const-string p2, "X-Android-Response-Source"

    .line 101
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lo/saveUserOverwrite;->onPostMessage(Ljava/lang/String;)Z

    move-result p2

    .line 103
    new-instance v2, Lcom/squareup/picasso/Downloader$onNavigationEvent;

    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/squareup/picasso/Downloader$onNavigationEvent;-><init>(Ljava/io/InputStream;ZJ)V

    return-object v2

    .line 95
    :cond_8
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 96
    new-instance v1, Lcom/squareup/picasso/Downloader$ResponseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, p2, v0}, Lcom/squareup/picasso/Downloader$ResponseException;-><init>(Ljava/lang/String;II)V

    throw v1
.end method
