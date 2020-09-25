.class public abstract Lo/getEventAppExecutionSize;
.super Lo/writeRawVarint64;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getEventAppExecutionSize$onPostMessage;,
        Lo/getEventAppExecutionSize$onMessageChannelReady;,
        Lo/getEventAppExecutionSize$ICustomTabsCallback;,
        Lo/getEventAppExecutionSize$extraCallback;,
        Lo/getEventAppExecutionSize$onNavigationEvent;,
        Lo/getEventAppExecutionSize$asInterface;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lo/getEventAppExecutionSize<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lo/getEventAppExecutionSize$onNavigationEvent<",
        "TMessageType;TBuilderType;>;>",
        "Lo/writeRawVarint64<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static defaultInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lo/getEventAppExecutionSize<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected memoizedSerializedSize:I

.field protected unknownFields:Lo/getFileName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 283
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lo/getEventAppExecutionSize;->defaultInstanceMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lo/writeRawVarint64;-><init>()V

    .line 66
    invoke-static {}, Lo/getFileName;->ICustomTabsCallback()Lo/getFileName;

    move-result-object v0

    iput-object v0, p0, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    const/4 v0, -0x1

    .line 69
    iput v0, p0, Lo/getEventAppExecutionSize;->memoizedSerializedSize:I

    return-void
.end method

.method static synthetic access$000(Lo/writeSessionEventAppExecution;)Lo/getEventAppExecutionSize$onMessageChannelReady;
    .locals 0

    .line 60
    invoke-static {p0}, Lo/getEventAppExecutionSize;->checkIsLite(Lo/writeSessionEventAppExecution;)Lo/getEventAppExecutionSize$onMessageChannelReady;

    move-result-object p0

    return-object p0
.end method

.method private static checkIsLite(Lo/writeSessionEventAppExecution;)Lo/getEventAppExecutionSize$onMessageChannelReady;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lo/getEventAppExecutionSize$extraCallback<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Ljava/lang/Object<",
            "TMessageType;TBuilderType;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/writeSessionEventAppExecution<",
            "TMessageType;TT;>;)",
            "Lo/getEventAppExecutionSize$onMessageChannelReady<",
            "TMessageType;TT;>;"
        }
    .end annotation

    .line 1403
    check-cast p0, Lo/getEventAppExecutionSize$onMessageChannelReady;

    return-object p0
.end method

.method private static checkMessageInitialized(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 1586
    invoke-virtual {p0}, Lo/getEventAppExecutionSize;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1588
    :cond_0
    invoke-virtual {p0}, Lo/getEventAppExecutionSize;->newUninitializedMessageException()Lcom/google/protobuf/UninitializedMessageException;

    move-result-object p0

    .line 13079
    new-instance v0, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 1590
    throw v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method protected static emptyBooleanList()Lo/getEventLogSize$onPostMessage;
    .locals 1

    .line 1470
    invoke-static {}, Lo/encodeZigZag32;->ICustomTabsCallback()Lo/encodeZigZag32;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyDoubleList()Lo/getEventLogSize$onMessageChannelReady;
    .locals 1

    .line 1460
    invoke-static {}, Lo/writeSessionEventApp;->ICustomTabsCallback()Lo/writeSessionEventApp;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyFloatList()Lo/getEventLogSize$onRelationshipValidationResult;
    .locals 1

    .line 1450
    invoke-static {}, Lo/getSessionDeviceSize;->ICustomTabsCallback()Lo/getSessionDeviceSize;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyIntList()Lo/getEventLogSize$onTransact;
    .locals 1

    .line 1430
    invoke-static {}, Lo/getEventAppExecutionExceptionSize;->ICustomTabsCallback()Lo/getEventAppExecutionExceptionSize;

    move-result-object v0

    return-object v0
.end method

.method protected static emptyLongList()Lo/getEventLogSize$asInterface;
    .locals 1

    .line 1440
    invoke-static {}, Lo/makeTag;->onNavigationEvent()Lo/makeTag;

    move-result-object v0

    return-object v0
.end method

.method public static emptyProtobufList()Lo/getEventLogSize$asBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/getEventLogSize$asBinder<",
            "TE;>;"
        }
    .end annotation

    .line 1480
    invoke-static {}, Lo/uploadReportsAsync;->onNavigationEvent()Lo/uploadReportsAsync;

    move-result-object v0

    return-object v0
