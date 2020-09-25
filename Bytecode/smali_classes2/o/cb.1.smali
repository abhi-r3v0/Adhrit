.class public final Lo/cb;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final extraCallback:Lo/bA;

.field private final onMessageChannelReady:Z

.field private final onNavigationEvent:Lo/cf;

.field private final onPostMessage:I


# direct methods
.method private constructor <init>(Lo/cf;)V
    .locals 3

    .line 2
    sget-object v0, Lo/bG;->onNavigationEvent:Lo/bG;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    .line 3
    invoke-direct {p0, p1, v1, v0, v2}, Lo/cb;-><init>(Lo/cf;ZLo/bA;I)V

    return-void
.end method

.method private constructor <init>(Lo/cf;ZLo/bA;I)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lo/cb;->onNavigationEvent:Lo/cf;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lo/cb;->onMessageChannelReady:Z

    .line 8
    iput-object p3, p0, Lo/cb;->extraCallback:Lo/bA;

    const p1, 0x7fffffff

    .line 9
    iput p1, p0, Lo/cb;->onPostMessage:I

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/cb;)Lo/bA;
    .locals 0

    .line 32
    iget-object p0, p0, Lo/cb;->extraCallback:Lo/bA;

    return-object p0
.end method

.method public static ICustomTabsCallback(C)Lo/cb;
    .locals 2

    .line 11
    new-instance p0, Lo/bE;

    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lo/bE;-><init>(C)V

    .line 13
    invoke-static {p0}, Lo/gw;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v0, Lo/cb;

    new-instance v1, Lo/ca;

    invoke-direct {v1, p0}, Lo/ca;-><init>(Lo/bA;)V

    invoke-direct {v0, v1}, Lo/cb;-><init>(Lo/cf;)V

    return-object v0
.end method

.method public static ICustomTabsCallback(Ljava/lang/String;)Lo/cb;
    .locals 3

    .line 16
    invoke-static {p0}, Lo/bQ;->ICustomTabsCallback(Ljava/lang/String;)Lo/bL;

    move-result-object p0

    const-string v0, ""

    .line 18
    invoke-virtual {p0, v0}, Lo/bL;->onNavigationEvent(Ljava/lang/CharSequence;)Lo/bN;

    move-result-object v0

    invoke-virtual {v0}, Lo/bN;->onPostMessage()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 22
    new-instance v0, Lo/cb;

    new-instance v1, Lo/bT;

    invoke-direct {v1, p0}, Lo/bT;-><init>(Lo/bL;)V

    invoke-direct {v0, v1}, Lo/cb;-><init>(Lo/cf;)V

    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "The pattern may not match the empty string: %s"

    invoke-static {p0, v1}, Lo/ce;->ICustomTabsCallback(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic extraCallback(Lo/cb;)I
    .locals 0

    .line 33
    iget p0, p0, Lo/cb;->onPostMessage:I

    return p0
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/CharSequence;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 24
    invoke-static {p1}, Lo/gw;->onPostMessage(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v0, p0, Lo/cb;->onNavigationEvent:Lo/cf;

    invoke-interface {v0, p0, p1}, Lo/cf;->onMessageChannelReady(Lo/cb;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object p1

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
