.class public final Lo/writeEnum$ICustomTabsCallback$Stub;
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
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;,
        Lo/writeEnum$ICustomTabsCallback$Stub$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeEnum$ICustomTabsCallback$Stub;",
        "Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field public static final COMPOSITE_FILTER_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lo/writeEnum$ICustomTabsCallback$Stub;

.field public static final FIELD_FILTER_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeEnum$ICustomTabsCallback$Stub;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNARY_FILTER_FIELD_NUMBER:I = 0x3


# instance fields
.field public filterTypeCase_:I

.field public filterType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1331
    new-instance v0, Lo/writeEnum$ICustomTabsCallback$Stub;

    invoke-direct {v0}, Lo/writeEnum$ICustomTabsCallback$Stub;-><init>()V

    .line 1334
    sput-object v0, Lo/writeEnum$ICustomTabsCallback$Stub;->DEFAULT_INSTANCE:Lo/writeEnum$ICustomTabsCallback$Stub;

    .line 1335
    const-class v1, Lo/writeEnum$ICustomTabsCallback$Stub;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 687
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, 0x0

    .line 689
    iput v0, p0, Lo/writeEnum$ICustomTabsCallback$Stub;->filterTypeCase_:I

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;
    .locals 1

    .line 1019
    sget-object v0, Lo/writeEnum$ICustomTabsCallback$Stub;->DEFAULT_INSTANCE:Lo/writeEnum$ICustomTabsCallback$Stub;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;

    return-object v0
.end method

.method static synthetic asBinder()Lo/writeEnum$ICustomTabsCallback$Stub;
    .locals 1

    .line 682
    sget-object v0, Lo/writeEnum$ICustomTabsCallback$Stub;->DEFAULT_INSTANCE:Lo/writeEnum$ICustomTabsCallback$Stub;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/writeEnum$ICustomTabsCallback$Stub;Lo/writeEnum$extraCallback;)V
    .locals 0

    .line 1839
    iput-object p1, p0, Lo/writeEnum$ICustomTabsCallback$Stub;->filterType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 1840
    iput p1, p0, Lo/writeEnum$ICustomTabsCallback$Stub;->filterTypeCase_:I

    return-void
.end method

.method public static onNavigationEvent()Lo/writeEnum$ICustomTabsCallback$Stub;
    .locals 1

    .line 1340
    sget-object v0, Lo/writeEnum$ICustomTabsCallback$Stub;->DEFAULT_INSTANCE:Lo/writeEnum$ICustomTabsCallback$Stub;

    return-object v0
.end method

.method static synthetic onNavigationEvent(Lo/writeEnum$ICustomTabsCallback$Stub;Lo/writeEnum$onMessageChannelReady;)V
    .locals 0

    .line 1769
    iput-object p1, p0, Lo/writeEnum$ICustomTabsCallback$Stub;->filterType_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1770
    iput p1, p0, Lo/writeEnum$ICustomTabsCallback$Stub;->filterTypeCase_:I

    return-void
.end method

.method static synthetic onPostMessage(Lo/writeEnum$ICustomTabsCallback$Stub;Lo/writeEnum$onRelationshipValidationResult;)V
    .locals 0

    .line 1909
    iput-object p1, p0, Lo/writeEnum$ICustomTabsCallback$Stub;->filterType_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 1910
    iput p1, p0, Lo/writeEnum$ICustomTabsCallback$Stub;->filterTypeCase_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1278
    sget-object p2, Lo/writeEnum$1;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1324
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 1318
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1303
    :pswitch_2
    sget-object p1, Lo/writeEnum$ICustomTabsCallback$Stub;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 1305
    const-class p1, Lo/writeEnum$ICustomTabsCallback$Stub;

    monitor-enter p1

    .line 1306
    :try_start_0
    sget-object p2, Lo/writeEnum$ICustomTabsCallback$Stub;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 1308
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeEnum$ICustomTabsCallback$Stub;->DEFAULT_INSTANCE:Lo/writeEnum$ICustomTabsCallback$Stub;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 1311
    sput-object p2, Lo/writeEnum$ICustomTabsCallback$Stub;->PARSER:Lo/areReportsAvailable;

    .line 1313
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

    .line 1300
    :pswitch_3
    sget-object p1, Lo/writeEnum$ICustomTabsCallback$Stub;->DEFAULT_INSTANCE:Lo/writeEnum$ICustomTabsCallback$Stub;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "filterType_"

    aput-object v0, p1, p3

    const-string p3, "filterTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 1286
    const-class p3, Lo/writeEnum$onMessageChannelReady;

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-class p3, Lo/writeEnum$extraCallback;

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-class p3, Lo/writeEnum$onRelationshipValidationResult;

    aput-object p3, p1, p2

    .line 1296
    sget-object p2, Lo/writeEnum$ICustomTabsCallback$Stub;->DEFAULT_INSTANCE:Lo/writeEnum$ICustomTabsCallback$Stub;

    const-string p3, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000"

    invoke-static {p2, p3, p1}, Lo/writeEnum$ICustomTabsCallback$Stub;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1283
    :pswitch_5
    new-instance p1, Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/writeEnum$ICustomTabsCallback$Stub$onMessageChannelReady;-><init>(B)V

    return-object p1

    .line 1280
    :pswitch_6
    new-instance p1, Lo/writeEnum$ICustomTabsCallback$Stub;

    invoke-direct {p1}, Lo/writeEnum$ICustomTabsCallback$Stub;-><init>()V

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
