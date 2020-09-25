.class public abstract Lo/pruneCache;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract extraCallback()Ljava/lang/String;
.end method

.method public abstract onPostMessage(Lo/reverseIterator;Lo/deleteTrackedQuery;)Lo/resetPreviouslyActiveTrackedQueries;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<RequestT:",
            "Ljava/lang/Object;",
            "ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/reverseIterator<",
            "TRequestT;TResponseT;>;",
            "Lo/deleteTrackedQuery;",
            ")",
            "Lo/resetPreviouslyActiveTrackedQueries<",
            "TRequestT;TResponseT;>;"
        }
    .end annotation
.end method
