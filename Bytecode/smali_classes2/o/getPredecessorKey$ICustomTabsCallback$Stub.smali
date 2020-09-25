.class final Lo/getPredecessorKey$ICustomTabsCallback$Stub;
.super Lo/getPredecessorKey$ICustomTabsCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getPredecessorKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/getPredecessorKey$ICustomTabsCallback<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/getPredecessorKey$onTransact;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getPredecessorKey$onTransact<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;ZLo/getPredecessorKey$onTransact;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lo/getPredecessorKey$onTransact<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 984
    invoke-direct {p0, p1, p2, p3, v0}, Lo/getPredecessorKey$ICustomTabsCallback;-><init>(Ljava/lang/String;ZLjava/lang/Object;B)V

    const-string p2, "-bin"

    .line 986
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 990
    check-cast p3, Lo/getPredecessorKey$onTransact;

    iput-object p3, p0, Lo/getPredecessorKey$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getPredecessorKey$onTransact;

    return-void

    .line 1910
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "marshaller"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1444
    :cond_1
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v0

    aput-object p2, v1, v2

    const-string p1, "ASCII header is named %s.  Only binary headers may end with %s"

    invoke-static {p1, v1}, Lo/extraCallback;->onNavigationEvent(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLo/getPredecessorKey$onTransact;B)V
    .locals 0

    .line 979
    invoke-direct {p0, p1, p2, p3}, Lo/getPredecessorKey$ICustomTabsCallback$Stub;-><init>(Ljava/lang/String;ZLo/getPredecessorKey$onTransact;)V

    return-void
.end method


# virtual methods
.method final ICustomTabsCallback(Ljava/lang/Object;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[B"
        }
    .end annotation

    .line 995
    iget-object v0, p0, Lo/getPredecessorKey$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getPredecessorKey$onTransact;

    invoke-interface {v0, p1}, Lo/getPredecessorKey$onTransact;->ICustomTabsCallback(Ljava/lang/Object;)[B

    move-result-object p1

    return-object p1
.end method

.method final onNavigationEvent([B)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TT;"
        }
    .end annotation

    .line 1000
    iget-object v0, p0, Lo/getPredecessorKey$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/getPredecessorKey$onTransact;

    invoke-interface {v0, p1}, Lo/getPredecessorKey$onTransact;->ICustomTabsCallback([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