.end method

.method private final ensureUnknownFieldsInitialized()V
    .locals 2

    .line 137
    iget-object v0, p0, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    invoke-static {}, Lo/getFileName;->ICustomTabsCallback()Lo/getFileName;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 138
    invoke-static {}, Lo/getFileName;->onMessageChannelReady()Lo/getFileName;

    move-result-object v0

    iput-object v0, p0, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    :cond_0
    return-void
.end method

.method static getDefaultInstance(Ljava/lang/Class;)Lo/getEventAppExecutionSize;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 288
    sget-object v0, Lo/getEventAppExecutionSize;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getEventAppExecutionSize;

    if-nez v0, :cond_0

    .line 293
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    sget-object v0, Lo/getEventAppExecutionSize;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getEventAppExecutionSize;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 295
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Class initialization cannot fail."

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 302
    invoke-static {p0}, Lo/CreateReportSpiCall;->onNavigationEvent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getEventAppExecutionSize;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->getDefaultInstanceForType()Lo/getEventAppExecutionSize;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 307
    sget-object v1, Lo/getEventAppExecutionSize;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 305
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method static varargs getMethodOrDie(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    .line 1147
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p2

    .line 1149
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Generated message class \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1150
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" missing method \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\"."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1158
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1163
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 1164
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-nez p1, :cond_1

    .line 1166
    instance-of p1, p0, Ljava/lang/Error;

    if-eqz p1, :cond_0

    .line 1167
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 1169
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Unexpected exception thrown by generated accessor method."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1165
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    :catch_1
    move-exception p0

    .line 1160
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected static final isInitialized(Lo/getEventAppExecutionSize;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 1413
    sget-object v0, Lo/getEventAppExecutionSize$asInterface;->onMessageChannelReady:Lo/getEventAppExecutionSize$asInterface;

    .line 1414
    invoke-virtual {p0, v0}, Lo/getEventAppExecutionSize;->dynamicMethod(Lo/getEventAppExecutionSize$asInterface;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1421
    :cond_1
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    .line 9107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v0

    .line 1421
    invoke-interface {v0, p0}, Lo/CreateReportRequest;->extraCallback(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_3

    .line 1423
    sget-object p1, Lo/getEventAppExecutionSize$asInterface;->onPostMessage:Lo/getEventAppExecutionSize$asInterface;

    if-eqz v0, :cond_2

    move-object v1, p0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1, v1}, Lo/getEventAppExecutionSize;->dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return v0
.end method

.method public static mutableCopy(Lo/getEventLogSize$asBinder;)Lo/getEventLogSize$asBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/getEventLogSize$asBinder<",
            "TE;>;)",
            "Lo/getEventLogSize$asBinder<",
            "TE;>;"
        }
    .end annotation

    .line 1484
    invoke-interface {p0}, Lo/getEventLogSize$asBinder;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 1485
    :goto_0
    invoke-interface {p0, v0}, Lo/getEventLogSize$asBinder;->ICustomTabsCallback(I)Lo/getEventLogSize$asBinder;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lo/getEventLogSize$asInterface;)Lo/getEventLogSize$asInterface;
    .locals 1

    .line 1444
    invoke-interface {p0}, Lo/getEventLogSize$asInterface;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 1445
    :goto_0
    invoke-interface {p0, v0}, Lo/getEventLogSize$asInterface;->extraCallback(I)Lo/getEventLogSize$asInterface;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lo/getEventLogSize$onMessageChannelReady;)Lo/getEventLogSize$onMessageChannelReady;
    .locals 1

    .line 1464
    invoke-interface {p0}, Lo/getEventLogSize$onMessageChannelReady;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 1465
    :goto_0
    invoke-interface {p0, v0}, Lo/getEventLogSize$onMessageChannelReady;->onMessageChannelReady(I)Lo/getEventLogSize$onMessageChannelReady;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lo/getEventLogSize$onPostMessage;)Lo/getEventLogSize$onPostMessage;
    .locals 1

    .line 1474
    invoke-interface {p0}, Lo/getEventLogSize$onPostMessage;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 1475
    :goto_0
    invoke-interface {p0, v0}, Lo/getEventLogSize$onPostMessage;->onPostMessage(I)Lo/getEventLogSize$onPostMessage;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lo/getEventLogSize$onRelationshipValidationResult;)Lo/getEventLogSize$onRelationshipValidationResult;
    .locals 1

    .line 1454
    invoke-interface {p0}, Lo/getEventLogSize$onRelationshipValidationResult;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 1455
    :goto_0
    invoke-interface {p0, v0}, Lo/getEventLogSize$onRelationshipValidationResult;->extraCallback(I)Lo/getEventLogSize$onRelationshipValidationResult;

    move-result-object p0

    return-object p0
