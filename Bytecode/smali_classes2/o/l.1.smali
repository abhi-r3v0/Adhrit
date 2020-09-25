.class public final Lo/l;
.super Lo/fU;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/l$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU<",
        "Lo/l;",
        "Lo/l$onPostMessage;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzio:Lo/PictureAttachmentActivity$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PictureAttachmentActivity$3<",
            "Lo/l;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjl:Lo/l;


# instance fields
.field private zzij:I

.field private zziq:J

.field private zzjj:J

.field private zzjk:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lo/l;

    invoke-direct {v0}, Lo/l;-><init>()V

    .line 37
    sput-object v0, Lo/l;->zzjl:Lo/l;

    .line 38
    const-class v1, Lo/l;

    invoke-static {v1, v0}, Lo/fU;->onMessageChannelReady(Ljava/lang/Class;Lo/fU;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/fU;-><init>()V

    return-void
.end method

.method static synthetic ICustomTabsCallback()Lo/l;
    .locals 1

    .line 32
    sget-object v0, Lo/l;->zzjl:Lo/l;

    return-object v0
.end method

.method static synthetic ICustomTabsCallback(Lo/l;J)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lo/l;->onNavigationEvent(J)V

    return-void
.end method

.method private final extraCallback(J)V
    .locals 1

    .line 3
    iget v0, p0, Lo/l;->zzij:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/l;->zzij:I

    .line 4
    iput-wide p1, p0, Lo/l;->zziq:J

    return-void
.end method

.method static synthetic extraCallback(Lo/l;J)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lo/l;->onMessageChannelReady(J)V

    return-void
.end method

.method public static onMessageChannelReady()Lo/l$onPostMessage;
    .locals 1

    .line 12
    sget-object v0, Lo/l;->zzjl:Lo/l;

    invoke-virtual {v0}, Lo/fU;->validateRelationship()Lo/fU$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/l$onPostMessage;

    return-object v0
.end method

.method private final onMessageChannelReady(J)V
    .locals 1

    .line 6
    iget v0, p0, Lo/l;->zzij:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/l;->zzij:I

    .line 7
    iput-wide p1, p0, Lo/l;->zzjj:J

    return-void
.end method

.method private final onNavigationEvent(J)V
    .locals 1

    .line 9
    iget v0, p0, Lo/l;->zzij:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lo/l;->zzij:I

    .line 10
    iput-wide p1, p0, Lo/l;->zzjk:J

    return-void
.end method

.method static synthetic onPostMessage(Lo/l;J)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lo/l;->extraCallback(J)V

    return-void
.end method


# virtual methods
.method protected final extraCallback(Lo/fU$onPostMessage;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 13
    sget-object p2, Lo/bM;->extraCallback:[I

    invoke-virtual {p1}, Lo/fU$onPostMessage;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 31
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 29
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 20
    :pswitch_2
    sget-object p1, Lo/l;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_1

    .line 22
    const-class p2, Lo/l;

    monitor-enter p2

    .line 23
    :try_start_0
    sget-object p1, Lo/l;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_0

    .line 25
    new-instance p1, Lo/fU$ICustomTabsCallback;

    sget-object p3, Lo/l;->zzjl:Lo/l;

    invoke-direct {p1, p3}, Lo/fU$ICustomTabsCallback;-><init>(Lo/fU;)V

    .line 26
    sput-object p1, Lo/l;->zzio:Lo/PictureAttachmentActivity$3;

    .line 27
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

    .line 19
    :pswitch_3
    sget-object p1, Lo/l;->zzjl:Lo/l;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzij"

    aput-object v0, p1, p3

    const-string p3, "zziq"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "zzjj"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzjk"

    aput-object p3, p1, p2

    .line 18
    sget-object p2, Lo/l;->zzjl:Lo/l;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002"

    invoke-static {p2, p3, p1}, Lo/l;->onNavigationEvent(Lo/aD;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_5
    new-instance p1, Lo/l$onPostMessage;

    invoke-direct {p1, p3}, Lo/l$onPostMessage;-><init>(Lo/bM;)V

    return-object p1

    .line 14
    :pswitch_6
    new-instance p1, Lo/l;

    invoke-direct {p1}, Lo/l;-><init>()V

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
