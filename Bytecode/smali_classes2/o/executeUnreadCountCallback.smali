.class public final Lo/executeUnreadCountCallback;
.super Lo/RealtimeSinceBootClock$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/executeUnreadCountCallback$extraCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock$onMessageChannelReady<",
        "Lo/executeUnreadCountCallback;",
        "Lo/executeUnreadCountCallback$extraCallback;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbg:Lo/nativeToCircleFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/nativeToCircleFilter<",
            "Lo/executeUnreadCountCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzsg:Lo/executeUnreadCountCallback;


# instance fields
.field private zzsf:B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/executeUnreadCountCallback;

    invoke-direct {v0}, Lo/executeUnreadCountCallback;-><init>()V

    sput-object v0, Lo/executeUnreadCountCallback;->zzsg:Lo/executeUnreadCountCallback;

    const-class v1, Lo/executeUnreadCountCallback;

    invoke-static {v1, v0}, Lo/RealtimeSinceBootClock;->ICustomTabsCallback(Ljava/lang/Class;Lo/RealtimeSinceBootClock;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/RealtimeSinceBootClock$onMessageChannelReady;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lo/executeUnreadCountCallback;->zzsf:B

    return-void
.end method

.method public static extraCallback()Lo/executeUnreadCountCallback;
    .locals 1

    sget-object v0, Lo/executeUnreadCountCallback;->zzsg:Lo/executeUnreadCountCallback;

    return-object v0
.end method

.method static synthetic newSession()Lo/executeUnreadCountCallback;
    .locals 1

    sget-object v0, Lo/executeUnreadCountCallback;->zzsg:Lo/executeUnreadCountCallback;

    return-object v0
.end method


# virtual methods
.method protected final onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p3, Lo/getUnreadCountAsync;->extraCallback:[I

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    aget p1, p3, p1

    const/4 p3, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :cond_0
    int-to-byte p1, v0

    iput-byte p1, p0, Lo/executeUnreadCountCallback;->zzsf:B

    return-object p3

    :pswitch_1
    iget-byte p1, p0, Lo/executeUnreadCountCallback;->zzsf:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lo/executeUnreadCountCallback;->zzbg:Lo/nativeToCircleFilter;

    if-nez p1, :cond_2

    const-class p2, Lo/executeUnreadCountCallback;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/executeUnreadCountCallback;->zzbg:Lo/nativeToCircleFilter;

    if-nez p1, :cond_1

    new-instance p1, Lo/RealtimeSinceBootClock$onPostMessage;

    sget-object p3, Lo/executeUnreadCountCallback;->zzsg:Lo/executeUnreadCountCallback;

    invoke-direct {p1, p3}, Lo/RealtimeSinceBootClock$onPostMessage;-><init>(Lo/RealtimeSinceBootClock;)V

    sput-object p1, Lo/executeUnreadCountCallback;->zzbg:Lo/nativeToCircleFilter;

    :cond_1
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-object p1

    :pswitch_3
    sget-object p1, Lo/executeUnreadCountCallback;->zzsg:Lo/executeUnreadCountCallback;

    return-object p1

    :pswitch_4
    sget-object p1, Lo/executeUnreadCountCallback;->zzsg:Lo/executeUnreadCountCallback;

    const-string p2, "\u0003\u0000"

    invoke-static {p1, p2, p3}, Lo/executeUnreadCountCallback;->onMessageChannelReady(Lo/NativeBlurFilter;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/executeUnreadCountCallback$extraCallback;

    invoke-direct {p1, p3}, Lo/executeUnreadCountCallback$extraCallback;-><init>(Lo/getUnreadCountAsync;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/executeUnreadCountCallback;

    invoke-direct {p1}, Lo/executeUnreadCountCallback;-><init>()V

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
