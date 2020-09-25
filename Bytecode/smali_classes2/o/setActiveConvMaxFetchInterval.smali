.class final Lo/setActiveConvMaxFetchInterval;
.super Lo/setResponseTimeExpectationsFetchInterval;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setResponseTimeExpectationsFetchInterval<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final transient ICustomTabsCallback:[Ljava/lang/Object;

.field private final transient extraCallback:I

.field private final transient onMessageChannelReady:I


# direct methods
.method constructor <init>([Ljava/lang/Object;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo/setResponseTimeExpectationsFetchInterval;-><init>()V

    .line 2
    iput-object p1, p0, Lo/setActiveConvMaxFetchInterval;->ICustomTabsCallback:[Ljava/lang/Object;

    .line 3
    iput p2, p0, Lo/setActiveConvMaxFetchInterval;->onMessageChannelReady:I

    .line 4
    iput p3, p0, Lo/setActiveConvMaxFetchInterval;->extraCallback:I

    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 6
    iget v0, p0, Lo/setActiveConvMaxFetchInterval;->extraCallback:I

    invoke-static {p1, v0}, Lo/gw;->onPostMessage(II)I

    .line 7
    iget-object v0, p0, Lo/setActiveConvMaxFetchInterval;->ICustomTabsCallback:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    iget v1, p0, Lo/setActiveConvMaxFetchInterval;->onMessageChannelReady:I

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 8
    iget v0, p0, Lo/setActiveConvMaxFetchInterval;->extraCallback:I

    return v0
.end method
