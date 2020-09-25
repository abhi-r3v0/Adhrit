.class final Lo/persistNonFatalEvent$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onReportSendComplete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/persistNonFatalEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/onReportSendComplete<",
        "Ljava/util/Map<",
        "Lo/recursiveDelete;",
        "Lo/parse;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 0

    .line 49
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lo/persistNonFatalEvent$3;->evaluate(Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public final evaluate(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lo/recursiveDelete;",
            "Lo/parse;",
            ">;)Z"
        }
    .end annotation

    .line 52
    sget-object v0, Lo/recursiveDelete;->DEFAULT_PARAMS:Lo/recursiveDelete;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/parse;

    if-eqz p1, :cond_0

    .line 53
    iget-boolean p1, p1, Lo/parse;->active:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
