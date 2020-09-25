.class public final Lo/writeFloat;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeFloat$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeFloat;",
        "Lo/writeFloat$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeFloat;

.field public static final DOCUMENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeFloat;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMOVED_TARGET_IDS_FIELD_NUMBER:I = 0x6

.field public static final TARGET_IDS_FIELD_NUMBER:I = 0x5


# instance fields
.field public document_:Lo/writeDouble;

.field private removedTargetIdsMemoizedSerializedSize:I

.field public removedTargetIds_:Lo/getEventLogSize$onTransact;

.field private targetIdsMemoizedSerializedSize:I

.field public targetIds_:Lo/getEventLogSize$onTransact;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 725
    new-instance v0, Lo/writeFloat;

    invoke-direct {v0}, Lo/writeFloat;-><init>()V

    .line 728
    sput-object v0, Lo/writeFloat;->DEFAULT_INSTANCE:Lo/writeFloat;

    .line 729
    const-class v1, Lo/writeFloat;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, -0x1

    .line 137
    iput v0, p0, Lo/writeFloat;->targetIdsMemoizedSerializedSize:I

    .line 235
    iput v0, p0, Lo/writeFloat;->removedTargetIdsMemoizedSerializedSize:I

    .line 23
    invoke-static {}, Lo/writeFloat;->emptyIntList()Lo/getEventLogSize$onTransact;

    move-result-object v0

    iput-object v0, p0, Lo/writeFloat;->targetIds_:Lo/getEventLogSize$onTransact;

    .line 24
    invoke-static {}, Lo/writeFloat;->emptyIntList()Lo/getEventLogSize$onTransact;

    move-result-object v0

    iput-object v0, p0, Lo/writeFloat;->removedTargetIds_:Lo/getEventLogSize$onTransact;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeFloat;
    .locals 1

    .line 734
    sget-object v0, Lo/writeFloat;->DEFAULT_INSTANCE:Lo/writeFloat;

    return-object v0
.end method

.method static synthetic onNavigationEvent()Lo/writeFloat;
    .locals 1

    .line 17
    sget-object v0, Lo/writeFloat;->DEFAULT_INSTANCE:Lo/writeFloat;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 674
    sget-object p2, Lo/writeFloat$5;->ICustomTabsCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 718
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 712
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 697
    :pswitch_2
    sget-object p1, Lo/writeFloat;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 699
    const-class p1, Lo/writeFloat;

    monitor-enter p1

    .line 700
    :try_start_0
    sget-object p2, Lo/writeFloat;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 702
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeFloat;->DEFAULT_INSTANCE:Lo/writeFloat;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 705
    sput-object p2, Lo/writeFloat;->PARSER:Lo/areReportsAvailable;

    .line 707
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

    .line 694
    :pswitch_3
    sget-object p1, Lo/writeFloat;->DEFAULT_INSTANCE:Lo/writeFloat;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "document_"

    aput-object v0, p1, p3

    const-string p3, "targetIds_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "removedTargetIds_"

    aput-object p3, p1, p2

    .line 690
    sget-object p2, Lo/writeFloat;->DEFAULT_INSTANCE:Lo/writeFloat;

    const-string p3, "\u0000\u0003\u0000\u0000\u0001\u0006\u0003\u0000\u0002\u0000\u0001\t\u0005\'\u0006\'"

    invoke-static {p2, p3, p1}, Lo/writeFloat;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 679
    :pswitch_5
    new-instance p1, Lo/writeFloat$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/writeFloat$onMessageChannelReady;-><init>(B)V

    return-object p1

    .line 676
    :pswitch_6
    new-instance p1, Lo/writeFloat;

    invoke-direct {p1}, Lo/writeFloat;-><init>()V

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
