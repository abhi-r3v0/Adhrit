.class public abstract Lo/onPreExecute;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onNavigationEvent(Ljava/lang/Object;)Lo/onPreExecute;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lo/onPreExecute<",
            "TT;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lo/dU;

    invoke-static {p0}, Lo/dq;->onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, p0}, Lo/dU;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static onPostMessage()Lo/onPreExecute;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lo/onPreExecute<",
            "TT;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lo/dn;->ICustomTabsCallback:Lo/dn;

    return-object v0
.end method


# virtual methods
.method public abstract extraCallback()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract onNavigationEvent()Z
.end method
