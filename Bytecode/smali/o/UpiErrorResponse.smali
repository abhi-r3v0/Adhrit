.class final Lo/UpiErrorResponse;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/Status;


# instance fields
.field private final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/UpiErrorResponse;->extraCallback:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final ICustomTabsCallback(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final onMessageChannelReady(J)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lo/SimResponseJsonAdapter;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object p1, p0, Lo/UpiErrorResponse;->extraCallback:Ljava/util/List;

    return-object p1
.end method

.method public final onNavigationEvent(J)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method
