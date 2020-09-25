.class public final Lo/writeRawMessageSetExtension;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeRawMessageSetExtension$extraCallback;,
        Lo/writeRawMessageSetExtension$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeRawMessageSetExtension;",
        "Lo/writeRawMessageSetExtension$extraCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final ARRAY_VALUE_FIELD_NUMBER:I = 0x9

.field public static final BOOLEAN_VALUE_FIELD_NUMBER:I = 0x1

.field public static final BYTES_VALUE_FIELD_NUMBER:I = 0x12

.field private static final DEFAULT_INSTANCE:Lo/writeRawMessageSetExtension;

.field public static final DOUBLE_VALUE_FIELD_NUMBER:I = 0x3

.field public static final GEO_POINT_VALUE_FIELD_NUMBER:I = 0x8

.field public static final INTEGER_VALUE_FIELD_NUMBER:I = 0x2

.field public static final MAP_VALUE_FIELD_NUMBER:I = 0x6

.field public static final NULL_VALUE_FIELD_NUMBER:I = 0xb

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeRawMessageSetExtension;",
            ">;"
        }
    .end annotation
.end field

.field public static final REFERENCE_VALUE_FIELD_NUMBER:I = 0x5

.field public static final STRING_VALUE_FIELD_NUMBER:I = 0x11

.field public static final TIMESTAMP_VALUE_FIELD_NUMBER:I = 0xa


# instance fields
.field public valueTypeCase_:I

.field public valueType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1673
    new-instance v0, Lo/writeRawMessageSetExtension;

    invoke-direct {v0}, Lo/writeRawMessageSetExtension;-><init>()V

    .line 1676
    sput-object v0, Lo/writeRawMessageSetExtension;->DEFAULT_INSTANCE:Lo/writeRawMessageSetExtension;

    .line 1677
    const-class v1, Lo/writeRawMessageSetExtension;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeRawMessageSetExtension$extraCallback;
    .locals 1

    .line 873
    sget-object v0, Lo/writeRawMessageSetExtension;->DEFAULT_INSTANCE:Lo/writeRawMessageSetExtension;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeRawMessageSetExtension$extraCallback;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lo/writeRawMessageSetExtension;Lo/SessionProtobufHelper;)V
    .locals 1

    const/16 v0, 0x12

    .line 3478
    iput v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    .line 3479
    iput-object p1, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic asInterface()Lo/writeRawMessageSetExtension;
    .locals 1

    .line 13
    sget-object v0, Lo/writeRawMessageSetExtension;->DEFAULT_INSTANCE:Lo/writeRawMessageSetExtension;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/writeRawMessageSetExtension;J)V
    .locals 1

    const/4 v0, 0x2

    .line 3218
    iput v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    .line 3219
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic extraCallback(Lo/writeRawMessageSetExtension;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x11

    .line 3411
    iput v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    .line 3412
    iput-object p1, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic extraCallback(Lo/writeRawMessageSetExtension;Lo/getCustomHeaders;)V
    .locals 0

    .line 3318
    iput-object p1, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    const/16 p1, 0xa

    .line 3319
    iput p1, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    return-void
.end method

.method static synthetic extraCallback(Lo/writeRawMessageSetExtension;Lo/toByteString;)V
    .locals 0

    .line 3689
    iput-object p1, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    const/16 p1, 0x9

    .line 3690
    iput p1, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/writeRawMessageSetExtension;D)V
    .locals 1

    const/4 v0, 0x3

    .line 3260
    iput v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    .line 3261
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/writeRawMessageSetExtension;Lo/deleteReports;)V
    .locals 1

    .line 3040
    sget-object v0, Lo/deleteReports;->extraCallback:Lo/deleteReports;

    if-eq p1, v0, :cond_0

    .line 3044
    iget p1, p1, Lo/deleteReports;->onPostMessage:I

    .line 2134
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    const/16 p1, 0xb

    .line 2135
    iput p1, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    return-void

    .line 3041
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t get the number of an unknown enum value."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic onMessageChannelReady(Lo/writeRawMessageSetExtension;Lo/mergeStrings;)V
    .locals 0

    .line 3613
    iput-object p1, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    const/16 p1, 0x8

    .line 3614
    iput p1, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    return-void
.end method

.method public static onNavigationEvent()Lo/writeRawMessageSetExtension;
    .locals 1

    .line 1682
    sget-object v0, Lo/writeRawMessageSetExtension;->DEFAULT_INSTANCE:Lo/writeRawMessageSetExtension;

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/writeRawMessageSetExtension;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 3545
    iput v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    .line 3546
    iput-object p1, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    return-void
.end method

.method static synthetic onPostMessage(Lo/writeRawMessageSetExtension;Lo/writeBytes;)V
    .locals 0

    .line 3763
    iput-object p1, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 3764
    iput p1, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    return-void
.end method

.method static synthetic onPostMessage(Lo/writeRawMessageSetExtension;Z)V
    .locals 1

    const/4 v0, 0x1

    .line 3176
    iput v0, p0, Lo/writeRawMessageSetExtension;->valueTypeCase_:I

    .line 3177
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lo/writeRawMessageSetExtension;->valueType_:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1618
    sget-object p2, Lo/writeRawMessageSetExtension$4;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1666
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 1660
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1645
    :pswitch_2
    sget-object p1, Lo/writeRawMessageSetExtension;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 1647
    const-class p1, Lo/writeRawMessageSetExtension;

    monitor-enter p1

    .line 1648
    :try_start_0
    sget-object p2, Lo/writeRawMessageSetExtension;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 1650
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeRawMessageSetExtension;->DEFAULT_INSTANCE:Lo/writeRawMessageSetExtension;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 1653
    sput-object p2, Lo/writeRawMessageSetExtension;->PARSER:Lo/areReportsAvailable;

    .line 1655
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

    .line 1642
    :pswitch_3
    sget-object p1, Lo/writeRawMessageSetExtension;->DEFAULT_INSTANCE:Lo/writeRawMessageSetExtension;

    return-object p1

    :pswitch_4
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "valueType_"

    aput-object v0, p1, p3

    const-string p3, "valueTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 1626
    const-class p3, Lo/writeBytes;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lo/mergeStrings;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lo/toByteString;

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-class p3, Lo/getCustomHeaders;

    aput-object p3, p1, p2

    .line 1638
    sget-object p2, Lo/writeRawMessageSetExtension;->DEFAULT_INSTANCE:Lo/writeRawMessageSetExtension;

    const-string p3, "\u0000\u000b\u0001\u0000\u0001\u0012\u000b\u0000\u0000\u0000\u0001:\u0000\u00025\u0000\u00033\u0000\u0005\u023b\u0000\u0006<\u0000\u0008<\u0000\t<\u0000\n<\u0000\u000b?\u0000\u0011\u023b\u0000\u0012=\u0000"

    invoke-static {p2, p3, p1}, Lo/writeRawMessageSetExtension;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1623
    :pswitch_5
    new-instance p1, Lo/writeRawMessageSetExtension$extraCallback;

    invoke-direct {p1, p3}, Lo/writeRawMessageSetExtension$extraCallback;-><init>(B)V

    return-object p1

    .line 1620
    :pswitch_6
    new-instance p1, Lo/writeRawMessageSetExtension;

    invoke-direct {p1}, Lo/writeRawMessageSetExtension;-><init>()V

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
