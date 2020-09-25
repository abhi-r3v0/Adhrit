.class public final Lo/bk$onPostMessage;
.super Lo/fU;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/bk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/bk$onPostMessage$extraCallback;,
        Lo/bk$onPostMessage$ICustomTabsCallback;,
        Lo/bk$onPostMessage$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU<",
        "Lo/bk$onPostMessage;",
        "Lo/bk$onPostMessage$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzio:Lo/PictureAttachmentActivity$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PictureAttachmentActivity$3<",
            "Lo/bk$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzxm:Lo/bk$onPostMessage;


# instance fields
.field private zzij:I

.field private zzxk:I

.field private zzxl:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lo/bk$onPostMessage;

    invoke-direct {v0}, Lo/bk$onPostMessage;-><init>()V

    .line 27
    sput-object v0, Lo/bk$onPostMessage;->zzxm:Lo/bk$onPostMessage;

    .line 28
    const-class v1, Lo/bk$onPostMessage;

    invoke-static {v1, v0}, Lo/fU;->onMessageChannelReady(Ljava/lang/Class;Lo/fU;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fU;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lo/bk$onPostMessage;->zzxk:I

    return-void
.end method

.method static synthetic onMessageChannelReady()Lo/bk$onPostMessage;
    .locals 1

    .line 25
    sget-object v0, Lo/bk$onPostMessage;->zzxm:Lo/bk$onPostMessage;

    return-object v0
.end method


# virtual methods
.method protected final extraCallback(Lo/fU$onPostMessage;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4
    sget-object p2, Lo/gi;->extraCallback:[I

    invoke-virtual {p1}, Lo/fU$onPostMessage;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p3

    .line 22
    :pswitch_1
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    .line 13
    :pswitch_2
    sget-object p1, Lo/bk$onPostMessage;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lo/bk$onPostMessage;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lo/bk$onPostMessage;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lo/fU$ICustomTabsCallback;

    sget-object p3, Lo/bk$onPostMessage;->zzxm:Lo/bk$onPostMessage;

    invoke-direct {p1, p3}, Lo/fU$ICustomTabsCallback;-><init>(Lo/fU;)V

    .line 19
    sput-object p1, Lo/bk$onPostMessage;->zzio:Lo/PictureAttachmentActivity$3;

    .line 20
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

    .line 12
    :pswitch_3
    sget-object p1, Lo/bk$onPostMessage;->zzxm:Lo/bk$onPostMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzij"

    aput-object v0, p1, p3

    const-string p3, "zzxk"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    .line 8
    invoke-static {}, Lo/bk$onPostMessage$onMessageChannelReady;->onPostMessage()Lo/ConversationDetailActivity$11;

    move-result-object p3

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzxl"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    .line 9
    invoke-static {}, Lo/bk$onPostMessage$ICustomTabsCallback;->extraCallback()Lo/ConversationDetailActivity$11;

    move-result-object p3

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lo/bk$onPostMessage;->zzxm:Lo/bk$onPostMessage;

    const-string p3, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u100c\u0000\u0002\u100c\u0001"

    invoke-static {p2, p3, p1}, Lo/bk$onPostMessage;->onNavigationEvent(Lo/aD;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 6
    :pswitch_5
    new-instance p1, Lo/bk$onPostMessage$extraCallback;

    invoke-direct {p1, p3}, Lo/bk$onPostMessage$extraCallback;-><init>(Lo/gi;)V

    return-object p1

    .line 5
    :pswitch_6
    new-instance p1, Lo/bk$onPostMessage;

    invoke-direct {p1}, Lo/bk$onPostMessage;-><init>()V

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
