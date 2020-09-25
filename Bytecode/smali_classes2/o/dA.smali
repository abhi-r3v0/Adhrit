.class public final Lo/dA;
.super Lo/fU;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/dA$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/fU<",
        "Lo/dA;",
        "Lo/dA$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzio:Lo/PictureAttachmentActivity$3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PictureAttachmentActivity$3<",
            "Lo/dA;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzki:Lo/dA;


# instance fields
.field private zzij:I

.field private zzil:Ljava/lang/String;

.field private zzkf:Ljava/lang/String;

.field private zzkg:Ljava/lang/String;

.field private zzkh:Lo/bk$onPostMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lo/dA;

    invoke-direct {v0}, Lo/dA;-><init>()V

    .line 27
    sput-object v0, Lo/dA;->zzki:Lo/dA;

    .line 28
    const-class v1, Lo/dA;

    invoke-static {v1, v0}, Lo/fU;->onMessageChannelReady(Ljava/lang/Class;Lo/fU;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lo/fU;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lo/dA;->zzil:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lo/dA;->zzkf:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lo/dA;->zzkg:Ljava/lang/String;

    return-void
.end method

.method static synthetic onMessageChannelReady()Lo/dA;
    .locals 1

    .line 25
    sget-object v0, Lo/dA;->zzki:Lo/dA;

    return-object v0
.end method


# virtual methods
.method protected final extraCallback(Lo/fU$onPostMessage;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 6
    sget-object p2, Lo/ArticleDetailActivity$1;->onMessageChannelReady:[I

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
    sget-object p1, Lo/dA;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_1

    .line 15
    const-class p2, Lo/dA;

    monitor-enter p2

    .line 16
    :try_start_0
    sget-object p1, Lo/dA;->zzio:Lo/PictureAttachmentActivity$3;

    if-nez p1, :cond_0

    .line 18
    new-instance p1, Lo/fU$ICustomTabsCallback;

    sget-object p3, Lo/dA;->zzki:Lo/dA;

    invoke-direct {p1, p3}, Lo/fU$ICustomTabsCallback;-><init>(Lo/fU;)V

    .line 19
    sput-object p1, Lo/dA;->zzio:Lo/PictureAttachmentActivity$3;

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
    sget-object p1, Lo/dA;->zzki:Lo/dA;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p3, 0x0

    const-string v0, "zzij"

    aput-object v0, p1, p3

    const-string p3, "zzil"

    aput-object p3, p1, p2

    const/4 p2, 0x2

    const-string p3, "zzkf"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzkg"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzkh"

    aput-object p3, p1, p2

    .line 11
    sget-object p2, Lo/dA;->zzki:Lo/dA;

    const-string p3, "\u0001\u0004\u0000\u0001\u0002\u0005\u0004\u0000\u0000\u0000\u0002\u1008\u0000\u0003\u1008\u0001\u0004\u1008\u0002\u0005\u1009\u0003"

    invoke-static {p2, p3, p1}, Lo/dA;->onNavigationEvent(Lo/aD;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lo/dA$extraCallback;

    invoke-direct {p1, p3}, Lo/dA$extraCallback;-><init>(Lo/ArticleDetailActivity$1;)V

    return-object p1

    .line 7
    :pswitch_6
    new-instance p1, Lo/dA;

    invoke-direct {p1}, Lo/dA;-><init>()V

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
