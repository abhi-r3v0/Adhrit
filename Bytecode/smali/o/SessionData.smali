.class public final Lo/SessionData;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ResultJsonAdapter;


# instance fields
.field private final ICustomTabsCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/InitPayloadJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:Lo/ResultJsonAdapter;

.field private asBinder:Lo/ResultJsonAdapter;

.field private asInterface:Lo/ResultJsonAdapter;

.field private extraCallback:Lo/ResultJsonAdapter;

.field private newSession:Lo/ResultJsonAdapter;

.field private onMessageChannelReady:Lo/ResultJsonAdapter;

.field private final onNavigationEvent:Landroid/content/Context;

.field private final onPostMessage:Lo/ResultJsonAdapter;

.field private onRelationshipValidationResult:Lo/ResultJsonAdapter;

.field private onTransact:Lo/ResultJsonAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/ResultJsonAdapter;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lo/SessionData;->onNavigationEvent:Landroid/content/Context;

    .line 133
    invoke-static {p2}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/ResultJsonAdapter;

    iput-object p1, p0, Lo/SessionData;->onPostMessage:Lo/ResultJsonAdapter;

    .line 134
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/SessionData;->ICustomTabsCallback:Ljava/util/List;

    return-void
.end method

.method private ICustomTabsCallback()Lo/ResultJsonAdapter;
    .locals 1

    .line 287
    iget-object v0, p0, Lo/SessionData;->asInterface:Lo/ResultJsonAdapter;

    if-nez v0, :cond_0

    .line 288
    new-instance v0, Lcom/google/android/exoplayer2/upstream/UdpDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/UdpDataSource;-><init>()V

    iput-object v0, p0, Lo/SessionData;->asInterface:Lo/ResultJsonAdapter;

    .line 289
    invoke-direct {p0, v0}, Lo/SessionData;->onNavigationEvent(Lo/ResultJsonAdapter;)V

    .line 291
    :cond_0
    iget-object v0, p0, Lo/SessionData;->asInterface:Lo/ResultJsonAdapter;

    return-object v0
.end method

