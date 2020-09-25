.class public final Lo/VersionedParcel$ParcelException;
.super Lo/getRootAlpha;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lo/getRootAlpha<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lo/setPageMargin<",
            "TT;>;",
            "Lo/getRootAlpha$onPostMessage;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lo/getRootAlpha;-><init>(Ljava/lang/Object;Lo/setPageMargin;Lo/getRootAlpha$onPostMessage;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    return-object p0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final onPostMessage()Lo/getRootAlpha;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getRootAlpha<",
            "TT;>;"
        }
    .end annotation

    return-object p0
.end method
