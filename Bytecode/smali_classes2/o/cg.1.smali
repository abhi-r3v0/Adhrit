.class final Lo/cg;
.super Lo/isAccountActive;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lo/isAccountActive<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Lo/setResponseTimeExpectationsFetchInterval;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setResponseTimeExpectationsFetchInterval<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/setResponseTimeExpectationsFetchInterval;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setResponseTimeExpectationsFetchInterval<",
            "TE;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lo/setResponseTimeExpectationsFetchInterval;->size()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lo/isAccountActive;-><init>(II)V

    .line 2
    iput-object p1, p0, Lo/cg;->onPostMessage:Lo/setResponseTimeExpectationsFetchInterval;

    return-void
.end method


# virtual methods
.method protected final extraCallback(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lo/cg;->onPostMessage:Lo/setResponseTimeExpectationsFetchInterval;

    invoke-virtual {v0, p1}, Lo/setResponseTimeExpectationsFetchInterval;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
