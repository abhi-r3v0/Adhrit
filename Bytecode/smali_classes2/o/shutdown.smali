.class public final Lo/shutdown;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/squareup/picasso/Downloader;


# instance fields
.field private final onPostMessage:Lo/setValueInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-static {p1}, Lo/saveUserOverwrite;->extraCallback(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/shutdown;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 2

    .line 55
    invoke-static {p1}, Lo/saveUserOverwrite;->ICustomTabsCallback(Ljava/io/File;)J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lo/shutdown;-><init>(Ljava/io/File;J)V

    return-void
.end method

.method private constructor <init>(Ljava/io/File;J)V
    .locals 14

    move-object v0, p0

    .line 1031
    new-instance v1, Lo/setValueInternal;

    invoke-direct {v1}, Lo/setValueInternal;-><init>()V

    .line 1032
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "unit == null"

    if-eqz v2, :cond_8

    const-wide/16 v4, 0x3a98

    .line 1189
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    const-string v2, "Timeout too large."

    const-wide/32 v6, 0x7fffffff

    cmp-long v8, v4, v6

    if-gtz v8, :cond_7

    const-string v8, "Timeout too small."

    const-wide/16 v9, 0x0

    cmp-long v11, v4, v9

    if-nez v11, :cond_0

    .line 1191
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    long-to-int v5, v4

    .line 1192
    iput v5, v1, Lo/setValueInternal;->IPostMessageService$Stub:I

    .line 1033
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    if-eqz v4, :cond_6

    const-wide/16 v11, 0x4e20

    .line 1209
    invoke-virtual {v4, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v13, v4, v6

    if-gtz v13, :cond_5

    cmp-long v13, v4, v9

    if-nez v13, :cond_1

    .line 1211
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    long-to-int v5, v4

    .line 1212
    iput v5, v1, Lo/setValueInternal;->ICustomTabsService$Stub$Proxy:I

    .line 1034
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    if-eqz v4, :cond_4

    .line 1227
    invoke-virtual {v4, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long v5, v3, v6

    if-gtz v5, :cond_3

    cmp-long v2, v3, v9

    if-nez v2, :cond_2

    .line 1229
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    long-to-int v2, v3

    .line 1230
    iput v2, v1, Lo/setValueInternal;->ICustomTabsService$Stub:I

    .line 76
    invoke-direct {p0, v1}, Lo/shutdown;-><init>(Lo/setValueInternal;)V

    .line 78
    :try_start_0
    iget-object v1, v0, Lo/shutdown;->onPostMessage:Lo/setValueInternal;

    new-instance v2, Lo/serializeSessionDevice;

    move-object v3, p1

    move-wide/from16 v4, p2

    invoke-direct {v2, p1, v4, v5}, Lo/serializeSessionDevice;-><init>(Ljava/io/File;J)V

    .line 1298
    iput-object v2, v1, Lo/setValueInternal;->warmup:Lo/serializeSessionDevice;

    const/4 v2, 0x0

    .line 1299
    iput-object v2, v1, Lo/setValueInternal;->ICustomTabsService:Lo/setHijackHash;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void

    .line 1228
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1226
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1210
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1208
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1190
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1188
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private constructor <init>(Lo/setValueInternal;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lo/shutdown;->onPostMessage:Lo/setValueInternal;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/net/Uri;I)Lcom/squareup/picasso/Downloader$onNavigationEvent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_3

    .line 98
    invoke-static {p2}, Lo/lambda$addTokenChangeListener$2;->onPostMessage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    sget-object v2, Lo/onChildRemoved;->ICustomTabsCallback:Lo/onChildRemoved;

    goto :goto_0

    .line 101
    :cond_0
    new-instance v2, Lo/onChildRemoved$onMessageChannelReady;

    invoke-direct {v2}, Lo/onChildRemoved$onMessageChannelReady;-><init>()V

    .line 102
    invoke-static {p2}, Lo/lambda$addTokenChangeListener$2;->ICustomTabsCallback(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2283
    iput-boolean v0, v2, Lo/onChildRemoved$onMessageChannelReady;->onNavigationEvent:Z

    .line 105
    :cond_1
    invoke-static {p2}, Lo/lambda$addTokenChangeListener$2;->onNavigationEvent(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 2289
    iput-boolean v0, v2, Lo/onChildRemoved$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 2363
    :cond_2
    new-instance v3, Lo/onChildRemoved;

    invoke-direct {v3, v2, v1}, Lo/onChildRemoved;-><init>(Lo/onChildRemoved$onMessageChannelReady;B)V

    move-object v2, v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 112
    :goto_0
    new-instance v3, Lo/fromException$onNavigationEvent;

    invoke-direct {v3}, Lo/fromException$onNavigationEvent;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lo/fromException$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Lo/fromException$onNavigationEvent;

    move-result-object p1

    if-eqz v2, :cond_5

    .line 3218
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3219
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const-string v4, "Cache-Control"

    if-eqz v3, :cond_4

    .line 4202
    iget-object v2, p1, Lo/fromException$onNavigationEvent;->onNavigationEvent:Lo/getRef$ICustomTabsCallback;

    invoke-virtual {v2, v4}, Lo/getRef$ICustomTabsCallback;->extraCallback(Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    goto :goto_1

    .line 5185
    :cond_4
    iget-object v3, p1, Lo/fromException$onNavigationEvent;->onNavigationEvent:Lo/getRef$ICustomTabsCallback;

    invoke-virtual {v3, v4, v2}, Lo/getRef$ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)Lo/getRef$ICustomTabsCallback;

    .line 117
    :cond_5
    :goto_1
    iget-object v2, p0, Lo/shutdown;->onPostMessage:Lo/setValueInternal;

    .line 5277
    iget-object v3, p1, Lo/fromException$onNavigationEvent;->onPostMessage:Lo/fromCode;

    if-eqz v3, :cond_8

    .line 5278
    new-instance v3, Lo/fromException;

    invoke-direct {v3, p1, v1}, Lo/fromException;-><init>(Lo/fromException$onNavigationEvent;B)V

    .line 117
    invoke-virtual {v2, v3}, Lo/setValueInternal;->extraCallback(Lo/fromException;)Lo/onChildAdded;

    move-result-object p1

    invoke-virtual {p1}, Lo/onChildAdded;->extraCallback()Lo/removeValue;

    move-result-object p1

    .line 6088
    iget v2, p1, Lo/removeValue;->ICustomTabsCallback:I

    const/16 v3, 0x12c

    if-ge v2, v3, :cond_7

    .line 7168
    iget-object p2, p1, Lo/removeValue;->ICustomTabsCallback$Stub:Lo/removeValue;

    if-eqz p2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 8130
    :goto_2
    iget-object p1, p1, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    .line 128
    new-instance p2, Lcom/squareup/picasso/Downloader$onNavigationEvent;

    .line 9043
    invoke-virtual {p1}, Lo/updateChildren;->ICustomTabsCallback()Lo/fullLimitUpdateChild;

    move-result-object v1

    invoke-interface {v1}, Lo/fullLimitUpdateChild;->onNavigationEvent()Ljava/io/InputStream;

    move-result-object v1

    .line 128
    invoke-virtual {p1}, Lo/updateChildren;->onMessageChannelReady()J

    move-result-wide v2

    invoke-direct {p2, v1, v0, v2, v3}, Lcom/squareup/picasso/Downloader$onNavigationEvent;-><init>(Ljava/io/InputStream;ZJ)V

    return-object p2

    .line 6130
    :cond_7
    iget-object v0, p1, Lo/removeValue;->onRelationshipValidationResult:Lo/updateChildren;

    .line 120
    invoke-virtual {v0}, Lo/updateChildren;->close()V

    .line 121
    new-instance v0, Lcom/squareup/picasso/Downloader$ResponseException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7101
    iget-object p1, p1, Lo/removeValue;->onNavigationEvent:Ljava/lang/String;

    .line 121
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2, v2}, Lcom/squareup/picasso/Downloader$ResponseException;-><init>(Ljava/lang/String;II)V

    throw v0

    .line 5277
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "url == null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
