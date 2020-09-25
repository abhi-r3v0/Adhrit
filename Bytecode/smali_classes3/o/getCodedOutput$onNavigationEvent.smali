.class public final Lo/getCodedOutput$onNavigationEvent;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/getCodedOutput$extraCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getCodedOutput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/getCodedOutput$onNavigationEvent;",
        "Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;",
        ">;",
        "Lo/getCodedOutput$extraCallback;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

.field public static final KEY_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/getCodedOutput$onNavigationEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final VALUE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private key_:Ljava/lang/String;

.field private value_:Lo/SessionProtobufHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1208
    new-instance v0, Lo/getCodedOutput$onNavigationEvent;

    invoke-direct {v0}, Lo/getCodedOutput$onNavigationEvent;-><init>()V

    .line 1211
    sput-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    .line 1212
    const-class v1, Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 868
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const-string v0, ""

    .line 869
    iput-object v0, p0, Lo/getCodedOutput$onNavigationEvent;->key_:Ljava/lang/String;

    .line 870
    sget-object v0, Lo/SessionProtobufHelper;->onNavigationEvent:Lo/SessionProtobufHelper;

    iput-object v0, p0, Lo/getCodedOutput$onNavigationEvent;->value_:Lo/SessionProtobufHelper;

    return-void
.end method

.method static synthetic access$2000()Lo/getCodedOutput$onNavigationEvent;
    .locals 1

    .line 863
    sget-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    return-object v0
.end method

.method static synthetic access$2100(Lo/getCodedOutput$onNavigationEvent;Ljava/lang/String;)V
    .locals 0

    .line 863
    invoke-direct {p0, p1}, Lo/getCodedOutput$onNavigationEvent;->setKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lo/getCodedOutput$onNavigationEvent;)V
    .locals 0

    .line 863
    invoke-direct {p0}, Lo/getCodedOutput$onNavigationEvent;->clearKey()V

    return-void
.end method

.method static synthetic access$2300(Lo/getCodedOutput$onNavigationEvent;Lo/SessionProtobufHelper;)V
    .locals 0

    .line 863
    invoke-direct {p0, p1}, Lo/getCodedOutput$onNavigationEvent;->setKeyBytes(Lo/SessionProtobufHelper;)V

    return-void
.end method

.method static synthetic access$2400(Lo/getCodedOutput$onNavigationEvent;Lo/SessionProtobufHelper;)V
    .locals 0

    .line 863
    invoke-direct {p0, p1}, Lo/getCodedOutput$onNavigationEvent;->setValue(Lo/SessionProtobufHelper;)V

    return-void
.end method

.method static synthetic access$2500(Lo/getCodedOutput$onNavigationEvent;)V
    .locals 0

    .line 863
    invoke-direct {p0}, Lo/getCodedOutput$onNavigationEvent;->clearValue()V

    return-void
.end method

.method private clearKey()V
    .locals 1

    .line 914
    iget v0, p0, Lo/getCodedOutput$onNavigationEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lo/getCodedOutput$onNavigationEvent;->bitField0_:I

    .line 915
    invoke-static {}, Lo/getCodedOutput$onNavigationEvent;->getDefaultInstance()Lo/getCodedOutput$onNavigationEvent;

    move-result-object v0

    invoke-virtual {v0}, Lo/getCodedOutput$onNavigationEvent;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/getCodedOutput$onNavigationEvent;->key_:Ljava/lang/String;

    return-void
.end method

.method private clearValue()V
    .locals 1

    .line 958
    iget v0, p0, Lo/getCodedOutput$onNavigationEvent;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lo/getCodedOutput$onNavigationEvent;->bitField0_:I

    .line 959
    invoke-static {}, Lo/getCodedOutput$onNavigationEvent;->getDefaultInstance()Lo/getCodedOutput$onNavigationEvent;

    move-result-object v0

    invoke-virtual {v0}, Lo/getCodedOutput$onNavigationEvent;->getValue()Lo/SessionProtobufHelper;

    move-result-object v0

    iput-object v0, p0, Lo/getCodedOutput$onNavigationEvent;->value_:Lo/SessionProtobufHelper;

    return-void
.end method

.method public static getDefaultInstance()Lo/getCodedOutput$onNavigationEvent;
    .locals 1

    .line 1217
    sget-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    return-object v0
.end method

.method public static newBuilder()Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;
    .locals 1

    .line 1037
    sget-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;

    return-object v0
.end method

.method public static newBuilder(Lo/getCodedOutput$onNavigationEvent;)Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;
    .locals 1

    .line 1040
    sget-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    invoke-virtual {v0, p0}, Lo/getEventAppExecutionSize;->createBuilder(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lo/getCodedOutput$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1014
    sget-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0, p0}, Lo/getCodedOutput$onNavigationEvent;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onNavigationEvent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1020
    sget-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0, p0, p1}, Lo/getCodedOutput$onNavigationEvent;->parseDelimitedFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onNavigationEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lo/getCodedOutput$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1002
    sget-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onNavigationEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1009
    sget-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/io/InputStream;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onNavigationEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lo/getCodedOutput$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 965
    sget-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onNavigationEvent;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 972
    sget-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Ljava/nio/ByteBuffer;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onNavigationEvent;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;)Lo/getCodedOutput$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 978
    sget-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onNavigationEvent;

    return-object p0
