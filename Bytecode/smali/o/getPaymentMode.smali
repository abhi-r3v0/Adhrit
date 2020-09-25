.class public abstract Lo/getPaymentMode;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getPaymentMode$ICustomTabsCallback;,
        Lo/getPaymentMode$onPostMessage;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ICustomTabsCallback:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo/getPaymentMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 27
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lo/getPaymentMode;->ICustomTabsCallback:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo/getPaymentMode;",
            ">;"
        }
    .end annotation

    .line 10
    sget-object v0, Lo/getPaymentMode;->ICustomTabsCallback:Ljava/util/Set;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lo/getPaymentMode;->ICustomTabsCallback:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public ICustomTabsCallback(Lo/getAccountReference$onPostMessage;)Lo/getAccountReference$onPostMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "R::",
            "Lo/PaymentRequestItem;",
            "T:",
            "Lo/getAccountReference$onPostMessage<",
            "TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 13
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public extraCallback(Lo/setCalendarName;)V
    .locals 0

    .line 24
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onNavigationEvent()Landroid/os/Looper;
    .locals 1

    .line 19
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onNavigationEvent(Lo/getAccountReference$onPostMessage;)Lo/getAccountReference$onPostMessage;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lo/setCustomAmount$onMessageChannelReady;",
            "T:",
            "Lo/getAccountReference$onPostMessage<",
            "+",
            "Lo/PaymentRequestItem;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    .line 14
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onNavigationEvent(Lo/setCalendarName;)V
    .locals 0

    .line 23
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onPostMessage()V
    .locals 1

    .line 21
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onPostMessage(Lo/MediaSessionCompat$1$onMessageChannelReady;)Z
    .locals 0

    .line 20
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
