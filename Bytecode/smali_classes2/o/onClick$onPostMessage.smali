.class public final Lo/onClick$onPostMessage;
.super Lo/RealtimeSinceBootClock;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/onClick$onPostMessage$onNavigationEvent;,
        Lo/onClick$onPostMessage$onPostMessage;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/RealtimeSinceBootClock<",
        "Lo/onClick$onPostMessage;",
        "Lo/onClick$onPostMessage$onNavigationEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile zzbg:Lo/nativeToCircleFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/nativeToCircleFilter<",
            "Lo/onClick$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzbir:Lo/onClick$onPostMessage;


# instance fields
.field private zzbiq:Lo/setImageRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setImageRequest<",
            "Lo/onClick$onPostMessage$onPostMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lo/onClick$onPostMessage;

    invoke-direct {v0}, Lo/onClick$onPostMessage;-><init>()V

    sput-object v0, Lo/onClick$onPostMessage;->zzbir:Lo/onClick$onPostMessage;

    const-class v1, Lo/onClick$onPostMessage;

    invoke-static {v1, v0}, Lo/RealtimeSinceBootClock;->ICustomTabsCallback(Ljava/lang/Class;Lo/RealtimeSinceBootClock;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/RealtimeSinceBootClock;-><init>()V

    invoke-static {}, Lo/onClick$onPostMessage;->asBinder()Lo/setImageRequest;

    move-result-object v0

    iput-object v0, p0, Lo/onClick$onPostMessage;->zzbiq:Lo/setImageRequest;

    return-void
.end method

.method public static ICustomTabsCallback([B)Lo/onClick$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/clearcut/zzco;
        }
    .end annotation

    sget-object v0, Lo/onClick$onPostMessage;->zzbir:Lo/onClick$onPostMessage;

    invoke-static {v0, p0}, Lo/RealtimeSinceBootClock;->onPostMessage(Lo/RealtimeSinceBootClock;[B)Lo/RealtimeSinceBootClock;

    move-result-object p0

    check-cast p0, Lo/onClick$onPostMessage;

    return-object p0
.end method

.method static synthetic ICustomTabsService()Lo/onClick$onPostMessage;
    .locals 1

    sget-object v0, Lo/onClick$onPostMessage;->zzbir:Lo/onClick$onPostMessage;

    return-object v0
.end method

.method public static getInterfaceDescriptor()Lo/onClick$onPostMessage;
    .locals 1

    sget-object v0, Lo/onClick$onPostMessage;->zzbir:Lo/onClick$onPostMessage;

    return-object v0
.end method


# virtual methods
.method public final extraCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lo/onClick$onPostMessage$onPostMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/onClick$onPostMessage;->zzbiq:Lo/setImageRequest;

    return-object v0
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
    sget-object p1, Lo/onClick$onPostMessage;->zzbg:Lo/nativeToCircleFilter;

    if-nez p1, :cond_1

    const-class p2, Lo/onClick$onPostMessage;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lo/onClick$onPostMessage;->zzbg:Lo/nativeToCircleFilter;

    if-nez p1, :cond_0

    new-instance p1, Lo/RealtimeSinceBootClock$onPostMessage;

    sget-object p3, Lo/onClick$onPostMessage;->zzbir:Lo/onClick$onPostMessage;

    invoke-direct {p1, p3}, Lo/RealtimeSinceBootClock$onPostMessage;-><init>(Lo/RealtimeSinceBootClock;)V

    sput-object p1, Lo/onClick$onPostMessage;->zzbg:Lo/nativeToCircleFilter;

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
    sget-object p1, Lo/onClick$onPostMessage;->zzbir:Lo/onClick$onPostMessage;

    return-object p1

    :pswitch_4
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const-string v0, "zzbiq"

    aput-object v0, p1, p2

    const-class p2, Lo/onClick$onPostMessage$onPostMessage;

    aput-object p2, p1, p3

    sget-object p2, Lo/onClick$onPostMessage;->zzbir:Lo/onClick$onPostMessage;

    const-string p3, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0002\u0000\u0001\u0000\u0001\u001b"

    invoke-static {p2, p3, p1}, Lo/onClick$onPostMessage;->onMessageChannelReady(Lo/NativeBlurFilter;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :pswitch_5
    new-instance p1, Lo/onClick$onPostMessage$onNavigationEvent;

    invoke-direct {p1, p2}, Lo/onClick$onPostMessage$onNavigationEvent;-><init>(Lo/Freshchat$1$1;)V

    return-object p1

    :pswitch_6
    new-instance p1, Lo/onClick$onPostMessage;

    invoke-direct {p1}, Lo/onClick$onPostMessage;-><init>()V

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
