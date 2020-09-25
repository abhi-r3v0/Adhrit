.class public final Lo/getTextClassifier;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getTextClassifier$extraCallback;,
        Lo/getTextClassifier$onPostMessage;,
        Lo/getTextClassifier$ICustomTabsCallback;,
        Lo/getTextClassifier$onNavigationEvent;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Ljava/io/Writer;

.field private ICustomTabsCallback$Stub:J

.field private ICustomTabsCallback$Stub$Proxy:Ljava/util/concurrent/ThreadPoolExecutor;

.field private ICustomTabsService:J

.field private final asBinder:Ljava/io/File;

.field private final asInterface:Ljava/io/File;

.field final extraCallback:I

.field private getInterfaceDescriptor:J

.field private final newSession:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lo/getTextClassifier$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Ljava/io/File;

.field onPostMessage:I

.field private final onRelationshipValidationResult:Ljava/io/File;

.field private final onTransact:I


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 182
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    .line 149
    iput-wide v2, v0, Lo/getTextClassifier;->getInterfaceDescriptor:J

    .line 151
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, 0x3f400000    # 0.75f

    invoke-direct {v4, v5, v7, v6}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    .line 160
    iput-wide v2, v0, Lo/getTextClassifier;->ICustomTabsService:J

    .line 163
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v15, Lo/getTextClassifier$extraCallback;

    invoke-direct {v15, v5}, Lo/getTextClassifier$extraCallback;-><init>(B)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, Lo/getTextClassifier;->ICustomTabsCallback$Stub$Proxy:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 166
    new-instance v2, Lo/getTextClassifier$3;

    invoke-direct {v2, v0}, Lo/getTextClassifier$3;-><init>(Lo/getTextClassifier;)V

    iput-object v2, v0, Lo/getTextClassifier;->newSession:Ljava/util/concurrent/Callable;

    .line 183
    iput-object v1, v0, Lo/getTextClassifier;->onNavigationEvent:Ljava/io/File;

    .line 184
    iput v6, v0, Lo/getTextClassifier;->onTransact:I

    .line 185
    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lo/getTextClassifier;->asBinder:Ljava/io/File;

    .line 186
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lo/getTextClassifier;->onRelationshipValidationResult:Ljava/io/File;

    .line 187
    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lo/getTextClassifier;->asInterface:Ljava/io/File;

    .line 188
    iput v6, v0, Lo/getTextClassifier;->extraCallback:I

    move-wide/from16 v1, p4

    .line 189
    iput-wide v1, v0, Lo/getTextClassifier;->ICustomTabsCallback$Stub:J

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 248
    new-instance v1, Lo/setImageResource;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lo/getTextClassifier;->asBinder:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lo/setImageBitmap;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lo/setImageResource;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 250
    :try_start_0
    invoke-virtual {v1}, Lo/setImageResource;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v2

    .line 251
    invoke-virtual {v1}, Lo/setImageResource;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-virtual {v1}, Lo/setImageResource;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v4

    .line 253
    invoke-virtual {v1}, Lo/setImageResource;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v5

    .line 254
    invoke-virtual {v1}, Lo/setImageResource;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 255
    invoke-virtual {v7, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string v7, "1"

    .line 256
    invoke-virtual {v7, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p0, Lo/getTextClassifier;->onTransact:I

    .line 257
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget v4, p0, Lo/getTextClassifier;->extraCallback:I

    .line 258
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, ""

    .line 259
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_9

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, -0x1

    .line 267
    :try_start_1
    invoke-virtual {v1}, Lo/setImageResource;->ICustomTabsCallback()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x20

    .line 3288
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string/jumbo v8, "unexpected journal line: "

    if-eq v7, v4, :cond_6

    add-int/lit8 v9, v7, 0x1

    .line 3294
    :try_start_2
    invoke-virtual {v5, v6, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-ne v6, v4, :cond_0

    .line 3297
    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x6

    if-ne v7, v10, :cond_1

    const-string v10, "REMOVE"

    .line 3298
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3299
    iget-object v5, p0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v9}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3303
    :cond_0
    invoke-virtual {v5, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 3306
    :cond_1
    iget-object v10, p0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v9}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/getTextClassifier$onPostMessage;

    if-nez v10, :cond_2

    .line 3308
    new-instance v10, Lo/getTextClassifier$onPostMessage;

    invoke-direct {v10, p0, v9, v0}, Lo/getTextClassifier$onPostMessage;-><init>(Lo/getTextClassifier;Ljava/lang/String;B)V

    .line 3309
    iget-object v11, p0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v9, v10}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v9, 0x5

    if-eq v6, v4, :cond_3

    if-ne v7, v9, :cond_3

    const-string v11, "CLEAN"

    .line 3312
    invoke-virtual {v5, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 3313
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 3857
    iput-boolean v3, v10, Lo/getTextClassifier$onPostMessage;->onNavigationEvent:Z

    const/4 v6, 0x0

    .line 4857
    iput-object v6, v10, Lo/getTextClassifier$onPostMessage;->onRelationshipValidationResult:Lo/getTextClassifier$ICustomTabsCallback;

    .line 5857
    invoke-virtual {v10, v5}, Lo/getTextClassifier$onPostMessage;->ICustomTabsCallback([Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-ne v6, v4, :cond_4

    if-ne v7, v9, :cond_4

    const-string v9, "DIRTY"

    .line 3317
    invoke-virtual {v5, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3318
    new-instance v5, Lo/getTextClassifier$ICustomTabsCallback;

    invoke-direct {v5, p0, v10, v0}, Lo/getTextClassifier$ICustomTabsCallback;-><init>(Lo/getTextClassifier;Lo/getTextClassifier$onPostMessage;B)V

    .line 6857
    iput-object v5, v10, Lo/getTextClassifier$onPostMessage;->onRelationshipValidationResult:Lo/getTextClassifier$ICustomTabsCallback;

    goto :goto_1

    :cond_4
    if-ne v6, v4, :cond_5

    const/4 v6, 0x4

    if-ne v7, v6, :cond_5

    const-string v6, "READ"

    .line 3319
    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3322
    :cond_5
    new-instance v6, Ljava/io/IOException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3290
    :cond_6
    new-instance v6, Ljava/io/IOException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 273
    :catch_0
    :try_start_3
    iget-object v5, p0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/AbstractMap;->size()I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, p0, Lo/getTextClassifier;->onPostMessage:I

    .line 7180
    iget v2, v1, Lo/setImageResource;->onNavigationEvent:I

    if-ne v2, v4, :cond_7

    const/4 v0, 0x1

    :cond_7
    if-eqz v0, :cond_8

    .line 277
    invoke-virtual {p0}, Lo/getTextClassifier;->onNavigationEvent()V

    goto :goto_2

    .line 279
    :cond_8
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lo/getTextClassifier;->asBinder:Ljava/io/File;

    invoke-direct {v4, v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lo/setImageBitmap;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-direct {v2, v4, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 283
    :goto_2
    invoke-static {v1}, Lo/setImageBitmap;->ICustomTabsCallback(Ljava/io/Closeable;)V

    return-void

    .line 260
    :cond_9
    :try_start_4
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "unexpected journal header: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    .line 283
    invoke-static {v1}, Lo/setImageBitmap;->ICustomTabsCallback(Ljava/io/Closeable;)V

    .line 284
    throw v0
.end method

.method private static ICustomTabsCallback(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 703
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 704
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    return-void

    .line 708
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 709
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 710
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 711
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 713
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 716
    throw p0
.end method

.method private extraCallback()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lo/getTextClassifier;->onRelationshipValidationResult:Ljava/io/File;

    .line 7393
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 7394
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 332
    :cond_1
    :goto_0
    iget-object v0, p0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getTextClassifier$onPostMessage;

    .line 7857
    iget-object v2, v1, Lo/getTextClassifier$onPostMessage;->onRelationshipValidationResult:Lo/getTextClassifier$ICustomTabsCallback;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 335
    :goto_2
    iget v2, p0, Lo/getTextClassifier;->extraCallback:I

    if-ge v3, v2, :cond_2

    .line 336
    iget-wide v4, p0, Lo/getTextClassifier;->getInterfaceDescriptor:J

    .line 8857
    iget-object v2, v1, Lo/getTextClassifier$onPostMessage;->onPostMessage:[J

    .line 336
    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lo/getTextClassifier;->getInterfaceDescriptor:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    .line 9857
    iput-object v2, v1, Lo/getTextClassifier$onPostMessage;->onRelationshipValidationResult:Lo/getTextClassifier$ICustomTabsCallback;

    .line 340
    :goto_3
    iget v2, p0, Lo/getTextClassifier;->extraCallback:I

    if-ge v3, v2, :cond_8

    .line 9922
    iget-object v2, v1, Lo/getTextClassifier$onPostMessage;->onMessageChannelReady:[Ljava/io/File;

    aget-object v2, v2, v3

    .line 10393
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    .line 10394
    :cond_4
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 10926
    :cond_5
    :goto_4
    iget-object v2, v1, Lo/getTextClassifier$onPostMessage;->ICustomTabsCallback:[Ljava/io/File;

    aget-object v2, v2, v3

    .line 11393
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_5

    .line 11394
    :cond_6
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_7
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 344
    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_9
    return-void
.end method

.method public static onMessageChannelReady(Ljava/io/File;J)Lo/getTextClassifier;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_4

    .line 211
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 213
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 1402
    :cond_0
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1403
    :cond_1
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    .line 223
    :cond_2
    :goto_0
    new-instance v6, Lo/getTextClassifier;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v6

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lo/getTextClassifier;-><init>(Ljava/io/File;IIJ)V

    .line 224
    iget-object v0, v6, Lo/getTextClassifier;->asBinder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 226
    :try_start_0
    invoke-direct {v6}, Lo/getTextClassifier;->ICustomTabsCallback()V

    .line 227
    invoke-direct {v6}, Lo/getTextClassifier;->extraCallback()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v6

    :catch_0
    move-exception v0

    .line 230
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DiskLruCache "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", removing"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2663
    invoke-virtual {v6}, Lo/getTextClassifier;->close()V

    .line 2664
    iget-object v0, v6, Lo/getTextClassifier;->onNavigationEvent:Ljava/io/File;

    invoke-static {v0}, Lo/setImageBitmap;->onNavigationEvent(Ljava/io/File;)V

    .line 241
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 242
    new-instance v0, Lo/getTextClassifier;

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v1, v0

    move-object v2, p0

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lo/getTextClassifier;-><init>(Ljava/io/File;IIJ)V

    .line 243
    invoke-virtual {v0}, Lo/getTextClassifier;->onNavigationEvent()V

    return-object v0

    .line 204
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static onPostMessage(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 679
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 680
    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    return-void

    .line 684
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 685
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 686
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 687
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 689
    :try_start_0
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 692
    throw p0
.end method

.method private declared-synchronized onPostMessage(Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 38623
    :try_start_0
    iget-object v0, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    if-eqz v0, :cond_7

    .line 588
    iget-object v0, p0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getTextClassifier$onPostMessage;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 38857
    iget-object v2, v0, Lo/getTextClassifier$onPostMessage;->onRelationshipValidationResult:Lo/getTextClassifier$ICustomTabsCallback;

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 593
    :goto_0
    iget v3, p0, Lo/getTextClassifier;->extraCallback:I

    if-ge v2, v3, :cond_3

    .line 38922
    iget-object v3, v0, Lo/getTextClassifier$onPostMessage;->onMessageChannelReady:[Ljava/io/File;

    aget-object v3, v3, v2

    .line 595
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 596
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "failed to delete "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 598
    :cond_2
    :goto_1
    iget-wide v3, p0, Lo/getTextClassifier;->getInterfaceDescriptor:J

    .line 39857
    iget-object v5, v0, Lo/getTextClassifier$onPostMessage;->onPostMessage:[J

    .line 598
    aget-wide v6, v5, v2

    sub-long/2addr v3, v6

    iput-wide v3, p0, Lo/getTextClassifier;->getInterfaceDescriptor:J

    .line 40857
    iget-object v3, v0, Lo/getTextClassifier$onPostMessage;->onPostMessage:[J

    const-wide/16 v4, 0x0

    .line 599
    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 602
    :cond_3
    iget v0, p0, Lo/getTextClassifier;->onPostMessage:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lo/getTextClassifier;->onPostMessage:I

    .line 603
    iget-object v0, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    const-string v3, "REMOVE"

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 604
    iget-object v0, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    const/16 v3, 0x20

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 605
    iget-object v0, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 606
    iget-object v0, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 608
    iget-object v0, p0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41576
    iget p1, p0, Lo/getTextClassifier;->onPostMessage:I

    const/16 v0, 0x7d0

    if-lt p1, v0, :cond_4

    iget p1, p0, Lo/getTextClassifier;->onPostMessage:I

    iget-object v0, p0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    .line 41577
    invoke-virtual {v0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    if-lt p1, v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 611
    iget-object p1, p0, Lo/getTextClassifier;->ICustomTabsCallback$Stub$Proxy:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lo/getTextClassifier;->newSession:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    :cond_5
    monitor-exit p0

    return v2

    .line 590
    :cond_6
    :goto_2
    monitor-exit p0

    return v1

    .line 38624
    :cond_7
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cache is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized ICustomTabsCallback(Ljava/lang/String;)Lo/getTextClassifier$onNavigationEvent;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 16623
    :try_start_0
    iget-object v0, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    if-eqz v0, :cond_6

    .line 414
    iget-object v0, p0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getTextClassifier$onPostMessage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 416
    monitor-exit p0

    return-object v1

    .line 16857
    :cond_0
    :try_start_1
    iget-boolean v2, v0, Lo/getTextClassifier$onPostMessage;->onNavigationEvent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_1

    .line 420
    monitor-exit p0

    return-object v1

    .line 423
    :cond_1
    :try_start_2
    iget-object v2, v0, Lo/getTextClassifier$onPostMessage;->onMessageChannelReady:[Ljava/io/File;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, v2, v5

    .line 425
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_2

    .line 426
    monitor-exit p0

    return-object v1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 430
    :cond_3
    :try_start_3
    iget v1, p0, Lo/getTextClassifier;->onPostMessage:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lo/getTextClassifier;->onPostMessage:I

    .line 431
    iget-object v1, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    const-string v3, "READ"

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 432
    iget-object v1, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 433
    iget-object v1, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 434
    iget-object v1, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 17576
    iget v1, p0, Lo/getTextClassifier;->onPostMessage:I

    const/16 v3, 0x7d0

    if-lt v1, v3, :cond_4

    iget v1, p0, Lo/getTextClassifier;->onPostMessage:I

    iget-object v3, p0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    .line 17577
    invoke-virtual {v3}, Ljava/util/AbstractMap;->size()I

    move-result v3

    if-lt v1, v3, :cond_4

    const/4 v4, 0x1

    :cond_4
    if-eqz v4, :cond_5

    .line 436
    iget-object v1, p0, Lo/getTextClassifier;->ICustomTabsCallback$Stub$Proxy:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lo/getTextClassifier;->newSession:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 439
    :cond_5
    new-instance v7, Lo/getTextClassifier$onNavigationEvent;

    .line 17857
    iget-wide v3, v0, Lo/getTextClassifier$onPostMessage;->asInterface:J

    .line 439
    iget-object v5, v0, Lo/getTextClassifier$onPostMessage;->onMessageChannelReady:[Ljava/io/File;

    .line 18857
    iget-object v6, v0, Lo/getTextClassifier$onPostMessage;->onPostMessage:[J

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    .line 439
    invoke-direct/range {v0 .. v6}, Lo/getTextClassifier$onNavigationEvent;-><init>(Lo/getTextClassifier;Ljava/lang/String;J[Ljava/io/File;[J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v7

    .line 16624
    :cond_6
    :try_start_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cache is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 637
    :try_start_0
    iget-object v0, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 638
    monitor-exit p0

    return-void

    .line 640
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/getTextClassifier$onPostMessage;

    .line 41857
    iget-object v2, v1, Lo/getTextClassifier$onPostMessage;->onRelationshipValidationResult:Lo/getTextClassifier$ICustomTabsCallback;

    if-eqz v2, :cond_1

    .line 42857
    iget-object v1, v1, Lo/getTextClassifier$onPostMessage;->onRelationshipValidationResult:Lo/getTextClassifier$ICustomTabsCallback;

    .line 43844
    iget-object v2, v1, Lo/getTextClassifier$ICustomTabsCallback;->ICustomTabsCallback:Lo/getTextClassifier;

    const/4 v3, 0x0

    .line 44090
    invoke-virtual {v2, v1, v3}, Lo/getTextClassifier;->onPostMessage(Lo/getTextClassifier$ICustomTabsCallback;Z)V

    goto :goto_0

    .line 645
    :cond_2
    invoke-virtual {p0}, Lo/getTextClassifier;->onPostMessage()V

    .line 646
    iget-object v0, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    invoke-static {v0}, Lo/getTextClassifier;->onPostMessage(Ljava/io/Writer;)V

    const/4 v0, 0x0

    .line 647
    iput-object v0, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onNavigationEvent(Ljava/lang/String;)Lo/getTextClassifier$ICustomTabsCallback;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 19623
    :try_start_0
    iget-object v0, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getTextClassifier$onPostMessage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Lo/getTextClassifier$onPostMessage;

    invoke-direct {v0, p0, p1, v1}, Lo/getTextClassifier$onPostMessage;-><init>(Lo/getTextClassifier;Ljava/lang/String;B)V

    .line 459
    iget-object v2, p0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20857
    :cond_0
    iget-object v2, v0, Lo/getTextClassifier$onPostMessage;->onRelationshipValidationResult:Lo/getTextClassifier$ICustomTabsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    .line 461
    monitor-exit p0

    return-object p1

    .line 464
    :cond_1
    :goto_0
    :try_start_1
    new-instance v2, Lo/getTextClassifier$ICustomTabsCallback;

    invoke-direct {v2, p0, v0, v1}, Lo/getTextClassifier$ICustomTabsCallback;-><init>(Lo/getTextClassifier;Lo/getTextClassifier$onPostMessage;B)V

    .line 21857
    iput-object v2, v0, Lo/getTextClassifier$onPostMessage;->onRelationshipValidationResult:Lo/getTextClassifier$ICustomTabsCallback;

    .line 468
    iget-object v0, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    const-string v1, "DIRTY"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 469
    iget-object v0, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 470
    iget-object v0, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    invoke-virtual {v0, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 471
    iget-object p1, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 472
    iget-object p1, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    invoke-static {p1}, Lo/getTextClassifier;->ICustomTabsCallback(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 473
    monitor-exit p0

    return-object v2

    .line 19624
    :cond_2
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "cache is closed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized onNavigationEvent()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 354
    :try_start_0
    iget-object v0, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    invoke-static {v0}, Lo/getTextClassifier;->onPostMessage(Ljava/io/Writer;)V

    .line 358
    :cond_0
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lo/getTextClassifier;->onRelationshipValidationResult:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lo/setImageBitmap;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v1, "libcore.io.DiskLruCache"

    .line 361
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 362
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    .line 363
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 364
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    iget v1, p0, Lo/getTextClassifier;->onTransact:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 366
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 367
    iget v1, p0, Lo/getTextClassifier;->extraCallback:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 368
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    .line 369
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/getTextClassifier$onPostMessage;

    .line 11857
    iget-object v3, v2, Lo/getTextClassifier$onPostMessage;->onRelationshipValidationResult:Lo/getTextClassifier$ICustomTabsCallback;

    const/16 v4, 0xa

    if-eqz v3, :cond_1

    .line 373
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "DIRTY "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12857
    iget-object v2, v2, Lo/getTextClassifier$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 373
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "CLEAN "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13857
    iget-object v5, v2, Lo/getTextClassifier$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 375
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lo/getTextClassifier$onPostMessage;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 379
    :cond_2
    :try_start_2
    invoke-static {v0}, Lo/getTextClassifier;->onPostMessage(Ljava/io/Writer;)V

    .line 382
    iget-object v0, p0, Lo/getTextClassifier;->asBinder:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 383
    iget-object v0, p0, Lo/getTextClassifier;->asBinder:Ljava/io/File;

    iget-object v1, p0, Lo/getTextClassifier;->asInterface:Ljava/io/File;

    .line 15393
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 15394
    :cond_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 14402
    :cond_4
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 14403
    :cond_5
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 385
    :cond_6
    :goto_2
    iget-object v0, p0, Lo/getTextClassifier;->onRelationshipValidationResult:Ljava/io/File;

    iget-object v1, p0, Lo/getTextClassifier;->asBinder:Ljava/io/File;

    .line 15402
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 386
    iget-object v0, p0, Lo/getTextClassifier;->asInterface:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 388
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lo/getTextClassifier;->asBinder:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lo/setImageBitmap;->ICustomTabsCallback:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 390
    monitor-exit p0

    return-void

    .line 15403
    :cond_7
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :catchall_0
    move-exception v1

    .line 379
    invoke-static {v0}, Lo/getTextClassifier;->onPostMessage(Ljava/io/Writer;)V

    .line 380
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final onPostMessage()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 651
    :goto_0
    iget-wide v0, p0, Lo/getTextClassifier;->getInterfaceDescriptor:J

    iget-wide v2, p0, Lo/getTextClassifier;->ICustomTabsCallback$Stub:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 652
    iget-object v0, p0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 653
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/getTextClassifier;->onPostMessage(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final declared-synchronized onPostMessage(Lo/getTextClassifier$ICustomTabsCallback;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 22759
    :try_start_0
    iget-object v0, p1, Lo/getTextClassifier$ICustomTabsCallback;->onMessageChannelReady:Lo/getTextClassifier$onPostMessage;

    .line 22857
    iget-object v1, v0, Lo/getTextClassifier$onPostMessage;->onRelationshipValidationResult:Lo/getTextClassifier$ICustomTabsCallback;

    if-ne v1, p1, :cond_c

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 23857
    iget-boolean v2, v0, Lo/getTextClassifier$onPostMessage;->onNavigationEvent:Z

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 515
    :goto_0
    iget v3, p0, Lo/getTextClassifier;->extraCallback:I

    if-ge v2, v3, :cond_2

    .line 24759
    iget-object v3, p1, Lo/getTextClassifier$ICustomTabsCallback;->extraCallback:[Z

    .line 516
    aget-boolean v3, v3, v2

    if-eqz v3, :cond_1

    .line 25926
    iget-object v3, v0, Lo/getTextClassifier$onPostMessage;->ICustomTabsCallback:[Ljava/io/File;

    aget-object v3, v3, v2

    .line 520
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 26844
    iget-object p2, p1, Lo/getTextClassifier$ICustomTabsCallback;->ICustomTabsCallback:Lo/getTextClassifier;

    .line 27090
    invoke-virtual {p2, p1, v1}, Lo/getTextClassifier;->onPostMessage(Lo/getTextClassifier$ICustomTabsCallback;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 522
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24844
    :cond_1
    :try_start_1
    iget-object p2, p1, Lo/getTextClassifier$ICustomTabsCallback;->ICustomTabsCallback:Lo/getTextClassifier;

    .line 25090
    invoke-virtual {p2, p1, v1}, Lo/getTextClassifier;->onPostMessage(Lo/getTextClassifier$ICustomTabsCallback;Z)V

    .line 518
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Newly created entry didn\'t create value for index "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const/4 p1, 0x0

    .line 527
    :goto_1
    iget v2, p0, Lo/getTextClassifier;->extraCallback:I

    if-ge p1, v2, :cond_6

    .line 27926
    iget-object v2, v0, Lo/getTextClassifier$onPostMessage;->ICustomTabsCallback:[Ljava/io/File;

    aget-object v2, v2, p1

    if-eqz p2, :cond_3

    .line 530
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 28922
    iget-object v3, v0, Lo/getTextClassifier$onPostMessage;->onMessageChannelReady:[Ljava/io/File;

    aget-object v3, v3, p1

    .line 532
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 29857
    iget-object v2, v0, Lo/getTextClassifier$onPostMessage;->onPostMessage:[J

    .line 533
    aget-wide v4, v2, p1

    .line 534
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 30857
    iget-object v6, v0, Lo/getTextClassifier$onPostMessage;->onPostMessage:[J

    .line 535
    aput-wide v2, v6, p1

    .line 536
    iget-wide v6, p0, Lo/getTextClassifier;->getInterfaceDescriptor:J

    sub-long/2addr v6, v4

    add-long/2addr v6, v2

    iput-wide v6, p0, Lo/getTextClassifier;->getInterfaceDescriptor:J

    goto :goto_2

    .line 31393
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    .line 31394
    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_5
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 543
    :cond_6
    iget p1, p0, Lo/getTextClassifier;->onPostMessage:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    iput p1, p0, Lo/getTextClassifier;->onPostMessage:I

    const/4 p1, 0x0

    .line 31857
    iput-object p1, v0, Lo/getTextClassifier$onPostMessage;->onRelationshipValidationResult:Lo/getTextClassifier$ICustomTabsCallback;

    .line 32857
    iget-boolean p1, v0, Lo/getTextClassifier$onPostMessage;->onNavigationEvent:Z

    or-int/2addr p1, p2

    const/16 v3, 0xa

    const/16 v4, 0x20

    if-eqz p1, :cond_7

    .line 33857
    iput-boolean v2, v0, Lo/getTextClassifier$onPostMessage;->onNavigationEvent:Z

    .line 547
    iget-object p1, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    const-string v5, "CLEAN"

    invoke-virtual {p1, v5}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 548
    iget-object p1, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    invoke-virtual {p1, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 549
    iget-object p1, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    .line 34857
    iget-object v4, v0, Lo/getTextClassifier$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 549
    invoke-virtual {p1, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 550
    iget-object p1, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    invoke-virtual {v0}, Lo/getTextClassifier$onPostMessage;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 551
    iget-object p1, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    if-eqz p2, :cond_8

    .line 554
    iget-wide p1, p0, Lo/getTextClassifier;->ICustomTabsService:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, p1

    iput-wide v3, p0, Lo/getTextClassifier;->ICustomTabsService:J

    .line 35857
    iput-wide p1, v0, Lo/getTextClassifier$onPostMessage;->asInterface:J

    goto :goto_3

    .line 557
    :cond_7
    iget-object p1, p0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    .line 36857
    iget-object p2, v0, Lo/getTextClassifier$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 557
    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    iget-object p1, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    const-string p2, "REMOVE"

    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 559
    iget-object p1, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    invoke-virtual {p1, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 560
    iget-object p1, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    .line 37857
    iget-object p2, v0, Lo/getTextClassifier$onPostMessage;->extraCallback:Ljava/lang/String;

    .line 560
    invoke-virtual {p1, p2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 561
    iget-object p1, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    invoke-virtual {p1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 563
    :cond_8
    :goto_3
    iget-object p1, p0, Lo/getTextClassifier;->ICustomTabsCallback:Ljava/io/Writer;

    invoke-static {p1}, Lo/getTextClassifier;->ICustomTabsCallback(Ljava/io/Writer;)V

    .line 565
    iget-wide p1, p0, Lo/getTextClassifier;->getInterfaceDescriptor:J

    iget-wide v3, p0, Lo/getTextClassifier;->ICustomTabsCallback$Stub:J

    cmp-long v0, p1, v3

    if-gtz v0, :cond_a

    .line 38576
    iget p1, p0, Lo/getTextClassifier;->onPostMessage:I

    const/16 p2, 0x7d0

    if-lt p1, p2, :cond_9

    iget p1, p0, Lo/getTextClassifier;->onPostMessage:I

    iget-object p2, p0, Lo/getTextClassifier;->onMessageChannelReady:Ljava/util/LinkedHashMap;

    .line 38577
    invoke-virtual {p2}, Ljava/util/AbstractMap;->size()I

    move-result p2

    if-lt p1, p2, :cond_9

    const/4 v1, 0x1

    :cond_9
    if-eqz v1, :cond_b

    .line 566
    :cond_a
    iget-object p1, p0, Lo/getTextClassifier;->ICustomTabsCallback$Stub$Proxy:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lo/getTextClassifier;->newSession:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 568
    :cond_b
    monitor-exit p0

    return-void

    .line 510
    :cond_c
    :try_start_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
