.class public final Lo/ga;
.super Lo/fU;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ga$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU<",
        "Lo/ga;",
        "Lo/ga$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzio:Lo/PictureAttachmentActivity$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PictureAttachmentActivity$3<",
            "Lo/ga;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzmz:Lo/ga;


# instance fields
.field private zzij:I

.field private zzil:Ljava/lang/String;

.field private zzmv:Ljava/lang/String;

.field private zzmw:I

.field private zzmx:I

.field private zzmy:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lo/ga;

    invoke-direct {v0}, Lo/ga;-><init>()V

    .line 29
    sput-object v0, Lo/ga;->zzmz:Lo/ga;

    .line 30
    const-class v1, Lo/ga;

    invoke-static {v1, v0}, Lo/fU;->onMessageChannelReady(Ljava/lang/Class;Lo/fU;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fU;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/ga;->zzil:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lo/ga;->zzmv:Ljava/lang/String;

    return-void
.end method

.method static synthetic onMessageChannelReady()Lo/ga;
    .locals 1

    .line 27
    sget-object v0, Lo/ga;->zzmz:Lo/ga;

    return-object v0
.end method


# virtual methods
.method protected final extraCallback(Lo/fU$onPostMessage;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 5
    sget-object p2, Lo/ChannelListActivity$1;->onNavigationEvent:[I

    invoke-virtual {p1}, Lo/fU$onPostMessage;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 26
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 24
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 15
    :pswitch_2
    sget-object p1, Lo/ga;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_1

    .line 17
    const-class p2, Lo/ga;

    monitor-enter p2

    .line 18
    :try_start_0
    sget-object p1, Lo/ga;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_0

    .line 20
    new-instance p1, Lo/fU$ICustomTabsCallback;

    sget-object p3, Lo/ga;->zzmz:Lo/ga;

    invoke-direct {p1, p3}, Lo/fU$ICustomTabsCallback;-><init>(Lo/fU;)V

    .line 21
    sput-object p1, Lo/ga;->zzio:Lo/PictureAttachmentActivity$3;

    .line 22
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

    .line 14
    :pswitch_3
    sget-object p1, Lo/ga;->zzmz:Lo/ga;

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzij"

    aput-object v0, p1, p3

    const-string p3, "zzil"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "zzmv"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzmw"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 9
    invoke-static {}, Lo/onItemClick;->onNavigationEvent()Lo/ConversationDetailActivity$11;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x5

    const-string p3, "zzmx"

    aput-object p3, p1, p2

    const/4 p2, 0x6

    .line 10
    invoke-static {}, Lo/CategoryListActivity$3;->onPostMessage()Lo/ConversationDetailActivity$11;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x7

    const-string p3, "zzmy"

    aput-object p3, p1, p2

    const/16 p2, 0x8

    .line 11
    invoke-static {}, Lo/k;->ICustomTabsCallback()Lo/ConversationDetailActivity$11;

    move-result-object p3

    aput-object p3, p1, p2

    .line 13
    sget-object p2, Lo/ga;->zzmz:Lo/ga;

    const-string p3, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u100c\u0002\u0004\u100c\u0003\u0005\u100c\u0004"

    invoke-static {p2, p3, p1}, Lo/ga;->onNavigationEvent(Lo/aD;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 7
    :pswitch_5
    new-instance p1, Lo/ga$extraCallback;

    invoke-direct {p1, p3}, Lo/ga$extraCallback;-><init>(Lo/ChannelListActivity$1;)V

    return-object p1

    .line 6
    :pswitch_6
    new-instance p1, Lo/ga;

    invoke-direct {p1}, Lo/ga;-><init>()V

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
