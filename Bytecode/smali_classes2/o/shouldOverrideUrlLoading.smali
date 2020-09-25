.class public final Lo/shouldOverrideUrlLoading;
.super Lo/fU;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/shouldOverrideUrlLoading$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU<",
        "Lo/shouldOverrideUrlLoading;",
        "Lo/shouldOverrideUrlLoading$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzio:Lo/PictureAttachmentActivity$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PictureAttachmentActivity$3<",
            "Lo/shouldOverrideUrlLoading;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzjy:Lo/shouldOverrideUrlLoading;


# instance fields
.field private zzij:I

.field private zzjs:Ljava/lang/String;

.field private zzjt:I

.field private zzju:I

.field private zzjv:I

.field private zzjw:I

.field private zzjx:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lo/shouldOverrideUrlLoading;

    invoke-direct {v0}, Lo/shouldOverrideUrlLoading;-><init>()V

    .line 45
    sput-object v0, Lo/shouldOverrideUrlLoading;->zzjy:Lo/shouldOverrideUrlLoading;

    .line 46
    const-class v1, Lo/shouldOverrideUrlLoading;

    invoke-static {v1, v0}, Lo/fU;->onMessageChannelReady(Ljava/lang/Class;Lo/fU;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fU;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/shouldOverrideUrlLoading;->zzjs:Ljava/lang/String;

    return-void
.end method

.method private final ICustomTabsCallback(I)V
    .locals 1

    .line 15
    iget v0, p0, Lo/shouldOverrideUrlLoading;->zzij:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lo/shouldOverrideUrlLoading;->zzij:I

    .line 16
    iput p1, p0, Lo/shouldOverrideUrlLoading;->zzjx:I

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/shouldOverrideUrlLoading;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lo/shouldOverrideUrlLoading;->ICustomTabsCallback(I)V

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/shouldOverrideUrlLoading;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lo/shouldOverrideUrlLoading;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic extraCallback()Lo/shouldOverrideUrlLoading;
    .locals 1

    .line 39
    sget-object v0, Lo/shouldOverrideUrlLoading;->zzjy:Lo/shouldOverrideUrlLoading;

    return-object v0
.end method

.method private final extraCallback(I)V
    .locals 1

    .line 12
    iget v0, p0, Lo/shouldOverrideUrlLoading;->zzij:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lo/shouldOverrideUrlLoading;->zzij:I

    .line 13
    iput p1, p0, Lo/shouldOverrideUrlLoading;->zzjw:I

    return-void
.end method

.method static synthetic extraCallback(Lo/shouldOverrideUrlLoading;I)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lo/shouldOverrideUrlLoading;->extraCallback(I)V

    return-void
.end method

.method public static onMessageChannelReady()Lo/shouldOverrideUrlLoading;
    .locals 1

    .line 38
    sget-object v0, Lo/shouldOverrideUrlLoading;->zzjy:Lo/shouldOverrideUrlLoading;

    return-object v0
.end method

.method private final onNavigationEvent(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iget v0, p0, Lo/shouldOverrideUrlLoading;->zzij:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/shouldOverrideUrlLoading;->zzij:I

    .line 6
    iput-object p1, p0, Lo/shouldOverrideUrlLoading;->zzjs:Ljava/lang/String;

    return-void
.end method

.method public static onPostMessage()Lo/shouldOverrideUrlLoading$onMessageChannelReady;
    .locals 1

    .line 18
    sget-object v0, Lo/shouldOverrideUrlLoading;->zzjy:Lo/shouldOverrideUrlLoading;

    invoke-virtual {v0}, Lo/fU;->validateRelationship()Lo/fU$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/shouldOverrideUrlLoading$onMessageChannelReady;

    return-object v0
.end method

.method private final onPostMessage(I)V
    .locals 1

    .line 8
    iget v0, p0, Lo/shouldOverrideUrlLoading;->zzij:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lo/shouldOverrideUrlLoading;->zzij:I

    .line 9
    iput p1, p0, Lo/shouldOverrideUrlLoading;->zzjv:I

    return-void
.end method

.method static synthetic onPostMessage(Lo/shouldOverrideUrlLoading;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lo/shouldOverrideUrlLoading;->onPostMessage(I)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 1

    .line 11
    iget v0, p0, Lo/shouldOverrideUrlLoading;->zzij:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final extraCallback(Lo/fU$onPostMessage;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 19
    sget-object p2, Lo/o;->onMessageChannelReady:[I

    invoke-virtual {p1}, Lo/fU$onPostMessage;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 37
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 35
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 26
    :pswitch_2
    sget-object p1, Lo/shouldOverrideUrlLoading;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_1

    .line 28
    const-class p2, Lo/shouldOverrideUrlLoading;

    monitor-enter p2

    .line 29
    :try_start_0
    sget-object p1, Lo/shouldOverrideUrlLoading;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_0

    .line 31
    new-instance p1, Lo/fU$ICustomTabsCallback;

    sget-object p3, Lo/shouldOverrideUrlLoading;->zzjy:Lo/shouldOverrideUrlLoading;

    invoke-direct {p1, p3}, Lo/fU$ICustomTabsCallback;-><init>(Lo/fU;)V

    .line 32
    sput-object p1, Lo/shouldOverrideUrlLoading;->zzio:Lo/PictureAttachmentActivity$3;

    .line 33
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

    .line 25
    :pswitch_3
    sget-object p1, Lo/shouldOverrideUrlLoading;->zzjy:Lo/shouldOverrideUrlLoading;

    return-object p1

    :pswitch_4
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzij"

    aput-object v0, p1, p3

    const-string p3, "zzjs"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "zzjt"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzjv"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzjw"

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzjx"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    const-string p3, "zzju"

    aput-object p3, p1, p2

    .line 24
    sget-object p2, Lo/shouldOverrideUrlLoading;->zzjy:Lo/shouldOverrideUrlLoading;

    const-string p3, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1004\u0001\u0003\u1004\u0003\u0004\u1004\u0004\u0005\u1004\u0005\u0006\u1004\u0002"

    invoke-static {p2, p3, p1}, Lo/shouldOverrideUrlLoading;->onNavigationEvent(Lo/aD;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 21
    :pswitch_5
    new-instance p1, Lo/shouldOverrideUrlLoading$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/shouldOverrideUrlLoading$onMessageChannelReady;-><init>(Lo/o;)V

    return-object p1

    .line 20
    :pswitch_6
    new-instance p1, Lo/shouldOverrideUrlLoading;

    invoke-direct {p1}, Lo/shouldOverrideUrlLoading;-><init>()V

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
