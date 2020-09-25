.class public final Lo/getCodedOutput$asBinder;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/getCodedOutput$onTransact;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCodedOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "asBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCodedOutput$asBinder$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/getCodedOutput$asBinder;",
        "Lo/getCodedOutput$asBinder$extraCallback;",
        ">;",
        "Lo/getCodedOutput$onTransact;"
    }
.end annotation


# static fields
.field public static final APP_UPDATE_TIME_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

.field public static final NAMESPACE_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/getCodedOutput$asBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESOURCE_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private appUpdateTime_:J

.field private bitField0_:I

.field private namespace_:Ljava/lang/String;

.field private resourceId_:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 3283
    new-instance v0, Lo/getCodedOutput$asBinder;

    invoke-direct {v0}, Lo/getCodedOutput$asBinder;-><init>()V

    .line 3286
    sput-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    .line 3287
    const-class v1, Lo/getCodedOutput$asBinder;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2874
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const-string v0, ""

    .line 2875
    iput-object v0, p0, Lo/getCodedOutput$asBinder;->namespace_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$6000()Lo/getCodedOutput$asBinder;
    .locals 1

    .line 2869
    sget-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    return-object v0
.end method

.method static synthetic access$6100(Lo/getCodedOutput$asBinder;I)V
    .locals 0

    .line 2869
    invoke-direct {p0, p1}, Lo/getCodedOutput$asBinder;->setResourceId(I)V

    return-void
.end method

.method static synthetic access$6200(Lo/getCodedOutput$asBinder;)V
    .locals 0

    .line 2869
    invoke-direct {p0}, Lo/getCodedOutput$asBinder;->clearResourceId()V

    return-void
.end method

.method static synthetic access$6300(Lo/getCodedOutput$asBinder;J)V
    .locals 0

    .line 2869
    invoke-direct {p0, p1, p2}, Lo/getCodedOutput$asBinder;->setAppUpdateTime(J)V

    return-void
.end method

.method static synthetic access$6400(Lo/getCodedOutput$asBinder;)V
    .locals 0

    .line 2869
    invoke-direct {p0}, Lo/getCodedOutput$asBinder;->clearAppUpdateTime()V

    return-void
.end method

.method static synthetic access$6500(Lo/getCodedOutput$asBinder;Ljava/lang/String;)V
    .locals 0

    .line 2869
    invoke-direct {p0, p1}, Lo/getCodedOutput$asBinder;->setNamespace(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6600(Lo/getCodedOutput$asBinder;)V
    .locals 0

    .line 2869
    invoke-direct {p0}, Lo/getCodedOutput$asBinder;->clearNamespace()V

    return-void
.end method

.method static synthetic access$6700(Lo/getCodedOutput$asBinder;Lo/SessionProtobufHelper;)V
    .locals 0

    .line 2869
    invoke-direct {p0, p1}, Lo/getCodedOutput$asBinder;->setNamespaceBytes(Lo/SessionProtobufHelper;)V

    return-void
.end method

.method private clearAppUpdateTime()V
    .locals 2

    .line 2942
    iget v0, p0, Lo/getCodedOutput$asBinder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lo/getCodedOutput$asBinder;->bitField0_:I

    const-wide/16 v0, 0x0

    .line 2943
    iput-wide v0, p0, Lo/getCodedOutput$asBinder;->appUpdateTime_:J

    return-void
.end method

.method private clearNamespace()V
    .locals 1

    .line 2987
    iget v0, p0, Lo/getCodedOutput$asBinder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lo/getCodedOutput$asBinder;->bitField0_:I

    .line 2988
    invoke-static {}, Lo/getCodedOutput$asBinder;->getDefaultInstance()Lo/getCodedOutput$asBinder;

    move-result-object v0

    invoke-virtual {v0}, Lo/getCodedOutput$asBinder;->getNamespace()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getCodedOutput$asBinder;->namespace_:Ljava/lang/String;

    return-void
.end method

.method private clearResourceId()V
    .locals 1

    .line 2908
    iget v0, p0, Lo/getCodedOutput$asBinder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lo/getCodedOutput$asBinder;->bitField0_:I

    const/4 v0, 0x0

    .line 2909
    iput v0, p0, Lo/getCodedOutput$asBinder;->resourceId_:I

    return-void
.end method

.method public static getDefaultInstance()Lo/getCodedOutput$asBinder;
    .locals 1

    .line 3292
    sget-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    return-object v0
.end method

.method public static newBuilder()Lo/getCodedOutput$asBinder$extraCallback;
    .locals 1

    .line 3075
    sget-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/getCodedOutput$asBinder$extraCallback;

    return-object v0
.end method

.method public static newBuilder(Lo/getCodedOutput$asBinder;)Lo/getCodedOutput$asBinder$extraCallback;
    .locals 1

    .line 3078
    sget-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    invoke-virtual {v0, p0}, Lo/getEventAppExecutionSize;->createBuilder(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$asBinder$extraCallback;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lo/getCodedOutput$asBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3052
    sget-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    invoke-static {v0, p0}, Lo/getCodedOutput$asBinder;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$asBinder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getCodedOutput$asBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3058
    sget-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    invoke-static {v0, p0, p1}, Lo/getCodedOutput$asBinder;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$asBinder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lo/getCodedOutput$asBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3040
    sget-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$asBinder;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getCodedOutput$asBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3047
    sget-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$asBinder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lo/getCodedOutput$asBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3003
    sget-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$asBinder;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getCodedOutput$asBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3010
    sget-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$asBinder;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;)Lo/getCodedOutput$asBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3016
    sget-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$asBinder;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getCodedOutput$asBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3023
    sget-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$asBinder;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;)Lo/getCodedOutput$asBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3063
    sget-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$asBinder;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getCodedOutput$asBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3070
    sget-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$asBinder;

    return-object p0
