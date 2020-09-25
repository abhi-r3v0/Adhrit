.class public final Lo/d$a;
.super Lo/fU;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/d$a$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU<",
        "Lo/d$a;",
        "Lo/d$a$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final zzin:Lo/d$a;

.field private static volatile zzio:Lo/PictureAttachmentActivity$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PictureAttachmentActivity$3<",
            "Lo/d$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private zzij:I

.field private zzik:Ljava/lang/String;

.field private zzil:Ljava/lang/String;

.field private zzim:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Lo/d$a;

    invoke-direct {v0}, Lo/d$a;-><init>()V

    .line 46
    sput-object v0, Lo/d$a;->zzin:Lo/d$a;

    .line 47
    const-class v1, Lo/d$a;

    invoke-static {v1, v0}, Lo/fU;->onMessageChannelReady(Ljava/lang/Class;Lo/fU;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fU;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/d$a;->zzik:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lo/d$a;->zzil:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lo/d$a;->zzim:Ljava/lang/String;

    return-void
.end method

.method static synthetic extraCallback(Lo/d$a;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lo/d$a;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method public static onMessageChannelReady()Lo/d$a;
    .locals 1

    .line 40
    sget-object v0, Lo/d$a;->zzin:Lo/d$a;

    return-object v0
.end method

.method private final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget v0, p0, Lo/d$a;->zzij:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/d$a;->zzij:I

    .line 14
    iput-object p1, p0, Lo/d$a;->zzil:Ljava/lang/String;

    return-void
.end method

.method static synthetic onMessageChannelReady(Lo/d$a;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lo/d$a;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public static onNavigationEvent()Lo/d$a$onNavigationEvent;
    .locals 1

    .line 20
    sget-object v0, Lo/d$a;->zzin:Lo/d$a;

    invoke-virtual {v0}, Lo/fU;->validateRelationship()Lo/fU$onNavigationEvent;

    move-result-object v0

    check-cast v0, Lo/d$a$onNavigationEvent;

    return-object v0
.end method

.method private final onNavigationEvent(Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    iget v0, p0, Lo/d$a;->zzij:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lo/d$a;->zzij:I

    .line 9
    iput-object p1, p0, Lo/d$a;->zzik:Ljava/lang/String;

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/d$a;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lo/d$a;->onPostMessage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic onPostMessage()Lo/d$a;
    .locals 1

    .line 41
    sget-object v0, Lo/d$a;->zzin:Lo/d$a;

    return-object v0
.end method

.method private final onPostMessage(Ljava/lang/String;)V
    .locals 1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    iget v0, p0, Lo/d$a;->zzij:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lo/d$a;->zzij:I

    .line 18
    iput-object p1, p0, Lo/d$a;->zzim:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Z
    .locals 2

    .line 6
    iget v0, p0, Lo/d$a;->zzij:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final extraCallback(Lo/fU$onPostMessage;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 21
    sget-object p2, Lo/bb;->extraCallback:[I

    invoke-virtual {p1}, Lo/fU$onPostMessage;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 39
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 37
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 28
    :pswitch_2
    sget-object p1, Lo/d$a;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_1

    .line 30
    const-class p2, Lo/d$a;

    monitor-enter p2

    .line 31
    :try_start_0
    sget-object p1, Lo/d$a;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_0

    .line 33
    new-instance p1, Lo/fU$ICustomTabsCallback;

    sget-object p3, Lo/d$a;->zzin:Lo/d$a;

    invoke-direct {p1, p3}, Lo/fU$ICustomTabsCallback;-><init>(Lo/fU;)V

    .line 34
    sput-object p1, Lo/d$a;->zzio:Lo/PictureAttachmentActivity$3;

    .line 35
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

    .line 27
    :pswitch_3
    sget-object p1, Lo/d$a;->zzin:Lo/d$a;

    return-object p1

    :pswitch_4
    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzij"

    aput-object v0, p1, p3

    const-string p3, "zzik"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "zzil"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzim"

    aput-object p3, p1, p2

    .line 26
    sget-object p2, Lo/d$a;->zzin:Lo/d$a;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002"

    invoke-static {p2, p3, p1}, Lo/d$a;->onNavigationEvent(Lo/aD;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 23
    :pswitch_5
    new-instance p1, Lo/d$a$onNavigationEvent;

    invoke-direct {p1, p3}, Lo/d$a$onNavigationEvent;-><init>(Lo/bb;)V

    return-object p1

    .line 22
    :pswitch_6
    new-instance p1, Lo/d$a;

    invoke-direct {p1}, Lo/d$a;-><init>()V

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

.method public final extraCallback()Z
    .locals 1

    .line 11
    iget v0, p0, Lo/d$a;->zzij:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