.end method

.method protected static mutableCopy(Lo/getEventLogSize$onTransact;)Lo/getEventLogSize$onTransact;
    .locals 1

    .line 1434
    invoke-interface {p0}, Lo/getEventLogSize$onTransact;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 1435
    :goto_0
    invoke-interface {p0, v0}, Lo/getEventLogSize$onTransact;->extraCallback(I)Lo/getEventLogSize$onTransact;

    move-result-object p0

    return-object p0
.end method

.method protected static newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 319
    new-instance v0, Lo/isUploading;

    invoke-direct {v0, p0, p1, p2}, Lo/isUploading;-><init>(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newRepeatedGeneratedExtension(Lo/WireFormat$FieldType$2;Lo/WireFormat$FieldType$2;Lo/getEventLogSize$onNavigationEvent;ILo/DefaultCreateReportSpiCall$onMessageChannelReady;ZLjava/lang/Class;)Lo/getEventAppExecutionSize$onMessageChannelReady;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lo/WireFormat$FieldType$2;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;",
            "Lo/WireFormat$FieldType$2;",
            "Lo/getEventLogSize$onNavigationEvent<",
            "*>;I",
            "Lo/DefaultCreateReportSpiCall$onMessageChannelReady;",
            "Z",
            "Ljava/lang/Class;",
            ")",
            "Lo/getEventAppExecutionSize$onMessageChannelReady<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1068
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 1069
    new-instance p6, Lo/getEventAppExecutionSize$onMessageChannelReady;

    new-instance v6, Lo/getEventAppExecutionSize$ICustomTabsCallback;

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lo/getEventAppExecutionSize$ICustomTabsCallback;-><init>(Lo/getEventLogSize$onNavigationEvent;ILo/DefaultCreateReportSpiCall$onMessageChannelReady;ZZ)V

    invoke-direct {p6, p0, p1, v6}, Lo/getEventAppExecutionSize$onMessageChannelReady;-><init>(Lo/WireFormat$FieldType$2;Lo/WireFormat$FieldType$2;Lo/getEventAppExecutionSize$ICustomTabsCallback;)V

    return-object p6
.end method

.method public static newSingularGeneratedExtension(Lo/WireFormat$FieldType$2;Ljava/lang/Object;Lo/WireFormat$FieldType$2;Lo/getEventLogSize$onNavigationEvent;ILo/DefaultCreateReportSpiCall$onMessageChannelReady;Ljava/lang/Class;)Lo/getEventAppExecutionSize$onMessageChannelReady;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lo/WireFormat$FieldType$2;",
            "Type:",
            "Ljava/lang/Object;",
            ">(TContainingType;TType;",
            "Lo/WireFormat$FieldType$2;",
            "Lo/getEventLogSize$onNavigationEvent<",
            "*>;I",
            "Lo/DefaultCreateReportSpiCall$onMessageChannelReady;",
            "Ljava/lang/Class;",
            ")",
            "Lo/getEventAppExecutionSize$onMessageChannelReady<",
            "TContainingType;TType;>;"
        }
    .end annotation

    .line 1048
    new-instance p1, Lo/getEventAppExecutionSize$onMessageChannelReady;

    new-instance p6, Lo/getEventAppExecutionSize$ICustomTabsCallback;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p6

    move-object v1, p3

    move v2, p4

    move-object v3, p5

    invoke-direct/range {v0 .. v5}, Lo/getEventAppExecutionSize$ICustomTabsCallback;-><init>(Lo/getEventLogSize$onNavigationEvent;ILo/DefaultCreateReportSpiCall$onMessageChannelReady;ZZ)V

    invoke-direct {p1, p0, p2, p6}, Lo/getEventAppExecutionSize$onMessageChannelReady;-><init>(Lo/WireFormat$FieldType$2;Lo/WireFormat$FieldType$2;Lo/getEventAppExecutionSize$ICustomTabsCallback;)V

    return-object p1
