.class public final Lo/writeEnum$asInterface;
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
    name = "asInterface"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeEnum$asInterface$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeEnum$asInterface;",
        "Lo/writeEnum$asInterface$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeEnum$asInterface;

.field public static final FIELDS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lo/areReportsAvailable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeEnum$asInterface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fields_:Lo/getEventLogSize$asBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getEventLogSize$asBinder<",
            "Lo/writeEnum$asBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 5165
    new-instance v0, Lo/writeEnum$asInterface;

    invoke-direct {v0}, Lo/writeEnum$asInterface;-><init>()V

    .line 5168
    sput-object v0, Lo/writeEnum$asInterface;->DEFAULT_INSTANCE:Lo/writeEnum$asInterface;

    .line 5169
    const-class v1, Lo/writeEnum$asInterface;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 4674
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    .line 4675
    invoke-static {}, Lo/writeEnum$asInterface;->emptyProtobufList()Lo/getEventLogSize$asBinder;

    move-result-object v0

    iput-object v0, p0, Lo/writeEnum$asInterface;->fields_:Lo/getEventLogSize$asBinder;

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/writeEnum$asInterface;
    .locals 1

    .line 4669
    sget-object v0, Lo/writeEnum$asInterface;->DEFAULT_INSTANCE:Lo/writeEnum$asInterface;

    return-object v0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5116
    sget-object p2, Lo/writeEnum$1;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5158
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 5152
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 5137
    :pswitch_2
    sget-object p1, Lo/writeEnum$asInterface;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 5139
    const-class p1, Lo/writeEnum$asInterface;

    monitor-enter p1

    .line 5140
    :try_start_0
    sget-object p2, Lo/writeEnum$asInterface;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 5142
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeEnum$asInterface;->DEFAULT_INSTANCE:Lo/writeEnum$asInterface;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 5145
    sput-object p2, Lo/writeEnum$asInterface;->PARSER:Lo/areReportsAvailable;

    .line 5147
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

    .line 5134
    :pswitch_3
    sget-object p1, Lo/writeEnum$asInterface;->DEFAULT_INSTANCE:Lo/writeEnum$asInterface;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "fields_"

    aput-object v0, p1, p3

    .line 5124
    const-class p3, Lo/writeEnum$asBinder;

    aput-object p3, p1, p2

    .line 5130
    sget-object p2, Lo/writeEnum$asInterface;->DEFAULT_INSTANCE:Lo/writeEnum$asInterface;

    const-string p3, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0001\u0000\u0002\u001b"

    invoke-static {p2, p3, p1}, Lo/writeEnum$asInterface;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5121
    :pswitch_5
    new-instance p1, Lo/writeEnum$asInterface$onPostMessage;

    invoke-direct {p1, p3}, Lo/writeEnum$asInterface$onPostMessage;-><init>(B)V

    return-object p1

    .line 5118
    :pswitch_6
    new-instance p1, Lo/writeEnum$asInterface;

    invoke-direct {p1}, Lo/writeEnum$asInterface;-><init>()V

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