.method private ICustomTabsCallback$Stub()Lo/ResultJsonAdapter;
    .locals 2

    .line 349
    iget-object v0, p0, Lo/SessionData;->ICustomTabsCallback$Stub:Lo/ResultJsonAdapter;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;

    iget-object v1, p0, Lo/SessionData;->onNavigationEvent:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/RawResourceDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/SessionData;->ICustomTabsCallback$Stub:Lo/ResultJsonAdapter;

    .line 351
    invoke-direct {p0, v0}, Lo/SessionData;->onNavigationEvent(Lo/ResultJsonAdapter;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lo/SessionData;->ICustomTabsCallback$Stub:Lo/ResultJsonAdapter;

    return-object v0
.end method

.method private asBinder()Lo/ResultJsonAdapter;
    .locals 1

    .line 341
    iget-object v0, p0, Lo/SessionData;->asBinder:Lo/ResultJsonAdapter;

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Lo/Result;

    invoke-direct {v0}, Lo/Result;-><init>()V

    iput-object v0, p0, Lo/SessionData;->asBinder:Lo/ResultJsonAdapter;

    .line 343
    invoke-direct {p0, v0}, Lo/SessionData;->onNavigationEvent(Lo/ResultJsonAdapter;)V

    .line 345
    :cond_0
    iget-object v0, p0, Lo/SessionData;->asBinder:Lo/ResultJsonAdapter;

    return-object v0
.end method

.method private asInterface()Lo/ResultJsonAdapter;
    .locals 3

    .line 319
    iget-object v0, p0, Lo/SessionData;->onRelationshipValidationResult:Lo/ResultJsonAdapter;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.google.android.exoplayer2.ext.rtmp.RtmpDataSource"

    .line 322
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 323
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ResultJsonAdapter;

    iput-object v0, p0, Lo/SessionData;->onRelationshipValidationResult:Lo/ResultJsonAdapter;

    .line 325
    invoke-direct {p0, v0}, Lo/SessionData;->onNavigationEvent(Lo/ResultJsonAdapter;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 331
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error instantiating RTMP extension"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    .line 328
    invoke-static {v0, v1}, Lo/JusPayWrapper;->extraCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :goto_0
    iget-object v0, p0, Lo/SessionData;->onRelationshipValidationResult:Lo/ResultJsonAdapter;

    if-nez v0, :cond_0

    .line 334
    iget-object v0, p0, Lo/SessionData;->onPostMessage:Lo/ResultJsonAdapter;

    iput-object v0, p0, Lo/SessionData;->onRelationshipValidationResult:Lo/ResultJsonAdapter;

    .line 337
    :cond_0
    iget-object v0, p0, Lo/SessionData;->onRelationshipValidationResult:Lo/ResultJsonAdapter;

    return-object v0
.end method

.method private extraCallback(Lo/ResultJsonAdapter;Lo/InitPayloadJsonAdapter;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 365
    invoke-interface {p1, p2}, Lo/ResultJsonAdapter;->onNavigationEvent(Lo/InitPayloadJsonAdapter;)V

    :cond_0
    return-void
.end method

.method private onNavigationEvent()Lo/ResultJsonAdapter;
    .locals 1

    .line 295
    iget-object v0, p0, Lo/SessionData;->onMessageChannelReady:Lo/ResultJsonAdapter;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/google/android/exoplayer2/upstream/FileDataSource;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/upstream/FileDataSource;-><init>()V

    iput-object v0, p0, Lo/SessionData;->onMessageChannelReady:Lo/ResultJsonAdapter;

    .line 297
    invoke-direct {p0, v0}, Lo/SessionData;->onNavigationEvent(Lo/ResultJsonAdapter;)V

    .line 299
    :cond_0
    iget-object v0, p0, Lo/SessionData;->onMessageChannelReady:Lo/ResultJsonAdapter;

    return-object v0
.end method

.method private onNavigationEvent(Lo/ResultJsonAdapter;)V
    .locals 2

    const/4 v0, 0x0

    .line 357
    :goto_0
    iget-object v1, p0, Lo/SessionData;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 358
    iget-object v1, p0, Lo/SessionData;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/InitPayloadJsonAdapter;

    invoke-interface {p1, v1}, Lo/ResultJsonAdapter;->onNavigationEvent(Lo/InitPayloadJsonAdapter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onRelationshipValidationResult()Lo/ResultJsonAdapter;
    .locals 2

    .line 311
    iget-object v0, p0, Lo/SessionData;->onTransact:Lo/ResultJsonAdapter;

    if-nez v0, :cond_0

    .line 312
    new-instance v0, Lcom/google/android/exoplayer2/upstream/ContentDataSource;

    iget-object v1, p0, Lo/SessionData;->onNavigationEvent:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/ContentDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/SessionData;->onTransact:Lo/ResultJsonAdapter;

    .line 313
    invoke-direct {p0, v0}, Lo/SessionData;->onNavigationEvent(Lo/ResultJsonAdapter;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lo/SessionData;->onTransact:Lo/ResultJsonAdapter;

    return-object v0
.end method

.method private onTransact()Lo/ResultJsonAdapter;
    .locals 2

    .line 303
    iget-object v0, p0, Lo/SessionData;->extraCallback:Lo/ResultJsonAdapter;

    if-nez v0, :cond_0

    .line 304
    new-instance v0, Lcom/google/android/exoplayer2/upstream/AssetDataSource;

    iget-object v1, p0, Lo/SessionData;->onNavigationEvent:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/upstream/AssetDataSource;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/SessionData;->extraCallback:Lo/ResultJsonAdapter;

    .line 305
    invoke-direct {p0, v0}, Lo/SessionData;->onNavigationEvent(Lo/ResultJsonAdapter;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lo/SessionData;->extraCallback:Lo/ResultJsonAdapter;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lo/SessionData;->newSession:Lo/ResultJsonAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 233
    iget-object v0, p1, Lo/PaymentRequestJsonAdapter;->onPostMessage:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 234
    iget-object v1, p1, Lo/PaymentRequestJsonAdapter;->onPostMessage:Landroid/net/Uri;

    invoke-static {v1}, Lo/ThirdPartyAuthorizeRequest;->onPostMessage(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    iget-object v0, p1, Lo/PaymentRequestJsonAdapter;->onPostMessage:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "/android_asset/"

    .line 236
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    invoke-direct {p0}, Lo/SessionData;->onTransact()Lo/ResultJsonAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/SessionData;->newSession:Lo/ResultJsonAdapter;

    goto :goto_1

    .line 239
    :cond_1
    invoke-direct {p0}, Lo/SessionData;->onNavigationEvent()Lo/ResultJsonAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/SessionData;->newSession:Lo/ResultJsonAdapter;

    goto :goto_1

    :cond_2
    const-string v1, "asset"

    .line 241
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    invoke-direct {p0}, Lo/SessionData;->onTransact()Lo/ResultJsonAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/SessionData;->newSession:Lo/ResultJsonAdapter;

    goto :goto_1

    :cond_3
    const-string v1, "content"

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 244
    invoke-direct {p0}, Lo/SessionData;->onRelationshipValidationResult()Lo/ResultJsonAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/SessionData;->newSession:Lo/ResultJsonAdapter;

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "rtmp"

    .line 245
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 246
    invoke-direct {p0}, Lo/SessionData;->asInterface()Lo/ResultJsonAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/SessionData;->newSession:Lo/ResultJsonAdapter;

    goto :goto_1

    :cond_5
    const-string/jumbo v1, "udp"

    .line 247
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 248
    invoke-direct {p0}, Lo/SessionData;->ICustomTabsCallback()Lo/ResultJsonAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/SessionData;->newSession:Lo/ResultJsonAdapter;

    goto :goto_1

    :cond_6
    const-string v1, "data"

    .line 249
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 250
    invoke-direct {p0}, Lo/SessionData;->asBinder()Lo/ResultJsonAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/SessionData;->newSession:Lo/ResultJsonAdapter;

    goto :goto_1

    :cond_7
    const-string v1, "rawresource"

    .line 251
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 252
    invoke-direct {p0}, Lo/SessionData;->ICustomTabsCallback$Stub()Lo/ResultJsonAdapter;

    move-result-object v0

    iput-object v0, p0, Lo/SessionData;->newSession:Lo/ResultJsonAdapter;

    goto :goto_1

    .line 254
    :cond_8
    iget-object v0, p0, Lo/SessionData;->onPostMessage:Lo/ResultJsonAdapter;

    iput-object v0, p0, Lo/SessionData;->newSession:Lo/ResultJsonAdapter;

    .line 257
    :goto_1
    iget-object v0, p0, Lo/SessionData;->newSession:Lo/ResultJsonAdapter;

    invoke-interface {v0, p1}, Lo/ResultJsonAdapter;->ICustomTabsCallback(Lo/PaymentRequestJsonAdapter;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final extraCallback()Landroid/net/Uri;
    .locals 1

    .line 267
    iget-object v0, p0, Lo/SessionData;->newSession:Lo/ResultJsonAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lo/ResultJsonAdapter;->extraCallback()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final onMessageChannelReady([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lo/SessionData;->newSession:Lo/ResultJsonAdapter;

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ResultJsonAdapter;

    invoke-interface {v0, p1, p2, p3}, Lo/ResultJsonAdapter;->onMessageChannelReady([BII)I

    move-result p1

    return p1
.end method

.method public final onMessageChannelReady()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    iget-object v0, p0, Lo/SessionData;->newSession:Lo/ResultJsonAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 279
    :try_start_0
    invoke-interface {v0}, Lo/ResultJsonAdapter;->onMessageChannelReady()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iput-object v1, p0, Lo/SessionData;->newSession:Lo/ResultJsonAdapter;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lo/SessionData;->newSession:Lo/ResultJsonAdapter;

    .line 282
    throw v0

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/InitPayloadJsonAdapter;)V
    .locals 1

    .line 218
    iget-object v0, p0, Lo/SessionData;->onPostMessage:Lo/ResultJsonAdapter;

    invoke-interface {v0, p1}, Lo/ResultJsonAdapter;->onNavigationEvent(Lo/InitPayloadJsonAdapter;)V

    .line 219
    iget-object v0, p0, Lo/SessionData;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    iget-object v0, p0, Lo/SessionData;->onMessageChannelReady:Lo/ResultJsonAdapter;

    invoke-direct {p0, v0, p1}, Lo/SessionData;->extraCallback(Lo/ResultJsonAdapter;Lo/InitPayloadJsonAdapter;)V

    .line 221
    iget-object v0, p0, Lo/SessionData;->extraCallback:Lo/ResultJsonAdapter;

    invoke-direct {p0, v0, p1}, Lo/SessionData;->extraCallback(Lo/ResultJsonAdapter;Lo/InitPayloadJsonAdapter;)V

    .line 222
    iget-object v0, p0, Lo/SessionData;->onTransact:Lo/ResultJsonAdapter;

    invoke-direct {p0, v0, p1}, Lo/SessionData;->extraCallback(Lo/ResultJsonAdapter;Lo/InitPayloadJsonAdapter;)V

    .line 223
    iget-object v0, p0, Lo/SessionData;->onRelationshipValidationResult:Lo/ResultJsonAdapter;

    invoke-direct {p0, v0, p1}, Lo/SessionData;->extraCallback(Lo/ResultJsonAdapter;Lo/InitPayloadJsonAdapter;)V

    .line 224
    iget-object v0, p0, Lo/SessionData;->asInterface:Lo/ResultJsonAdapter;

    invoke-direct {p0, v0, p1}, Lo/SessionData;->extraCallback(Lo/ResultJsonAdapter;Lo/InitPayloadJsonAdapter;)V

    .line 225
    iget-object v0, p0, Lo/SessionData;->asBinder:Lo/ResultJsonAdapter;

    invoke-direct {p0, v0, p1}, Lo/SessionData;->extraCallback(Lo/ResultJsonAdapter;Lo/InitPayloadJsonAdapter;)V

    .line 226
    iget-object v0, p0, Lo/SessionData;->ICustomTabsCallback$Stub:Lo/ResultJsonAdapter;

    invoke-direct {p0, v0, p1}, Lo/SessionData;->extraCallback(Lo/ResultJsonAdapter;Lo/InitPayloadJsonAdapter;)V

    return-void
.end method

.method public final onPostMessage()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lo/SessionData;->newSession:Lo/ResultJsonAdapter;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lo/ResultJsonAdapter;->onPostMessage()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
