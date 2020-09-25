.class public final Lo/shortCircuitingReverseOrderTraversal;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/shortCircuitingReverseOrderTraversal$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final onMessageChannelReady:Ljava/util/logging/Logger;


# instance fields
.field public final onNavigationEvent:Ljava/util/concurrent/atomic/AtomicLong;

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lo/shortCircuitingReverseOrderTraversal;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lo/shortCircuitingReverseOrderTraversal;->onMessageChannelReady:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lo/shortCircuitingReverseOrderTraversal;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 38
    iput-object p1, p0, Lo/shortCircuitingReverseOrderTraversal;->onPostMessage:Ljava/lang/String;

    .line 39
    iget-object p1, p0, Lo/shortCircuitingReverseOrderTraversal;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    .line 1142
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value must be positive"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic ICustomTabsCallback(Lo/shortCircuitingReverseOrderTraversal;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/shortCircuitingReverseOrderTraversal;->onPostMessage:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic onMessageChannelReady(Lo/shortCircuitingReverseOrderTraversal;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 29
    iget-object p0, p0, Lo/shortCircuitingReverseOrderTraversal;->onNavigationEvent:Ljava/util/concurrent/atomic/AtomicLong;

    return-object p0
.end method

.method public static synthetic onMessageChannelReady()Ljava/util/logging/Logger;
    .locals 1

    .line 29
    sget-object v0, Lo/shortCircuitingReverseOrderTraversal;->onMessageChannelReady:Ljava/util/logging/Logger;

    return-object v0
.end method
