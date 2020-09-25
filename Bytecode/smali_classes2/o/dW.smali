.class public final Lo/dW;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static extraCallback(Ljava/lang/Object;)Lo/onPostExecute;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lo/onPostExecute<",
            "TT;>;"
        }
    .end annotation

    .line 7
    new-instance v0, Lo/dY;

    invoke-direct {v0, p0}, Lo/dY;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static onPostMessage(Lo/onPostExecute;)Lo/onPostExecute;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo/onPostExecute<",
            "TT;>;)",
            "Lo/onPostExecute<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lo/dV;

    if-nez v0, :cond_2

    instance-of v0, p0, Lo/dX;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    instance-of v0, p0, Ljava/io/Serializable;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lo/dX;

    invoke-direct {v0, p0}, Lo/dX;-><init>(Lo/onPostExecute;)V

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Lo/dV;

    invoke-direct {v0, p0}, Lo/dV;-><init>(Lo/onPostExecute;)V

    return-object v0

    :cond_2
    :goto_0
    return-object p0
.end method
