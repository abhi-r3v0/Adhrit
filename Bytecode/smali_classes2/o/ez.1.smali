.class public final Lo/ez;
.super Lo/fU;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ez$onMessageChannelReady;,
        Lo/ez$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU<",
        "Lo/ez;",
        "Lo/ez$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzio:Lo/PictureAttachmentActivity$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PictureAttachmentActivity$3<",
            "Lo/ez;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzml:Lo/ez;


# instance fields
.field private zzij:I

.field private zzmk:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    new-instance v0, Lo/ez;

    invoke-direct {v0}, Lo/ez;-><init>()V

    .line 25
    sput-object v0, Lo/ez;->zzml:Lo/ez;

    .line 26
    const-class v1, Lo/ez;

    invoke-static {v1, v0}, Lo/fU;->onMessageChannelReady(Ljava/lang/Class;Lo/fU;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/fU;-><init>()V

    return-void
.end method

.method static synthetic extraCallback()Lo/ez;
    .locals 1

    .line 23
    sget-object v0, Lo/ez;->zzml:Lo/ez;

    return-object v0
.end method


# virtual methods
.method protected final extraCallback(Lo/fU$onPostMessage;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 3
    sget-object p2, Lo/eA;->onPostMessage:[I

    invoke-virtual {p1}, Lo/fU$onPostMessage;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 22
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 20
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 11
    :pswitch_2
    sget-object p1, Lo/ez;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_1

    .line 13
    const-class p2, Lo/ez;

    monitor-enter p2

    .line 14
    :try_start_0
    sget-object p1, Lo/ez;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_0

    .line 16
    new-instance p1, Lo/fU$ICustomTabsCallback;

    sget-object p3, Lo/ez;->zzml:Lo/ez;

    invoke-direct {p1, p3}, Lo/fU$ICustomTabsCallback;-><init>(Lo/fU;)V

    .line 17
    sput-object p1, Lo/ez;->zzio:Lo/PictureAttachmentActivity$3;

    .line 18
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

    .line 10
    :pswitch_3
    sget-object p1, Lo/ez;->zzml:Lo/ez;

    return-object p1

    :pswitch_4
    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzij"

    aput-object v0, p1, p3

    const-string p3, "zzmk"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 7
    invoke-static {}, Lo/ez$onPostMessage;->extraCallback()Lo/ConversationDetailActivity$11;

    move-result-object p3

    aput-object p3, p1, p2

    .line 9
    sget-object p2, Lo/ez;->zzml:Lo/ez;

    const-string p3, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u100c\u0000"

    invoke-static {p2, p3, p1}, Lo/ez;->onNavigationEvent(Lo/aD;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :pswitch_5
    new-instance p1, Lo/ez$onMessageChannelReady;

    invoke-direct {p1, p3}, Lo/ez$onMessageChannelReady;-><init>(Lo/eA;)V

    return-object p1

    .line 4
    :pswitch_6
    new-instance p1, Lo/ez;

    invoke-direct {p1}, Lo/ez;-><init>()V

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