.end method

.method public static parseFrom([B)Lo/getCodedOutput$asBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3028
    sget-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[B)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$asBinder;

    return-object p0
.end method

.method public static parseFrom([BLo/writeSessionEventDevice;)Lo/getCodedOutput$asBinder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3035
    sget-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[BLo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$asBinder;

    return-object p0
.end method

.method public static parser()Lo/areReportsAvailable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/areReportsAvailable<",
            "Lo/getCodedOutput$asBinder;",
            ">;"
        }
    .end annotation

    .line 3298
    sget-object v0, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->getParserForType()Lo/areReportsAvailable;

    move-result-object v0

    return-object v0
.end method

.method private setAppUpdateTime(J)V
    .locals 1

    .line 2935
    iget v0, p0, Lo/getCodedOutput$asBinder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/getCodedOutput$asBinder;->bitField0_:I

    .line 2936
    iput-wide p1, p0, Lo/getCodedOutput$asBinder;->appUpdateTime_:J

    return-void
.end method

.method private setNamespace(Ljava/lang/String;)V
    .locals 1

    .line 2980
    iget v0, p0, Lo/getCodedOutput$asBinder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lo/getCodedOutput$asBinder;->bitField0_:I

    .line 2981
    iput-object p1, p0, Lo/getCodedOutput$asBinder;->namespace_:Ljava/lang/String;

    return-void
.end method

.method private setNamespaceBytes(Lo/SessionProtobufHelper;)V
    .locals 0

    .line 2996
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/getCodedOutput$asBinder;->namespace_:Ljava/lang/String;

    .line 2997
    iget p1, p0, Lo/getCodedOutput$asBinder;->bitField0_:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lo/getCodedOutput$asBinder;->bitField0_:I

    return-void
.end method

.method private setResourceId(I)V
    .locals 1

    .line 2901
    iget v0, p0, Lo/getCodedOutput$asBinder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/getCodedOutput$asBinder;->bitField0_:I

    .line 2902
    iput p1, p0, Lo/getCodedOutput$asBinder;->resourceId_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3231
    sget-object p2, Lo/getCodedOutput$4;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 3276
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 3270
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 3255
    :pswitch_2
    sget-object p1, Lo/getCodedOutput$asBinder;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 3257
    const-class p1, Lo/getCodedOutput$asBinder;

    monitor-enter p1

    .line 3258
    :try_start_0
    sget-object p2, Lo/getCodedOutput$asBinder;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 3260
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 3263
    sput-object p2, Lo/getCodedOutput$asBinder;->PARSER:Lo/areReportsAvailable;

    .line 3265
    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, p2

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2

    :cond_1
    :goto_0
    return-object p1

    .line 3252
    :pswitch_3
    sget-object p1, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "resourceId_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "appUpdateTime_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "namespace_"

    aput-object p3, p1, p2

    .line 3248
    sget-object p2, Lo/getCodedOutput$asBinder;->DEFAULT_INSTANCE:Lo/getCodedOutput$asBinder;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0005\u0001\u0003\u0008\u0002"

    invoke-static {p2, p3, p1}, Lo/getCodedOutput$asBinder;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3236
    :pswitch_5
    new-instance p1, Lo/getCodedOutput$asBinder$extraCallback;

    invoke-direct {p1, p3}, Lo/getCodedOutput$asBinder$extraCallback;-><init>(Lo/getCodedOutput$4;)V

    return-object p1

    .line 3233
    :pswitch_6
    new-instance p1, Lo/getCodedOutput$asBinder;

    invoke-direct {p1}, Lo/getCodedOutput$asBinder;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getAppUpdateTime()J
    .locals 2

    .line 2928
    iget-wide v0, p0, Lo/getCodedOutput$asBinder;->appUpdateTime_:J

    return-wide v0
.end method

.method public final getNamespace()Ljava/lang/String;
    .locals 1

    .line 2962
    iget-object v0, p0, Lo/getCodedOutput$asBinder;->namespace_:Ljava/lang/String;

    return-object v0
.end method

.method public final getNamespaceBytes()Lo/SessionProtobufHelper;
    .locals 1

    .line 2971
    iget-object v0, p0, Lo/getCodedOutput$asBinder;->namespace_:Ljava/lang/String;

    invoke-static {v0}, Lo/SessionProtobufHelper;->extraCallback(Ljava/lang/String;)Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0
.end method

.method public final getResourceId()I
    .locals 1

    .line 2894
    iget v0, p0, Lo/getCodedOutput$asBinder;->resourceId_:I

    return v0
.end method

.method public final hasAppUpdateTime()Z
    .locals 1

    .line 2920
    iget v0, p0, Lo/getCodedOutput$asBinder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasNamespace()Z
    .locals 1

    .line 2954
    iget v0, p0, Lo/getCodedOutput$asBinder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasResourceId()Z
    .locals 2

    .line 2886
    iget v0, p0, Lo/getCodedOutput$asBinder;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
