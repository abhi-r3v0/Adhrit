.class public Lo/writeStringNoTag;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeStringNoTag$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static ICustomTabsCallback:Lo/writeRawByte;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/writeRawByte<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private ICustomTabsCallback$Stub:Lo/computeBoolSizeNoTag;

.field private asBinder:Z

.field private asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/computeFloatSize;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Lo/computeSFixed32Size;

.field private newSession:Z

.field public final onMessageChannelReady:Z

.field private onNavigationEvent:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lo/writeRawByte<",
            "*>;",
            "Lo/writeStringNoTag$ICustomTabsCallback<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lo/writeRawByte<",
            "*>;",
            "Lo/computeDoubleSize<",
            "*>;>;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:Lo/computeFixed64Size;

.field private onTransact:Z

.field private warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lo/writeRawByte;->extraCallback(Ljava/lang/Class;)Lo/writeRawByte;

    move-result-object v0

    sput-object v0, Lo/writeStringNoTag;->ICustomTabsCallback:Lo/writeRawByte;

    return-void
.end method

.method public constructor <init>()V
    .locals 13

    .line 186
    sget-object v1, Lo/computeSFixed32Size;->ICustomTabsCallback:Lo/computeSFixed32Size;

    sget-object v2, Lo/writeBytesNoTag;->onPostMessage:Lo/writeBytesNoTag;

    .line 187
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Lo/computeInt32Size;->onPostMessage:Lo/computeInt32Size;

    .line 191
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 192
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    .line 186
    invoke-direct/range {v0 .. v12}, Lo/writeStringNoTag;-><init>(Lo/computeSFixed32Size;Lo/writeUInt32NoTag;Ljava/util/Map;ZZZZZZZLo/computeInt32Size;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lo/computeSFixed32Size;Lo/writeUInt32NoTag;Ljava/util/Map;ZZZZZZZLo/computeInt32Size;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/computeSFixed32Size;",
            "Lo/writeUInt32NoTag;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lo/writeFixed32NoTag<",
            "*>;>;ZZZZZZZ",
            "Lo/computeInt32Size;",
            "Ljava/util/List<",
            "Lo/computeFloatSize;",
            ">;)V"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4, p12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p5, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;

    invoke-direct {p5}, Lo/DataTransportCrashlyticsReportSender$$Lambda$1;-><init>()V

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance p5, Ljava/lang/ThreadLocal;

    invoke-direct {p5}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object p5, p0, Lo/writeStringNoTag;->onNavigationEvent:Ljava/lang/ThreadLocal;

    .line 127
    new-instance p5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p5, p0, Lo/writeStringNoTag;->onPostMessage:Ljava/util/Map;

    .line 203
    iput-object p1, p0, Lo/writeStringNoTag;->extraCallback:Lo/computeSFixed32Size;

    .line 206
    new-instance p5, Lo/computeFixed64Size;

    invoke-direct {p5, p3}, Lo/computeFixed64Size;-><init>(Ljava/util/Map;)V

    iput-object p5, p0, Lo/writeStringNoTag;->onRelationshipValidationResult:Lo/computeFixed64Size;

    const/4 p3, 0x0

    .line 207
    iput-boolean p3, p0, Lo/writeStringNoTag;->asBinder:Z

    .line 209
    iput-boolean p3, p0, Lo/writeStringNoTag;->onTransact:Z

    .line 210
    iput-boolean p7, p0, Lo/writeStringNoTag;->newSession:Z

    .line 211
    iput-boolean p3, p0, Lo/writeStringNoTag;->warmup:Z

    .line 212
    iput-boolean p3, p0, Lo/writeStringNoTag;->onMessageChannelReady:Z

    .line 221
    new-instance p5, Ljava/util/ArrayList;

    invoke-direct {p5}, Ljava/util/ArrayList;-><init>()V

    .line 224
    sget-object p6, Lo/computeSInt64SizeNoTag;->notify:Lo/computeFloatSize;

    invoke-interface {p5, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object p6, Lo/computeEnumSizeNoTag;->ICustomTabsCallback:Lo/computeFloatSize;

    invoke-interface {p5, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    invoke-interface {p5, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 234
    sget-object p4, Lo/computeSInt64SizeNoTag;->postMessage:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    sget-object p4, Lo/computeSInt64SizeNoTag;->onRelationshipValidationResult:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    sget-object p4, Lo/computeSInt64SizeNoTag;->ICustomTabsCallback:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    sget-object p4, Lo/computeSInt64SizeNoTag;->onNavigationEvent:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    sget-object p4, Lo/computeSInt64SizeNoTag;->onTransact:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1366
    sget-object p4, Lo/computeInt32Size;->onPostMessage:Lo/computeInt32Size;

    if-ne p11, p4, :cond_0

    .line 1367
    sget-object p4, Lo/computeSInt64SizeNoTag;->ICustomTabsService:Lo/computeDoubleSize;

    goto :goto_0

    .line 1369
    :cond_0
    new-instance p4, Lo/writeStringNoTag$2;

    invoke-direct {p4}, Lo/writeStringNoTag$2;-><init>()V

    .line 240
    :goto_0
    sget-object p6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Long;

    invoke-static {p6, p7, p4}, Lo/computeSInt64SizeNoTag;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/computeDoubleSize;)Lo/computeFloatSize;

    move-result-object p6

    invoke-interface {p5, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    sget-object p6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Double;

    .line 2313
    new-instance p8, Lo/writeStringNoTag$3;

    invoke-direct {p8}, Lo/writeStringNoTag$3;-><init>()V

    .line 241
    invoke-static {p6, p7, p8}, Lo/computeSInt64SizeNoTag;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/computeDoubleSize;)Lo/computeFloatSize;

    move-result-object p6

    invoke-interface {p5, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    sget-object p6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class p7, Ljava/lang/Float;

    .line 2337
    new-instance p8, Lo/writeStringNoTag$4;

    invoke-direct {p8}, Lo/writeStringNoTag$4;-><init>()V

    .line 243
    invoke-static {p6, p7, p8}, Lo/computeSInt64SizeNoTag;->onMessageChannelReady(Ljava/lang/Class;Ljava/lang/Class;Lo/computeDoubleSize;)Lo/computeFloatSize;

    move-result-object p6

    invoke-interface {p5, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object p6, Lo/computeSInt64SizeNoTag;->ICustomTabsCallback$Stub$Proxy:Lo/computeFloatSize;

    invoke-interface {p5, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object p6, Lo/computeSInt64SizeNoTag;->asInterface:Lo/computeFloatSize;

    invoke-interface {p5, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object p6, Lo/computeSInt64SizeNoTag;->asBinder:Lo/computeFloatSize;

    invoke-interface {p5, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    const-class p6, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2388
    new-instance p7, Lo/writeStringNoTag$1;

    invoke-direct {p7, p4}, Lo/writeStringNoTag$1;-><init>(Lo/computeDoubleSize;)V

    .line 2396
    invoke-virtual {p7}, Lo/computeDoubleSize;->nullSafe()Lo/computeDoubleSize;

    move-result-object p7

    .line 248
    invoke-static {p6, p7}, Lo/computeSInt64SizeNoTag;->onPostMessage(Ljava/lang/Class;Lo/computeDoubleSize;)Lo/computeFloatSize;

    move-result-object p6

    invoke-interface {p5, p6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    const-class p6, Ljava/util/concurrent/atomic/AtomicLongArray;

    .line 2400
    new-instance p7, Lo/writeStringNoTag$5;

    invoke-direct {p7, p4}, Lo/writeStringNoTag$5;-><init>(Lo/computeDoubleSize;)V

    .line 2423
    invoke-virtual {p7}, Lo/computeDoubleSize;->nullSafe()Lo/computeDoubleSize;

    move-result-object p4

    .line 249
    invoke-static {p6, p4}, Lo/computeSInt64SizeNoTag;->onPostMessage(Ljava/lang/Class;Lo/computeDoubleSize;)Lo/computeFloatSize;

    move-result-object p4

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object p4, Lo/computeSInt64SizeNoTag;->ICustomTabsCallback$Stub:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    sget-object p4, Lo/computeSInt64SizeNoTag;->warmup:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    sget-object p4, Lo/computeSInt64SizeNoTag;->requestPostMessageChannel:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object p4, Lo/computeSInt64SizeNoTag;->updateVisuals:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    const-class p4, Ljava/math/BigDecimal;

    sget-object p6, Lo/computeSInt64SizeNoTag;->extraCommand:Lo/computeDoubleSize;

    invoke-static {p4, p6}, Lo/computeSInt64SizeNoTag;->onPostMessage(Ljava/lang/Class;Lo/computeDoubleSize;)Lo/computeFloatSize;

    move-result-object p4

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    const-class p4, Ljava/math/BigInteger;

    sget-object p6, Lo/computeSInt64SizeNoTag;->mayLaunchUrl:Lo/computeDoubleSize;

    invoke-static {p4, p6}, Lo/computeSInt64SizeNoTag;->onPostMessage(Ljava/lang/Class;Lo/computeDoubleSize;)Lo/computeFloatSize;

    move-result-object p4

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object p4, Lo/computeSInt64SizeNoTag;->IPostMessageService:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object p4, Lo/computeSInt64SizeNoTag;->ICustomTabsService$Stub:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object p4, Lo/computeSInt64SizeNoTag;->validateRelationship:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object p4, Lo/computeSInt64SizeNoTag;->IPostMessageService$Stub:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object p4, Lo/computeSInt64SizeNoTag;->cancelAll:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object p4, Lo/computeSInt64SizeNoTag;->ICustomTabsService$Stub$Proxy:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object p4, Lo/computeSInt64SizeNoTag;->onMessageChannelReady:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    sget-object p4, Lo/computeInt64SizeNoTag;->onNavigationEvent:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    sget-object p4, Lo/computeSInt64SizeNoTag;->IPostMessageService$Stub$Proxy:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    sget-object p4, Lo/computeUInt32SizeNoTag;->onMessageChannelReady:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    sget-object p4, Lo/computeSFixed32SizeNoTag;->ICustomTabsCallback:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    sget-object p4, Lo/computeSInt64SizeNoTag;->INotificationSideChannel:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    sget-object p4, Lo/computeRawMessageSetExtensionSize;->onPostMessage:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    sget-object p4, Lo/computeSInt64SizeNoTag;->onPostMessage:Lo/computeFloatSize;

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance p4, Lo/computeFloatSizeNoTag;

    iget-object p6, p0, Lo/writeStringNoTag;->onRelationshipValidationResult:Lo/computeFixed64Size;

    invoke-direct {p4, p6}, Lo/computeFloatSizeNoTag;-><init>(Lo/computeFixed64Size;)V

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    new-instance p4, Lo/computeFixed64SizeNoTag;

    iget-object p6, p0, Lo/writeStringNoTag;->onRelationshipValidationResult:Lo/computeFixed64Size;

    invoke-direct {p4, p6, p3}, Lo/computeFixed64SizeNoTag;-><init>(Lo/computeFixed64Size;Z)V

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    new-instance p3, Lo/computeBoolSizeNoTag;

    iget-object p4, p0, Lo/writeStringNoTag;->onRelationshipValidationResult:Lo/computeFixed64Size;

    invoke-direct {p3, p4}, Lo/computeBoolSizeNoTag;-><init>(Lo/computeFixed64Size;)V

    iput-object p3, p0, Lo/writeStringNoTag;->ICustomTabsCallback$Stub:Lo/computeBoolSizeNoTag;

    .line 275
    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    sget-object p3, Lo/computeSInt64SizeNoTag;->INotificationSideChannel$Stub:Lo/computeFloatSize;

    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    new-instance p3, Lo/computeBytesSizeNoTag;

    iget-object p4, p0, Lo/writeStringNoTag;->onRelationshipValidationResult:Lo/computeFixed64Size;

    iget-object p6, p0, Lo/writeStringNoTag;->ICustomTabsCallback$Stub:Lo/computeBoolSizeNoTag;

    invoke-direct {p3, p4, p2, p1, p6}, Lo/computeBytesSizeNoTag;-><init>(Lo/computeFixed64Size;Lo/writeUInt32NoTag;Lo/computeSFixed32Size;Lo/computeBoolSizeNoTag;)V

    invoke-interface {p5, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/writeStringNoTag;->asInterface:Ljava/util/List;

    return-void
.end method

.method private ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/reflect/Type;Lo/computeTagSize;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;
        }
    .end annotation

    .line 696
    invoke-static {p2}, Lo/writeRawByte;->extraCallback(Ljava/lang/reflect/Type;)Lo/writeRawByte;

    move-result-object p2

    invoke-virtual {p0, p2}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object p2

    .line 4243
    iget-boolean v0, p3, Lo/computeTagSize;->onMessageChannelReady:Z

    const/4 v1, 0x1

    .line 5236
    iput-boolean v1, p3, Lo/computeTagSize;->onMessageChannelReady:Z

    .line 5262
    iget-boolean v1, p3, Lo/computeTagSize;->asInterface:Z

    .line 700
    iget-boolean v2, p0, Lo/writeStringNoTag;->newSession:Z

    .line 6254
    iput-boolean v2, p3, Lo/computeTagSize;->asInterface:Z

    .line 6278
    iget-boolean v2, p3, Lo/computeTagSize;->ICustomTabsCallback$Stub:Z

    .line 702
    iget-boolean v3, p0, Lo/writeStringNoTag;->asBinder:Z

    .line 7270
    iput-boolean v3, p3, Lo/computeTagSize;->ICustomTabsCallback$Stub:Z

    .line 704
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8236
    iput-boolean v0, p3, Lo/computeTagSize;->onMessageChannelReady:Z

    .line 8254
    iput-boolean v1, p3, Lo/computeTagSize;->asInterface:Z

    .line 8270
    iput-boolean v2, p3, Lo/computeTagSize;->ICustomTabsCallback$Stub:Z

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 708
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "AssertionError (GSON 2.8.6): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 709
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 710
    throw p2

    :catch_1
    move-exception p1

    .line 706
    new-instance p2, Lcom/google/gson/JsonIOException;

    invoke-direct {p2, p1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9236
    :goto_0
    iput-boolean v0, p3, Lo/computeTagSize;->onMessageChannelReady:Z

    .line 9254
    iput-boolean v1, p3, Lo/computeTagSize;->asInterface:Z

    .line 9270
    iput-boolean v2, p3, Lo/computeTagSize;->ICustomTabsCallback$Stub:Z

    .line 715
    throw p1
.end method

.method static onMessageChannelReady(D)V
    .locals 2

    .line 358
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 359
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onNavigationEvent(Lo/checkNoSpaceLeft;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/checkNoSpaceLeft;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 18334
    iget-boolean v0, p1, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    const/4 v1, 0x1

    .line 19327
    iput-boolean v1, p1, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    .line 928
    :try_start_0
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    const/4 v1, 0x0

    .line 930
    invoke-static {p2}, Lo/writeRawByte;->extraCallback(Ljava/lang/reflect/Type;)Lo/writeRawByte;

    move-result-object p2

    .line 931
    invoke-virtual {p0, p2}, Lo/writeStringNoTag;->onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object p2

    .line 932
    invoke-virtual {p2, p1}, Lo/computeDoubleSize;->read(Lo/checkNoSpaceLeft;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20327
    iput-boolean v0, p1, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 949
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AssertionError (GSON 2.8.6): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 950
    invoke-virtual {v1, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 951
    throw v1

    :catch_1
    move-exception p2

    .line 947
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, p2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p2

    .line 944
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, p2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_3
    move-exception p2

    if-eqz v1, :cond_0

    .line 21327
    iput-boolean v0, p1, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    const/4 p1, 0x0

    return-object p1

    .line 942
    :cond_0
    :try_start_2
    new-instance v1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {v1, p2}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 22327
    :goto_0
    iput-boolean v0, p1, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    .line 954
    throw p2
.end method

.method private static onNavigationEvent(Ljava/lang/Object;Lo/checkNoSpaceLeft;)V
    .locals 0

    if-eqz p0, :cond_1

    .line 904
    :try_start_0
    invoke-virtual {p1}, Lo/checkNoSpaceLeft;->asInterface()Lo/writeRawBytes;

    move-result-object p0

    sget-object p1, Lo/writeRawBytes;->ICustomTabsCallback$Stub:Lo/writeRawBytes;

    if-ne p0, p1, :cond_0

    goto :goto_0

    .line 905
    :cond_0
    new-instance p0, Lcom/google/gson/JsonIOException;

    const-string p1, "JSON document was not fully consumed."

    invoke-direct {p0, p1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 910
    new-instance p1, Lcom/google/gson/JsonIOException;

    invoke-direct {p1, p0}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 908
    new-instance p1, Lcom/google/gson/JsonSyntaxException;

    invoke-direct {p1, p0}, Lcom/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonIOException;,
            Lcom/google/gson/JsonSyntaxException;
        }
    .end annotation

    .line 17767
    new-instance v0, Lo/checkNoSpaceLeft;

    invoke-direct {v0, p1}, Lo/checkNoSpaceLeft;-><init>(Ljava/io/Reader;)V

    .line 17768
    iget-boolean p1, p0, Lo/writeStringNoTag;->onMessageChannelReady:Z

    .line 18327
    iput-boolean p1, v0, Lo/checkNoSpaceLeft;->onMessageChannelReady:Z

    .line 897
    invoke-direct {p0, v0, p2}, Lo/writeStringNoTag;->onNavigationEvent(Lo/checkNoSpaceLeft;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    .line 898
    invoke-static {p1, v0}, Lo/writeStringNoTag;->onNavigationEvent(Ljava/lang/Object;Lo/checkNoSpaceLeft;)V

    return-object p1
.end method

.method public final onMessageChannelReady(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 2

    .line 637
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 4076
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/Writer;

    .line 3682
    invoke-virtual {p0, v1}, Lo/writeStringNoTag;->onPostMessage(Ljava/io/Writer;)Lo/computeTagSize;

    move-result-object v1

    .line 3683
    invoke-direct {p0, p1, p2, v1}, Lo/writeStringNoTag;->ICustomTabsCallback(Ljava/lang/Object;Ljava/lang/reflect/Type;Lo/computeTagSize;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 3685
    new-instance p2, Lcom/google/gson/JsonIOException;

    invoke-direct {p2, p1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final onMessageChannelReady(Lo/writeEnumNoTag;)Ljava/lang/String;
    .locals 7

    .line 726
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 10076
    :try_start_0
    move-object v1, v0

    check-cast v1, Ljava/io/Writer;

    .line 9741
    invoke-virtual {p0, v1}, Lo/writeStringNoTag;->onPostMessage(Ljava/io/Writer;)Lo/computeTagSize;

    move-result-object v1

    .line 11243
    iget-boolean v2, v1, Lo/computeTagSize;->onMessageChannelReady:Z

    const/4 v3, 0x1

    .line 12236
    iput-boolean v3, v1, Lo/computeTagSize;->onMessageChannelReady:Z

    .line 12262
    iget-boolean v3, v1, Lo/computeTagSize;->asInterface:Z

    .line 10780
    iget-boolean v4, p0, Lo/writeStringNoTag;->newSession:Z

    .line 13254
    iput-boolean v4, v1, Lo/computeTagSize;->asInterface:Z

    .line 13278
    iget-boolean v4, v1, Lo/computeTagSize;->ICustomTabsCallback$Stub:Z

    .line 10782
    iget-boolean v5, p0, Lo/writeStringNoTag;->asBinder:Z

    .line 14270
    iput-boolean v5, v1, Lo/computeTagSize;->ICustomTabsCallback$Stub:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 15072
    :try_start_1
    sget-object v5, Lo/computeSInt64SizeNoTag;->cancel:Lo/computeDoubleSize;

    invoke-virtual {v5, v1, p1}, Lo/computeDoubleSize;->write(Lo/computeTagSize;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15236
    :try_start_2
    iput-boolean v2, v1, Lo/computeTagSize;->onMessageChannelReady:Z

    .line 15254
    iput-boolean v3, v1, Lo/computeTagSize;->asInterface:Z

    .line 15270
    iput-boolean v4, v1, Lo/computeTagSize;->ICustomTabsCallback$Stub:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 728
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10788
    :try_start_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "AssertionError (GSON 2.8.6): "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 10789
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 10790
    throw v0

    :catch_1
    move-exception p1

    .line 10786
    new-instance v0, Lcom/google/gson/JsonIOException;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 16236
    :goto_0
    :try_start_4
    iput-boolean v2, v1, Lo/computeTagSize;->onMessageChannelReady:Z

    .line 16254
    iput-boolean v3, v1, Lo/computeTagSize;->asInterface:Z

    .line 16270
    iput-boolean v4, v1, Lo/computeTagSize;->ICustomTabsCallback$Stub:Z

    .line 10795
    throw p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    move-exception p1

    .line 9744
    new-instance v0, Lcom/google/gson/JsonIOException;

    invoke-direct {v0, p1}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final onNavigationEvent(Lo/computeFloatSize;Lo/writeRawByte;)Lo/computeDoubleSize;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/computeFloatSize;",
            "Lo/writeRawByte<",
            "TT;>;)",
            "Lo/computeDoubleSize<",
            "TT;>;"
        }
    .end annotation

    .line 528
    iget-object v0, p0, Lo/writeStringNoTag;->asInterface:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    iget-object p1, p0, Lo/writeStringNoTag;->ICustomTabsCallback$Stub:Lo/computeBoolSizeNoTag;

    :cond_0
    const/4 v0, 0x0

    .line 533
    iget-object v1, p0, Lo/writeStringNoTag;->asInterface:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/computeFloatSize;

    if-nez v0, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 541
    :cond_2
    invoke-interface {v2, p0, p2}, Lo/computeFloatSize;->create(Lo/writeStringNoTag;Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 546
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "GSON cannot serialize "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage(Lo/writeRawByte;)Lo/computeDoubleSize;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/writeRawByte<",
            "TT;>;)",
            "Lo/computeDoubleSize<",
            "TT;>;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lo/writeStringNoTag;->onPostMessage:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Lo/writeStringNoTag;->ICustomTabsCallback:Lo/writeRawByte;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/computeDoubleSize;

    if-eqz v0, :cond_1

    return-object v0

    .line 439
    :cond_1
    iget-object v0, p0, Lo/writeStringNoTag;->onNavigationEvent:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 442
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 443
    iget-object v1, p0, Lo/writeStringNoTag;->onNavigationEvent:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 448
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/writeStringNoTag$ICustomTabsCallback;

    if-eqz v2, :cond_3

    return-object v2

    .line 454
    :cond_3
    :try_start_0
    new-instance v2, Lo/writeStringNoTag$ICustomTabsCallback;

    invoke-direct {v2}, Lo/writeStringNoTag$ICustomTabsCallback;-><init>()V

    .line 455
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v3, p0, Lo/writeStringNoTag;->asInterface:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/computeFloatSize;

    .line 458
    invoke-interface {v4, p0, p1}, Lo/computeFloatSize;->create(Lo/writeStringNoTag;Lo/writeRawByte;)Lo/computeDoubleSize;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 3010
    iget-object v3, v2, Lo/writeStringNoTag$ICustomTabsCallback;->onNavigationEvent:Lo/computeDoubleSize;

    if-nez v3, :cond_6

    .line 3013
    iput-object v4, v2, Lo/writeStringNoTag$ICustomTabsCallback;->onNavigationEvent:Lo/computeDoubleSize;

    .line 461
    iget-object v2, p0, Lo/writeStringNoTag;->onPostMessage:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 470
    iget-object p1, p0, Lo/writeStringNoTag;->onNavigationEvent:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    .line 3011
    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 465
    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "GSON (2.8.6) cannot handle "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 467
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_8

    .line 470
    iget-object p1, p0, Lo/writeStringNoTag;->onNavigationEvent:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    .line 472
    :cond_8
    throw v2
.end method

.method public final onPostMessage(Ljava/io/Writer;)Lo/computeTagSize;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    iget-boolean v0, p0, Lo/writeStringNoTag;->onTransact:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    .line 753
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 755
    :cond_0
    new-instance v0, Lo/computeTagSize;

    invoke-direct {v0, p1}, Lo/computeTagSize;-><init>(Ljava/io/Writer;)V

    .line 756
    iget-boolean p1, p0, Lo/writeStringNoTag;->warmup:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    .line 17218
    iput-object p1, v0, Lo/computeTagSize;->extraCallback:Ljava/lang/String;

    const-string p1, ": "

    .line 17219
    iput-object p1, v0, Lo/computeTagSize;->onNavigationEvent:Ljava/lang/String;

    .line 759
    :cond_1
    iget-boolean p1, p0, Lo/writeStringNoTag;->asBinder:Z

    .line 17270
    iput-boolean p1, v0, Lo/computeTagSize;->ICustomTabsCallback$Stub:Z

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lo/writeStringNoTag;->asBinder:Z

    .line 1034
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    .line 1035
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/writeStringNoTag;->asInterface:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    .line 1036
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/writeStringNoTag;->onRelationshipValidationResult:Lo/computeFixed64Size;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 1037
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1038
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
