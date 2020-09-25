.class public final Lo/writeEnum$asBinder;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeEnum;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "asBinder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeEnum$asBinder$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeEnum$asBinder;",
        "Lo/writeEnum$asBinder$extraCallback;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeEnum$asBinder;

.field public static final FIELD_PATH_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeEnum$asBinder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public fieldPath_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 4607
    new-instance v0, Lo/writeEnum$asBinder;

    invoke-direct {v0}, Lo/writeEnum$asBinder;-><init>()V

    .line 4610
    sput-object v0, Lo/writeEnum$asBinder;->DEFAULT_INSTANCE:Lo/writeEnum$asBinder;

    .line 4611
    const-class v1, Lo/writeEnum$asBinder;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4354
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const-string v0, ""

    .line 4355
    iput-object v0, p0, Lo/writeEnum$asBinder;->fieldPath_:Ljava/lang/String;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeEnum$asBinder$extraCallback;
    .locals 1

    .line 4479
    sget-object v0, Lo/writeEnum$asBinder;->DEFAULT_INSTANCE:Lo/writeEnum$asBinder;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeEnum$asBinder$extraCallback;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/writeEnum$asBinder;Ljava/lang/String;)V
    .locals 0

    .line 5384
    iput-object p1, p0, Lo/writeEnum$asBinder;->fieldPath_:Ljava/lang/String;

    return-void
.end method

.method public static onNavigationEvent()Lo/writeEnum$asBinder;
    .locals 1

    .line 4616
    sget-object v0, Lo/writeEnum$asBinder;->DEFAULT_INSTANCE:Lo/writeEnum$asBinder;

    return-object v0
.end method

.method static synthetic onRelationshipValidationResult()Lo/writeEnum$asBinder;
    .locals 1

    .line 4349
    sget-object v0, Lo/writeEnum$asBinder;->DEFAULT_INSTANCE:Lo/writeEnum$asBinder;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 4559
    sget-object p2, Lo/writeEnum$1;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 4600
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 4594
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 4579
    :pswitch_2
    sget-object p1, Lo/writeEnum$asBinder;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 4581
    const-class p1, Lo/writeEnum$asBinder;

    monitor-enter p1

    .line 4582
    :try_start_0
    sget-object p2, Lo/writeEnum$asBinder;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 4584
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeEnum$asBinder;->DEFAULT_INSTANCE:Lo/writeEnum$asBinder;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 4587
    sput-object p2, Lo/writeEnum$asBinder;->PARSER:Lo/areReportsAvailable;

    .line 4589
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

    .line 4576
    :pswitch_3
    sget-object p1, Lo/writeEnum$asBinder;->DEFAULT_INSTANCE:Lo/writeEnum$asBinder;

    return-object p1

    :pswitch_4
    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "fieldPath_"

    aput-object p2, p1, p3

    .line 4572
    sget-object p2, Lo/writeEnum$asBinder;->DEFAULT_INSTANCE:Lo/writeEnum$asBinder;

    const-string p3, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002\u0208"

    invoke-static {p2, p3, p1}, Lo/writeEnum$asBinder;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4564
    :pswitch_5
    new-instance p1, Lo/writeEnum$asBinder$extraCallback;

    invoke-direct {p1, p3}, Lo/writeEnum$asBinder$extraCallback;-><init>(B)V

    return-object p1

    .line 4561
    :pswitch_6
    new-instance p1, Lo/writeEnum$asBinder;

    invoke-direct {p1}, Lo/writeEnum$asBinder;-><init>()V

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
