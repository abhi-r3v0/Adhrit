.class public final Lo/writeString$extraCallback;
.super Lo/getEventAppExecutionSize;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$1$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/writeString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/writeString$extraCallback$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/getEventAppExecutionSize<",
        "Lo/writeString$extraCallback;",
        "Lo/writeString$extraCallback$onPostMessage;",
        ">;",
        "Lo/MediaSessionCompat$1$onMessageChannelReady;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lo/writeString$extraCallback;

.field public static final PARENT_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lo/areReportsAvailable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/areReportsAvailable<",
            "Lo/writeString$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRUCTURED_QUERY_FIELD_NUMBER:I = 0x2


# instance fields
.field public parent_:Ljava/lang/String;

.field public queryTypeCase_:I

.field public queryType_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1184
    new-instance v0, Lo/writeString$extraCallback;

    invoke-direct {v0}, Lo/writeString$extraCallback;-><init>()V

    .line 1187
    sput-object v0, Lo/writeString$extraCallback;->DEFAULT_INSTANCE:Lo/writeString$extraCallback;

    .line 1188
    const-class v1, Lo/writeString$extraCallback;

    invoke-static {v1, v0}, Lo/getEventAppExecutionSize;->registerDefaultInstance(Ljava/lang/Class;Lo/getEventAppExecutionSize;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 642
    invoke-direct {p0}, Lo/getEventAppExecutionSize;-><init>()V

    const/4 v0, 0x0

    .line 645
    iput v0, p0, Lo/writeString$extraCallback;->queryTypeCase_:I

    const-string v0, ""

    .line 643
    iput-object v0, p0, Lo/writeString$extraCallback;->parent_:Ljava/lang/String;

    return-void
.end method

.method public static ICustomTabsCallback()Lo/writeString$extraCallback;
    .locals 1

    .line 1193
    sget-object v0, Lo/writeString$extraCallback;->DEFAULT_INSTANCE:Lo/writeString$extraCallback;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lo/writeString$extraCallback;Ljava/lang/String;)V
    .locals 0

    .line 1740
    iput-object p1, p0, Lo/writeString$extraCallback;->parent_:Ljava/lang/String;

    return-void
.end method

.method static synthetic asBinder()Lo/writeString$extraCallback;
    .locals 1

    .line 637
    sget-object v0, Lo/writeString$extraCallback;->DEFAULT_INSTANCE:Lo/writeString$extraCallback;

    return-object v0
.end method

.method static synthetic extraCallback(Lo/writeString$extraCallback;Lo/writeEnum;)V
    .locals 0

    .line 1813
    iput-object p1, p0, Lo/writeString$extraCallback;->queryType_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 1814
    iput p1, p0, Lo/writeString$extraCallback;->queryTypeCase_:I

    return-void
.end method

.method public static onNavigationEvent()Lo/writeString$extraCallback$onPostMessage;
    .locals 1

    .line 923
    sget-object v0, Lo/writeString$extraCallback;->DEFAULT_INSTANCE:Lo/writeString$extraCallback;

    invoke-virtual {v0}, Lo/getEventAppExecutionSize;->createBuilder()Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/writeString$extraCallback$onPostMessage;

    return-object v0
.end method

.method public static onPostMessage(Lo/writeString$extraCallback;)Lo/writeString$extraCallback$onPostMessage;
    .locals 1

    .line 926
    sget-object v0, Lo/writeString$extraCallback;->DEFAULT_INSTANCE:Lo/writeString$extraCallback;

    invoke-virtual {v0, p0}, Lo/getEventAppExecutionSize;->createBuilder(Lo/getEventAppExecutionSize;)Lo/getEventAppExecutionSize$onNavigationEvent;

    move-result-object p0

    check-cast p0, Lo/writeString$extraCallback$onPostMessage;

    return-object p0
.end method


# virtual methods
.method public final dynamicMethod(Lo/getEventAppExecutionSize$asInterface;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1132
    sget-object p2, Lo/writeString$2;->extraCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1177
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    .line 1171
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 1156
    :pswitch_2
    sget-object p1, Lo/writeString$extraCallback;->PARSER:Lo/areReportsAvailable;

    if-nez p1, :cond_1

    .line 1158
    const-class p1, Lo/writeString$extraCallback;

    monitor-enter p1

    .line 1159
    :try_start_0
    sget-object p2, Lo/writeString$extraCallback;->PARSER:Lo/areReportsAvailable;

    if-nez p2, :cond_0

    .line 1161
    new-instance p2, Lo/getEventAppExecutionSize$onPostMessage;

    sget-object p3, Lo/writeString$extraCallback;->DEFAULT_INSTANCE:Lo/writeString$extraCallback;

    invoke-direct {p2, p3}, Lo/getEventAppExecutionSize$onPostMessage;-><init>(Lo/getEventAppExecutionSize;)V

    .line 1164
    sput-object p2, Lo/writeString$extraCallback;->PARSER:Lo/areReportsAvailable;

    .line 1166
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

    .line 1153
    :pswitch_3
    sget-object p1, Lo/writeString$extraCallback;->DEFAULT_INSTANCE:Lo/writeString$extraCallback;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "queryType_"

    aput-object v0, p1, p3

    const-string p3, "queryTypeCase_"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "parent_"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    .line 1140
    const-class p3, Lo/writeEnum;

    aput-object p3, p1, p2

    .line 1149
    sget-object p2, Lo/writeString$extraCallback;->DEFAULT_INSTANCE:Lo/writeString$extraCallback;

    const-string p3, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0208\u0002<\u0000"

    invoke-static {p2, p3, p1}, Lo/writeString$extraCallback;->newMessageInfo(Lo/WireFormat$FieldType$2;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1137
    :pswitch_5
    new-instance p1, Lo/writeString$extraCallback$onPostMessage;

    invoke-direct {p1, p3}, Lo/writeString$extraCallback$onPostMessage;-><init>(B)V

    return-object p1

    .line 1134
    :pswitch_6
    new-instance p1, Lo/writeString$extraCallback;

    invoke-direct {p1}, Lo/writeString$extraCallback;-><init>()V

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
