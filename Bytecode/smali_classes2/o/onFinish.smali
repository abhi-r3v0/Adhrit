.class public final Lo/onFinish;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final extraCallback:Lo/onLongClick;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onLongClick<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/fJ;Ljava/lang/Object;Lo/fJ;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/fJ;",
            "TK;",
            "Lo/fJ;",
            "TV;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lo/onLongClick;

    invoke-direct {v0, p1, p2, p3, p4}, Lo/onLongClick;-><init>(Lo/fJ;Ljava/lang/Object;Lo/fJ;Ljava/lang/Object;)V

    iput-object v0, p0, Lo/onFinish;->extraCallback:Lo/onLongClick;

    .line 3
    iput-object p2, p0, Lo/onFinish;->onNavigationEvent:Ljava/lang/Object;

    .line 4
    iput-object p4, p0, Lo/onFinish;->onMessageChannelReady:Ljava/lang/Object;

    return-void
.end method

.method static onMessageChannelReady(Lo/onLongClick;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/onLongClick<",
            "TK;TV;>;TK;TV;)I"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lo/onLongClick;->onPostMessage:Lo/fJ;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lo/av;->onMessageChannelReady(Lo/fJ;ILjava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lo/onLongClick;->onNavigationEvent:Lo/fJ;

    const/4 v0, 0x2

    .line 8
    invoke-static {p0, v0, p2}, Lo/av;->onMessageChannelReady(Lo/fJ;ILjava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method public static onNavigationEvent(Lo/fJ;Ljava/lang/Object;Lo/fJ;Ljava/lang/Object;)Lo/onFinish;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/fJ;",
            "TK;",
            "Lo/fJ;",
            "TV;)",
            "Lo/onFinish<",
            "TK;TV;>;"
        }
    .end annotation

    .line 6
    new-instance v0, Lo/onFinish;

    invoke-direct {v0, p0, p1, p2, p3}, Lo/onFinish;-><init>(Lo/fJ;Ljava/lang/Object;Lo/fJ;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final onNavigationEvent(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITK;TV;)I"
        }
    .end annotation

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->onPostMessage(I)I

    move-result p1

    iget-object v0, p0, Lo/onFinish;->extraCallback:Lo/onLongClick;

    .line 11
    invoke-static {v0, p2, p3}, Lo/onFinish;->onMessageChannelReady(Lo/onLongClick;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p2

    .line 12
    invoke-static {p2}, Lcom/google/android/gms/internal/firebase-perf/zzfa;->newSession(I)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method final onPostMessage()Lo/onLongClick;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/onLongClick<",
            "TK;TV;>;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lo/onFinish;->extraCallback:Lo/onLongClick;

    return-object v0
.end method