.end method

.method public static parseFrom(Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 985
    sget-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/SessionProtobufHelper;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onNavigationEvent;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;)Lo/getCodedOutput$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1025
    sget-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onNavigationEvent;

    return-object p0
.end method

.method public static parseFrom(Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getCodedOutput$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1032
    sget-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;Lo/writeSessionAppClsId;Lo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onNavigationEvent;

    return-object p0
.end method

.method public static parseFrom([B)Lo/getCodedOutput$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 990
    sget-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0, p0}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[B)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onNavigationEvent;

    return-object p0
.end method

.method public static parseFrom([BLo/writeSessionEventDevice;)Lo/getCodedOutput$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 997
    sget-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    invoke-static {v0, p0, p1}, Lo/getEventAppExecutionSize;->parseFrom(Lo/getEventAppExecutionSize;[BLo/writeSessionEventDevice;)Lo/getEventAppExecutionSize;

    move-result-object p0

    check-cast p0, Lo/getCodedOutput$onNavigationEvent;

    return-object p0
.end method

.method public static parser()Lo/areReportsAvailable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/areReportsAvailable<",
            "Lo/getCodedOutput$onNavigationEvent;",
            ">;"
        }
    .end annotation

    .line 1223
    sget-object v0, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->getParserForType()Lo/areReportsAvailable;

    move-result-object v0

    return-object v0
.end method

.method private setKey(Ljava/lang/String;)V
    .locals 1

    .line 907
    iget v0, p0, Lo/getCodedOutput$onNavigationEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/getCodedOutput$onNavigationEvent;->bitField0_:I

    .line 908
    iput-object p1, p0, Lo/getCodedOutput$onNavigationEvent;->key_:Ljava/lang/String;

    return-void
.end method

.method private setKeyBytes(Lo/SessionProtobufHelper;)V
    .locals 0

    .line 923
    invoke-virtual {p1}, Lo/SessionProtobufHelper;->onNavigationEvent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/getCodedOutput$onNavigationEvent;->key_:Ljava/lang/String;

    .line 924
    iget p1, p0, Lo/getCodedOutput$onNavigationEvent;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lo/getCodedOutput$onNavigationEvent;->bitField0_:I

    return-void
.end method

.method private setValue(Lo/SessionProtobufHelper;)V
    .locals 1

    .line 951
    iget v0, p0, Lo/getCodedOutput$onNavigationEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/getCodedOutput$onNavigationEvent;->bitField0_:I

    .line 952
    iput-object p1, p0, Lo/getCodedOutput$onNavigationEvent;->value_:Lo/SessionProtobufHelper;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1157
    sget-object p2, Lo/getCodedOutput$4;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1201
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 1195
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1180
    :pswitch_2
    sget-object p1, Lo/getCodedOutput$onNavigationEvent;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 1182
    const-class p1, Lo/getCodedOutput$onNavigationEvent;

    monitor-enter p1

    .line 1183
    :try_start_0
    sget-object p2, Lo/getCodedOutput$onNavigationEvent;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 1185
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 1188
    sput-object p2, Lo/getCodedOutput$onNavigationEvent;->PARSER:Lo/areReportsAvailable;

    .line 1190
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

    .line 1177
    :pswitch_3
    sget-object p1, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "bitField0_"

    aput-object v0, p1, p3

    const-string p3, "key_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "value_"

    aput-object p3, p1, p2

    .line 1173
    sget-object p2, Lo/getCodedOutput$onNavigationEvent;->DEFAULT_INSTANCE:Lo/getCodedOutput$onNavigationEvent;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0008\u0000\u0002\n\u0001"

    invoke-static {p2, p3, p1}, Lo/getCodedOutput$onNavigationEvent;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1162
    :pswitch_5
    new-instance p1, Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;

    invoke-direct {p1, p3}, Lo/getCodedOutput$onNavigationEvent$ICustomTabsCallback;-><init>(Lo/getCodedOutput$4;)V

    return-object p1

    .line 1159
    :pswitch_6
    new-instance p1, Lo/getCodedOutput$onNavigationEvent;

    invoke-direct {p1}, Lo/getCodedOutput$onNavigationEvent;-><init>()V

    return-object p1

    nop

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

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 889
    iget-object v0, p0, Lo/getCodedOutput$onNavigationEvent;->key_:Ljava/lang/String;

    return-object v0
.end method

.method public final getKeyBytes()Lo/SessionProtobufHelper;
    .locals 1

    .line 898
    iget-object v0, p0, Lo/getCodedOutput$onNavigationEvent;->key_:Ljava/lang/String;

    invoke-static {v0}, Lo/SessionProtobufHelper;->extraCallback(Ljava/lang/String;)Lo/SessionProtobufHelper;

    move-result-object v0

    return-object v0
.end method

.method public final getValue()Lo/SessionProtobufHelper;
    .locals 1

    .line 943
    iget-object v0, p0, Lo/getCodedOutput$onNavigationEvent;->value_:Lo/SessionProtobufHelper;

    return-object v0
.end method

.method public final hasKey()Z
    .locals 2

    .line 881
    iget v0, p0, Lo/getCodedOutput$onNavigationEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final hasValue()Z
    .locals 1

    .line 935
    iget v0, p0, Lo/getCodedOutput$onNavigationEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
