.class final Lo/getActiveConvMinFetchInterval;
.super Lo/setResponseTimeExpectationsFetchInterval;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/setResponseTimeExpectationsFetchInterval<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final synthetic extraCallback:Lo/setActiveConvWindow;


# direct methods
.method constructor <init>(Lo/setActiveConvWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/getActiveConvMinFetchInterval;->extraCallback:Lo/setActiveConvWindow;

    invoke-direct {p0}, Lo/setResponseTimeExpectationsFetchInterval;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 4
    iget-object v0, p0, Lo/getActiveConvMinFetchInterval;->extraCallback:Lo/setActiveConvWindow;

    invoke-static {v0}, Lo/setActiveConvWindow;->onPostMessage(Lo/setActiveConvWindow;)I

    move-result v0

    invoke-static {p1, v0}, Lo/gw;->onPostMessage(II)I

    .line 5
    iget-object v0, p0, Lo/getActiveConvMinFetchInterval;->extraCallback:Lo/setActiveConvWindow;

    invoke-static {v0}, Lo/setActiveConvWindow;->extraCallback(Lo/setActiveConvWindow;)[Ljava/lang/Object;

    move-result-object v0

    mul-int/lit8 p1, p1, 0x2

    iget-object v1, p0, Lo/getActiveConvMinFetchInterval;->extraCallback:Lo/setActiveConvWindow;

    .line 6
    aget-object v0, v0, p1

    .line 7
    invoke-static {v1}, Lo/setActiveConvWindow;->extraCallback(Lo/setActiveConvWindow;)[Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    .line 9
    aget-object p1, v1, p1

    .line 10
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public final size()I
    .locals 1

    .line 2
    iget-object v0, p0, Lo/getActiveConvMinFetchInterval;->extraCallback:Lo/setActiveConvWindow;

    invoke-static {v0}, Lo/setActiveConvWindow;->onPostMessage(Lo/setActiveConvWindow;)I

    move-result v0

    return v0
.end method
