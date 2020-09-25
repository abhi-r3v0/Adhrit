.class final Lo/setActiveConvMinFetchInterval;
.super Lo/setResponseTimeExpectationsFetchInterval;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/setResponseTimeExpectationsFetchInterval<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final ICustomTabsCallback:Lo/setResponseTimeExpectationsFetchInterval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setResponseTimeExpectationsFetchInterval<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final transient extraCallback:[Ljava/lang/Object;

.field private final transient onPostMessage:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lo/setActiveConvMinFetchInterval;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Lo/setActiveConvMinFetchInterval;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Lo/setActiveConvMinFetchInterval;->ICustomTabsCallback:Lo/setResponseTimeExpectationsFetchInterval;

    return-void
.end method

.method constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/setResponseTimeExpectationsFetchInterval;-><init>()V

    .line 2
    iput-object p1, p0, Lo/setActiveConvMinFetchInterval;->extraCallback:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lo/setActiveConvMinFetchInterval;->onPostMessage:I

    return-void
.end method


# virtual methods
.method final extraCallback()I
    .locals 1

    .line 8
    iget v0, p0, Lo/setActiveConvMinFetchInterval;->onPostMessage:I

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 11
    iget v0, p0, Lo/setActiveConvMinFetchInterval;->onPostMessage:I

    invoke-static {p1, v0}, Lo/gw;->onPostMessage(II)I

    .line 12
    iget-object v0, p0, Lo/setActiveConvMinFetchInterval;->extraCallback:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method final onMessageChannelReady()[Ljava/lang/Object;
    .locals 1

    .line 6
    iget-object v0, p0, Lo/setActiveConvMinFetchInterval;->extraCallback:[Ljava/lang/Object;

    return-object v0
.end method

.method final onPostMessage()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final onPostMessage([Ljava/lang/Object;I)I
    .locals 3

    .line 9
    iget-object v0, p0, Lo/setActiveConvMinFetchInterval;->extraCallback:[Ljava/lang/Object;

    iget v1, p0, Lo/setActiveConvMinFetchInterval;->onPostMessage:I

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    iget p1, p0, Lo/setActiveConvMinFetchInterval;->onPostMessage:I

    add-int/2addr p2, p1

    return p2
.end method

.method public final size()I
    .locals 1

    .line 5
    iget v0, p0, Lo/setActiveConvMinFetchInterval;->onPostMessage:I

    return v0
.end method