.end method

.method public static parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1703
    invoke-static {}, Lo/writeSessionEventDevice;->onMessageChannelReady()Lo/writeSessionEventDevice;

    move-result-object v0

    .line 1702
    invoke-static {p0, p1, v0}, Lo/getEventAppExecutionSize;->parsePartialDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    .line 1701
    invoke-static {p0}, Lo/getEventAppExecutionSize;->checkMessageInitialized(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1711
    invoke-static {p0, p1, p2}, Lo/getEventAppExecutionSize;->parsePartialDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    .line 1710
    invoke-static {p0}, Lo/getEventAppExecutionSize;->checkMessageInitialized(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1673
    invoke-static {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady(Ljava/io/InputStream;)Lo/writeSessionAppClsId;

    move-result-object p1

    .line 1674
    invoke-static {}, Lo/writeSessionEventDevice;->onMessageChannelReady()Lo/writeSessionEventDevice;

    move-result-object v0

    .line 1671
    invoke-static {p0, p1, v0}, Lo/getEventAppExecutionSize;->parsePartialFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    .line 1670
    invoke-static {p0}, Lo/getEventAppExecutionSize;->checkMessageInitialized(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1682
    invoke-static {p1}, Lo/writeSessionAppClsId;->onMessageChannelReady(Ljava/io/InputStream;)Lo/writeSessionAppClsId;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lo/getEventAppExecutionSize;->parsePartialFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    .line 1681
    invoke-static {p0}, Lo/getEventAppExecutionSize;->checkMessageInitialized(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;)Lo/getEventAppExecutionSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1606
    invoke-static {}, Lo/writeSessionEventDevice;->onMessageChannelReady()Lo/writeSessionEventDevice;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;",
            "Ljava/nio/ByteBuffer;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1600
    invoke-static {p1}, Lo/writeSessionAppClsId;->ICustomTabsCallback(Ljava/nio/ByteBuffer;)Lo/writeSessionAppClsId;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    .line 1599
    invoke-static {p0}, Lo/getEventAppExecutionSize;->checkMessageInitialized(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;)Lo/getEventAppExecutionSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;",
            "Lo/SessionProtobufHelper;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1613
    invoke-static {}, Lo/writeSessionEventDevice;->onMessageChannelReady()Lo/writeSessionEventDevice;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    .line 1612
    invoke-static {p0}, Lo/getEventAppExecutionSize;->checkMessageInitialized(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;",
            "Lo/SessionProtobufHelper;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1620
    invoke-static {p0, p1, p2}, Lo/getEventAppExecutionSize;->parsePartialFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    invoke-static {p0}, Lo/getEventAppExecutionSize;->checkMessageInitialized(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;)Lo/getEventAppExecutionSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;",
            "Lo/writeSessionAppClsId;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1688
    invoke-static {}, Lo/writeSessionEventDevice;->onMessageChannelReady()Lo/writeSessionEventDevice;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;",
            "Lo/writeSessionAppClsId;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1695
    invoke-static {p0, p1, p2}, Lo/getEventAppExecutionSize;->parsePartialFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    invoke-static {p0}, Lo/getEventAppExecutionSize;->checkMessageInitialized(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lo/getEventAppExecutionSize;[B)Lo/getEventAppExecutionSize;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;[B)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1655
    array-length v0, p1

    .line 1656
    invoke-static {}, Lo/writeSessionEventDevice;->onMessageChannelReady()Lo/writeSessionEventDevice;

    move-result-object v1

    const/4 v2, 0x0

    .line 1655
    invoke-static {p0, p1, v2, v0, v1}, Lo/getEventAppExecutionSize;->parsePartialFrom(Lo/getEventAppExecutionSize;[BIILo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    invoke-static {p0}, Lo/getEventAppExecutionSize;->checkMessageInitialized(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize;

    move-result-object p0

    return-object p0
.end method

.method public static parseFrom(Lo/getEventAppExecutionSize;[BLo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;[B",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1663
    array-length v0, p1

    const/4 v1, 0x0

    .line 1664
    invoke-static {p0, p1, v1, v0, p2}, Lo/getEventAppExecutionSize;->parsePartialFrom(Lo/getEventAppExecutionSize;[BIILo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    .line 1663
    invoke-static {p0}, Lo/getEventAppExecutionSize;->checkMessageInitialized(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize;

    move-result-object p0

    return-object p0
.end method

.method private static parsePartialDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;",
            "Ljava/io/InputStream;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1719
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1723
    :cond_0
    invoke-static {v0, p1}, Lo/writeSessionAppClsId;->ICustomTabsCallback(ILjava/io/InputStream;)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1727
    new-instance v1, Lo/writeRawVarint64$onNavigationEvent$onPostMessage;

    invoke-direct {v1, p1, v0}, Lo/writeRawVarint64$onNavigationEvent$onPostMessage;-><init>(Ljava/io/InputStream;I)V

    .line 1728
    invoke-static {v1}, Lo/writeSessionAppClsId;->onMessageChannelReady(Ljava/io/InputStream;)Lo/writeSessionAppClsId;

    move-result-object p1

    .line 1729
    invoke-static {p0, p1, p2}, Lo/getEventAppExecutionSize;->parsePartialFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    const/4 p2, 0x0

    .line 1731
    :try_start_1
    invoke-virtual {p1, p2}, Lo/writeSessionAppClsId;->onNavigationEvent(I)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1733
    throw p0

    :catch_1
    move-exception p0

    .line 1725
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parsePartialFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;",
            "Lo/SessionProtobufHelper;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1630
    :try_start_0
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onTransact()Lo/writeSessionAppClsId;

    move-result-object p1

    .line 1631
    invoke-static {p0, p1, p2}, Lo/getEventAppExecutionSize;->parsePartialFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p2, 0x0

    .line 1633
    :try_start_1
    invoke-virtual {p1, p2}, Lo/writeSessionAppClsId;->onNavigationEvent(I)V
    :try_end_1
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1635
    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 1639
    throw p0
.end method

.method protected static parsePartialFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;)Lo/getEventAppExecutionSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;",
            "Lo/writeSessionAppClsId;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1575
    invoke-static {}, Lo/writeSessionEventDevice;->onMessageChannelReady()Lo/writeSessionEventDevice;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lo/getEventAppExecutionSize;->parsePartialFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    return-object p0
.end method

.method static parsePartialFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;",
            "Lo/writeSessionAppClsId;",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1527
    sget-object v0, Lo/getEventAppExecutionSize$asInterface;->extraCallback:Lo/getEventAppExecutionSize$asInterface;

    invoke-virtual {p0, v0}, Lo/getEventAppExecutionSize;->dynamicMethod(Lo/getEventAppExecutionSize$asInterface;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getEventAppExecutionSize;

    .line 1531
    :try_start_0
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    .line 10107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v0

    .line 11059
    iget-object v1, p1, Lo/writeSessionAppClsId;->onMessageChannelReady:Lo/writeSessionEventAppExecutionException;

    if-eqz v1, :cond_0

    .line 11060
    iget-object p1, p1, Lo/writeSessionAppClsId;->onMessageChannelReady:Lo/writeSessionEventAppExecutionException;

    goto :goto_0

    .line 11062
    :cond_0
    new-instance v1, Lo/writeSessionEventAppExecutionException;

    invoke-direct {v1, p1}, Lo/writeSessionEventAppExecutionException;-><init>(Lo/writeSessionAppClsId;)V

    move-object p1, v1

    .line 1532
    :goto_0
    invoke-interface {v0, p0, p1, p2}, Lo/CreateReportRequest;->onPostMessage(Ljava/lang/Object;Lo/attemptUploadWithRetry;Lo/writeSessionEventDevice;)V

    .line 1533
    invoke-interface {v0, p0}, Lo/CreateReportRequest;->ICustomTabsCallback(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1540
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz p1, :cond_1

    .line 1541
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p0

    .line 1543
    :cond_1
    throw p0

    :catch_1
    move-exception p0

    .line 1535
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz p1, :cond_2

    .line 1536
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p0

    .line 1538
    :cond_2
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static parsePartialFrom(Lo/getEventAppExecutionSize;[BIILo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;[BII",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1553
    sget-object v0, Lo/getEventAppExecutionSize$asInterface;->extraCallback:Lo/getEventAppExecutionSize$asInterface;

    invoke-virtual {p0, v0}, Lo/getEventAppExecutionSize;->dynamicMethod(Lo/getEventAppExecutionSize$asInterface;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lo/getEventAppExecutionSize;

    .line 1555
    :try_start_0
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    .line 11107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v6

    add-int v4, p2, p3

    .line 1556
    new-instance v5, Lo/writeRawLittleEndian64$onPostMessage;

    invoke-direct {v5, p4}, Lo/writeRawLittleEndian64$onPostMessage;-><init>(Lo/writeSessionEventDevice;)V

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-interface/range {v0 .. v5}, Lo/CreateReportRequest;->extraCallback(Ljava/lang/Object;[BIILo/writeRawLittleEndian64$onPostMessage;)V

    .line 1558
    invoke-interface {v6, p0}, Lo/CreateReportRequest;->ICustomTabsCallback(Ljava/lang/Object;)V

    .line 1559
    iget p1, p0, Lo/writeRawVarint64;->memoizedHashCode:I

    if-nez p1, :cond_0

    return-object p0

    .line 1560
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1568
    :catch_0
    invoke-static {}, Lcom/google/protobuf/InvalidProtocolBufferException;->onMessageChannelReady()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 1563
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    if-eqz p1, :cond_1

    .line 1564
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/google/protobuf/InvalidProtocolBufferException;

    throw p0

    .line 1566
    :cond_1
    new-instance p1, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parsePartialFrom(Lo/getEventAppExecutionSize;[BLo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "TT;*>;>(TT;[B",
            "Lo/writeSessionEventDevice;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1648
    array-length v0, p1

    const/4 v1, 0x0

    .line 1649
    invoke-static {p0, p1, v1, v0, p2}, Lo/getEventAppExecutionSize;->parsePartialFrom(Lo/getEventAppExecutionSize;[BIILo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    .line 1648
    invoke-static {p0}, Lo/getEventAppExecutionSize;->checkMessageInitialized(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize;

    move-result-object p0

    return-object p0
.end method

.method public static registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lo/getEventAppExecutionSize<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 314
    sget-object v0, Lo/getEventAppExecutionSize;->defaultInstanceMap:Ljava/util/Map;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method buildMessageInfo()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 280
    sget-object v0, Lo/getEventAppExecutionSize$asInterface;->onNavigationEvent:Lo/getEventAppExecutionSize$asInterface;

    invoke-virtual {p0, v0}, Lo/getEventAppExecutionSize;->dynamicMethod(Lo/getEventAppExecutionSize$asInterface;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lo/getEventAppExecutionSize<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lo/getEventAppExecutionSize$onNavigationEvent<",
            "TMessageType;TBuilderType;>;>()TBuilderType;"
        }
    .end annotation

    .line 178
    sget-object v0, Lo/getEventAppExecutionSize$asInterface;->ICustomTabsCallback:Lo/getEventAppExecutionSize$asInterface;

    invoke-virtual {p0, v0}, Lo/getEventAppExecutionSize;->dynamicMethod(Lo/getEventAppExecutionSize$asInterface;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getEventAppExecutionSize$onNavigationEvent;

    return-object v0
.end method

.method public final createBuilder(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<MessageType:",
            "Lo/getEventAppExecutionSize<",
            "TMessageType;TBuilderType;>;BuilderType:",
            "Lo/getEventAppExecutionSize$onNavigationEvent<",
            "TMessageType;TBuilderType;>;>(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 185
    invoke-virtual {p0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p1

    return-object p1
.end method

.method protected dynamicMethod(Lo/getEventAppExecutionSize$asInterface;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, p1, v0, v0}, Lo/getEventAppExecutionSize;->dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 247
    invoke-virtual {p0, p1, p2, v0}, Lo/getEventAppExecutionSize;->dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 124
    :cond_0
    invoke-virtual {p0}, Lo/getEventAppExecutionSize;->getDefaultInstanceForType()Lo/getEventAppExecutionSize;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 128
    :cond_1
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    .line 3107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v0

    .line 128
    check-cast p1, Lo/getEventAppExecutionSize;

    invoke-interface {v0, p0, p1}, Lo/CreateReportRequest;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lo/WireFormat$FieldType$2;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lo/getEventAppExecutionSize;->getDefaultInstanceForType()Lo/getEventAppExecutionSize;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultInstanceForType()Lo/getEventAppExecutionSize;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 80
    sget-object v0, Lo/getEventAppExecutionSize$asInterface;->onRelationshipValidationResult:Lo/getEventAppExecutionSize$asInterface;

    invoke-virtual {p0, v0}, Lo/getEventAppExecutionSize;->dynamicMethod(Lo/getEventAppExecutionSize$asInterface;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getEventAppExecutionSize;

    return-object v0
.end method

.method getMemoizedSerializedSize()I
    .locals 1

    .line 257
    iget v0, p0, Lo/getEventAppExecutionSize;->memoizedSerializedSize:I

    return v0
.end method

.method public final getParserForType()Lo/areReportsAvailable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/areReportsAvailable<",
            "TMessageType;>;"
        }
    .end annotation

    .line 74
    sget-object v0, Lo/getEventAppExecutionSize$asInterface;->asBinder:Lo/getEventAppExecutionSize$asInterface;

    invoke-virtual {p0, v0}, Lo/getEventAppExecutionSize;->dynamicMethod(Lo/getEventAppExecutionSize$asInterface;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/areReportsAvailable;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .line 272
    iget v0, p0, Lo/getEventAppExecutionSize;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 273
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    .line 8107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v0

    .line 273
    invoke-interface {v0, p0}, Lo/CreateReportRequest;->onMessageChannelReady(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lo/getEventAppExecutionSize;->memoizedSerializedSize:I

    .line 275
    :cond_0
    iget v0, p0, Lo/getEventAppExecutionSize;->memoizedSerializedSize:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 109
    iget v0, p0, Lo/writeRawVarint64;->memoizedHashCode:I

    if-eqz v0, :cond_0

    .line 110
    iget v0, p0, Lo/writeRawVarint64;->memoizedHashCode:I

    return v0

    .line 112
    :cond_0
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    .line 2107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v0

    .line 112
    invoke-interface {v0, p0}, Lo/CreateReportRequest;->onNavigationEvent(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lo/writeRawVarint64;->memoizedHashCode:I

    .line 113
    iget v0, p0, Lo/writeRawVarint64;->memoizedHashCode:I

    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    .line 190
    invoke-static {p0, v0}, Lo/getEventAppExecutionSize;->isInitialized(Lo/getEventAppExecutionSize;Z)Z

    move-result v0

    return v0
.end method

.method protected makeImmutable()V
    .locals 2

    .line 171
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    .line 6107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v0

    .line 171
    invoke-interface {v0, p0}, Lo/CreateReportRequest;->ICustomTabsCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected mergeLengthDelimitedField(ILo/SessionProtobufHelper;)V
    .locals 2

    .line 165
    invoke-direct {p0}, Lo/getEventAppExecutionSize;->ensureUnknownFieldsInitialized()V

    .line 166
    iget-object v0, p0, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    .line 5121
    iget-boolean v1, v0, Lo/getFileName;->ICustomTabsCallback:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    .line 4474
    invoke-static {p1, v1}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    return-void

    .line 4471
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5122
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method protected final mergeUnknownFields(Lo/getFileName;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    invoke-static {v0, p1}, Lo/getFileName;->onMessageChannelReady(Lo/getFileName;Lo/getFileName;)Lo/getFileName;

    move-result-object p1

    iput-object p1, p0, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    return-void
.end method

.method protected mergeVarintField(II)V
    .locals 3

    .line 159
    invoke-direct {p0}, Lo/getEventAppExecutionSize;->ensureUnknownFieldsInitialized()V

    .line 160
    iget-object v0, p0, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    .line 4121
    iget-boolean v1, v0, Lo/getFileName;->ICustomTabsCallback:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 3458
    invoke-static {p1, v1}, Lo/DefaultCreateReportSpiCall;->onNavigationEvent(II)I

    move-result p1

    int-to-long v1, p2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lo/getFileName;->onPostMessage(ILjava/lang/Object;)V

    return-void

    .line 3455
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Zero is not a valid field number."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4122
    :cond_1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic newBuilderForType()Lo/WireFormat$FieldType$2$extraCallback;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lo/getEventAppExecutionSize;->newBuilderForType()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    return-object v0
.end method

.method public final newBuilderForType()Lo/getEventAppExecutionSize$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 86
    sget-object v0, Lo/getEventAppExecutionSize$asInterface;->ICustomTabsCallback:Lo/getEventAppExecutionSize$asInterface;

    invoke-virtual {p0, v0}, Lo/getEventAppExecutionSize;->dynamicMethod(Lo/getEventAppExecutionSize$asInterface;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getEventAppExecutionSize$onNavigationEvent;

    return-object v0
.end method

.method protected parseUnknownField(ILo/writeSessionAppClsId;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    invoke-static {p1}, Lo/DefaultCreateReportSpiCall;->ICustomTabsCallback(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 153
    :cond_0
    invoke-direct {p0}, Lo/getEventAppExecutionSize;->ensureUnknownFieldsInitialized()V

    .line 154
    iget-object v0, p0, Lo/getEventAppExecutionSize;->unknownFields:Lo/getFileName;

    invoke-virtual {v0, p1, p2}, Lo/getFileName;->onMessageChannelReady(ILo/writeSessionAppClsId;)Z

    move-result p1

    return p1
.end method

.method setMemoizedSerializedSize(I)V
    .locals 0

    .line 262
    iput p1, p0, Lo/getEventAppExecutionSize;->memoizedSerializedSize:I

    return-void
.end method

.method public bridge synthetic toBuilder()Lo/WireFormat$FieldType$2$extraCallback;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lo/getEventAppExecutionSize;->toBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 196
    sget-object v0, Lo/getEventAppExecutionSize$asInterface;->ICustomTabsCallback:Lo/getEventAppExecutionSize$asInterface;

    invoke-virtual {p0, v0}, Lo/getEventAppExecutionSize;->dynamicMethod(Lo/getEventAppExecutionSize$asInterface;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getEventAppExecutionSize$onNavigationEvent;

    .line 197
    invoke-virtual {v0, p0}, Lo/getEventAppExecutionSize$onNavigationEvent;->mergeFrom(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 103
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2059
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    .line 2060
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 2061
    invoke-static {p0, v1, v0}, Lo/WireFormat$JavaType;->extraCallback(Lo/WireFormat$FieldType$2;Ljava/lang/StringBuilder;I)V

    .line 2062
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    invoke-static {}, Lo/ReportUploader$HandlingExceptionCheck;->ICustomTabsCallback()Lo/ReportUploader$HandlingExceptionCheck;

    move-result-object v0

    .line 7107
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ReportUploader$HandlingExceptionCheck;->onMessageChannelReady(Ljava/lang/Class;)Lo/CreateReportRequest;

    move-result-object v0

    .line 8047
    iget-object v1, p1, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback:Lo/writeSessionEventAppCustomAttributes;

    if-eqz v1, :cond_0

    .line 8048
    iget-object p1, p1, Lcom/google/protobuf/CodedOutputStream;->ICustomTabsCallback:Lo/writeSessionEventAppCustomAttributes;

    goto :goto_0

    .line 8050
    :cond_0
    new-instance v1, Lo/writeSessionEventAppCustomAttributes;

    invoke-direct {v1, p1}, Lo/writeSessionEventAppCustomAttributes;-><init>(Lcom/google/protobuf/CodedOutputStream;)V

    move-object p1, v1

    .line 268
    :goto_0
    invoke-interface {v0, p0, p1}, Lo/CreateReportRequest;->ICustomTabsCallback(Ljava/lang/Object;Lo/sendReport;)V

    return-void
.end method
