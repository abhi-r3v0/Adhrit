.class public final Lo/onClick$onPostMessage$onPostMessage;
.super Lo/RealtimeSinceBootClock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onClick$onPostMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onClick$onPostMessage$onPostMessage$onMessageChannelReady;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock<",
        "Lo/onClick$onPostMessage$onPostMessage;",
        "Lo/onClick$onPostMessage$onPostMessage$onMessageChannelReady;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbg:Lo/nativeToCircleFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/nativeToCircleFilter<",
            "Lo/onClick$onPostMessage$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbiv:Lo/onClick$onPostMessage$onPostMessage;


# instance fields
.field private zzbb:I

.field private zzbis:Ljava/lang/String;

.field private zzbit:J

.field private zzbiu:J

.field private zzya:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/onClick$onPostMessage$onPostMessage;

    invoke-direct {v0}, Lo/onClick$onPostMessage$onPostMessage;-><init>()V

    sput-object v0, Lo/onClick$onPostMessage$onPostMessage;->zzbiv:Lo/onClick$onPostMessage$onPostMessage;

    const-class v1, Lo/onClick$onPostMessage$onPostMessage;

    invoke-static {v1, v0}, Lo/RealtimeSinceBootClock;->ICustomTabsCallback(Ljava/lang/Class;Lo/RealtimeSinceBootClock;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/RealtimeSinceBootClock;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lo/onClick$onPostMessage$onPostMessage;->zzbis:Ljava/lang/String;

    return-void
.end method

.method private final ICustomTabsCallback(J)V
    .locals 1

    iget v0, p0, Lo/onClick$onPostMessage$onPostMessage;->zzbb:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lo/onClick$onPostMessage$onPostMessage;->zzbb:I

    iput-wide p1, p0, Lo/onClick$onPostMessage$onPostMessage;->zzbiu:J

    return-void
.end method

.method private final extraCallback(J)V
    .locals 1

    iget v0, p0, Lo/onClick$onPostMessage$onPostMessage;->zzbb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lo/onClick$onPostMessage$onPostMessage;->zzbb:I

    iput-wide p1, p0, Lo/onClick$onPostMessage$onPostMessage;->zzbit:J

    return-void
.end method

.method public static extraCommand()Lo/onClick$onPostMessage$onPostMessage$onMessageChannelReady;
    .locals 3

    sget-object v0, Lo/onClick$onPostMessage$onPostMessage;->zzbiv:Lo/onClick$onPostMessage$onPostMessage;

    sget v1, Lo/RealtimeSinceBootClock$ICustomTabsCallback$Stub;->ICustomTabsCallback:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lo/RealtimeSinceBootClock;->onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RealtimeSinceBootClock$ICustomTabsCallback;

    check-cast v0, Lo/onClick$onPostMessage$onPostMessage$onMessageChannelReady;

    return-object v0
.end method

.method private final onMessageChannelReady(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lo/onClick$onPostMessage$onPostMessage;->zzbb:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lo/onClick$onPostMessage$onPostMessage;->zzbb:I

    iput-object p1, p0, Lo/onClick$onPostMessage$onPostMessage;->zzbis:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1
.end method

.method static synthetic onNavigationEvent(Lo/onClick$onPostMessage$onPostMessage;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/onClick$onPostMessage$onPostMessage;->extraCallback(J)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/onClick$onPostMessage$onPostMessage;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/onClick$onPostMessage$onPostMessage;->ICustomTabsCallback(J)V

    return-void
.end method

.method static synthetic onPostMessage(Lo/onClick$onPostMessage$onPostMessage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/onClick$onPostMessage$onPostMessage;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic requestPostMessageChannel()Lo/onClick$onPostMessage$onPostMessage;
    .locals 1

    sget-object v0, Lo/onClick$onPostMessage$onPostMessage;->zzbiv:Lo/onClick$onPostMessage$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsService()J
    .locals 2

    iget-wide v0, p0, Lo/onClick$onPostMessage$onPostMessage;->zzbit:J

    return-wide v0
.end method

.method public final extraCallback()Z
    .locals 2

    iget v0, p0, Lo/onClick$onPostMessage$onPostMessage;->zzbb:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getInterfaceDescriptor()J
    .locals 2

    iget-wide v0, p0, Lo/onClick$onPostMessage$onPostMessage;->zzbiu:J

    return-wide v0
.end method

.method public final newSession()I
    .locals 1

    iget v0, p0, Lo/onClick$onPostMessage$onPostMessage;->zzya:I

    return v0
.end method

.method protected final onPostMessage(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object p2, Lo/Freshchat$1$1;->extraCallback:[I

    const/4 p3, 0x1

    sub-int/2addr p1, p3

    aget p1, p2, p1

    const/4 p2, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    return-object p2

    :pswitch_1
    invoke-static {p3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_2
    sget-object p1, Lo/onClick$onPostMessage$onPostMessage;->zzbg:Lo/nativeToCircleFilter;

    if-nez p1, :cond_1

    const-class p2, Lo/onClick$onPostMessage$onPostMessage;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/onClick$onPostMessage$onPostMessage;->zzbg:Lo/nativeToCircleFilter;

    if-nez p1, :cond_0

    new-instance p1, Lo/RealtimeSinceBootClock$onPostMessage;

    sget-object p3, Lo/onClick$onPostMessage$onPostMessage;->zzbiv:Lo/onClick$onPostMessage$onPostMessage;

    invoke-direct {p1, p3}, Lo/RealtimeSinceBootClock$onPostMessage;-><init>(Lo/RealtimeSinceBootClock;)V

    sput-object p1, Lo/onClick$onPostMessage$onPostMessage;->zzbg:Lo/nativeToCircleFilter;

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

    :pswitch_3
    sget-object p1, Lo/onClick$onPostMessage$onPostMessage;->zzbiv:Lo/onClick$onPostMessage$onPostMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x5

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbb"

    aput-object v0, p1, p2

    const-string p2, "zzya"

    aput-object p2, p1, p3

    const/4 p2, 0x2

    const-string p3, "zzbis"

    aput-object p3, p1, p2

    const/4 p2, 0x3

    const-string p3, "zzbit"

    aput-object p3, p1, p2

    const/4 p2, 0x4

    const-string p3, "zzbiu"

    aput-object p3, p1, p2

    sget-object p2, Lo/onClick$onPostMessage$onPostMessage;->zzbiv:Lo/onClick$onPostMessage$onPostMessage;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0005\u0000\u0000\u0000\u0001\u0004\u0000\u0002\u0008\u0001\u0003\u0002\u0002\u0004\u0002\u0003"

    invoke-static {p2, p3, p1}, Lo/onClick$onPostMessage$onPostMessage;->onMessageChannelReady(Lo/NativeBlurFilter;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/onClick$onPostMessage$onPostMessage$onMessageChannelReady;

    invoke-direct {p1, p2}, Lo/onClick$onPostMessage$onPostMessage$onMessageChannelReady;-><init>(Lo/Freshchat$1$1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/onClick$onPostMessage$onPostMessage;

    invoke-direct {p1}, Lo/onClick$onPostMessage$onPostMessage;-><init>()V

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

.method public final warmup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/onClick$onPostMessage$onPostMessage;->zzbis:Ljava/lang/String;

    return-object v0
.end method
