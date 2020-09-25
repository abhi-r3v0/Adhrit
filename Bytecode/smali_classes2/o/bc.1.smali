.class public final Lo/bc;
.super Lo/fU;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/bc$ICustomTabsCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU<",
        "Lo/bc;",
        "Lo/bc$ICustomTabsCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzio:Lo/PictureAttachmentActivity$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PictureAttachmentActivity$3<",
            "Lo/bc;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzis:Lo/bc;


# instance fields
.field private zzij:I

.field private zziq:J

.field private zzir:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    new-instance v0, Lo/bc;

    invoke-direct {v0}, Lo/bc;-><init>()V

    .line 33
    sput-object v0, Lo/bc;->zzis:Lo/bc;

    .line 34
    const-class v1, Lo/bc;

    invoke-static {v1, v0}, Lo/fU;->onMessageChannelReady(Ljava/lang/Class;Lo/fU;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/fU;-><init>()V

    return-void
.end method

.method public static ICustomTabsCallback()Lo/bc$ICustomTabsCallback;
    .locals 1

    .line 9
    sget-object v0, Lo/bc;->zzis:Lo/bc;

    invoke-virtual {v0}, Lo/fU;->validateRelationship()Lo/fU$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/bc$ICustomTabsCallback;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lo/bc;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lo/bc;->onPostMessage(I)V

    return-void
.end method

.method private final onNavigationEvent(J)V
    .locals 1

    .line 3
    iget v0, p0, Lo/bc;->zzij:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/bc;->zzij:I

    .line 4
    iput-wide p1, p0, Lo/bc;->zziq:J

    return-void
.end method

.method static synthetic onPostMessage()Lo/bc;
    .locals 1

    .line 29
    sget-object v0, Lo/bc;->zzis:Lo/bc;

    return-object v0
.end method

.method private final onPostMessage(I)V
    .locals 1

    .line 6
    iget v0, p0, Lo/bc;->zzij:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/bc;->zzij:I

    .line 7
    iput p1, p0, Lo/bc;->zzir:I

    return-void
.end method

.method static synthetic onPostMessage(Lo/bc;J)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lo/bc;->onNavigationEvent(J)V

    return-void
.end method


# virtual methods
.method protected final extraCallback(Lo/fU$onPostMessage;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 10
    sget-object p2, Lo/bd;->onMessageChannelReady:[I

    invoke-virtual {p1}, Lo/fU$onPostMessage;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 28
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 26
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 17
    :pswitch_2
    sget-object p1, Lo/bc;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_1

    .line 19
    const-class p2, Lo/bc;

    monitor-enter p2

    .line 20
    :try_start_0
    sget-object p1, Lo/bc;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_0

    .line 22
    new-instance p1, Lo/fU$ICustomTabsCallback;

    sget-object p3, Lo/bc;->zzis:Lo/bc;

    invoke-direct {p1, p3}, Lo/fU$ICustomTabsCallback;-><init>(Lo/fU;)V

    .line 23
    sput-object p1, Lo/bc;->zzio:Lo/PictureAttachmentActivity$3;

    .line 24
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object p1

    .line 16
    :pswitch_3
    sget-object p1, Lo/bc;->zzis:Lo/bc;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzij"

    aput-object v0, p1, p3

    const-string p3, "zziq"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "zzir"

    aput-object p3, p1, p2

    .line 15
    sget-object p2, Lo/bc;->zzis:Lo/bc;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1004\u0001"

    invoke-static {p2, p3, p1}, Lo/bc;->onNavigationEvent(Lo/aD;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 12
    :pswitch_5
    new-instance p1, Lo/bc$ICustomTabsCallback;

    invoke-direct {p1, p3}, Lo/bc$ICustomTabsCallback;-><init>(Lo/bd;)V

    return-object p1

    .line 11
    :pswitch_6
    new-instance p1, Lo/bc;

    invoke-direct {p1}, Lo/bc;-><init>()V

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
