.class public final Lo/aQ;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final extraCallback:Landroid/os/Bundle;

.field private onPostMessage:Lo/b$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0, v0}, Lo/aQ;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    iput-object p1, p0, Lo/aQ;->extraCallback:Landroid/os/Bundle;

    .line 5
    invoke-static {}, Lo/b$b;->ICustomTabsCallback()Lo/b$b;

    move-result-object p1

    iput-object p1, p0, Lo/aQ;->onPostMessage:Lo/b$b;

    return-void
.end method

.method private final extraCallback(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 7
    iget-object v0, p0, Lo/aQ;->extraCallback:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private final onMessageChannelReady(Ljava/lang/String;)Lo/aP;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/aP<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 31
    invoke-direct {p0, p1}, Lo/aQ;->extraCallback(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/aQ;->extraCallback:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Integer;

    invoke-static {v0}, Lo/aP;->ICustomTabsCallback(Ljava/lang/Object;)Lo/aP;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 36
    iget-object v1, p0, Lo/aQ;->onPostMessage:Lo/b$b;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 37
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "Metadata key %s contains type other than int: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-virtual {v1, p1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/aP;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/aP<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Lo/aQ;->extraCallback(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/aQ;->extraCallback:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Lo/aP;->ICustomTabsCallback(Ljava/lang/Object;)Lo/aP;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 13
    iget-object v1, p0, Lo/aQ;->onPostMessage:Lo/b$b;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 14
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "Metadata key %s contains type other than boolean: %s"

    .line 15
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-virtual {v1, p1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 17
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/aP;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/aP<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lo/aQ;->extraCallback(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1

    .line 20
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/aQ;->extraCallback:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Float;

    invoke-static {v0}, Lo/aP;->ICustomTabsCallback(Ljava/lang/Object;)Lo/aP;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 23
    iget-object v1, p0, Lo/aQ;->onPostMessage:Lo/b$b;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    .line 24
    invoke-virtual {v0}, Ljava/lang/ClassCastException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, p1

    const-string p1, "Metadata key %s contains type other than float: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 25
    invoke-virtual {v1, p1}, Lo/b$b;->onPostMessage(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/aP;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lo/aP<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1}, Lo/aQ;->onMessageChannelReady(Ljava/lang/String;)Lo/aP;

    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lo/aP;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {p1}, Lo/aP;->onPostMessage()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lo/aP;->onPostMessage(Ljava/lang/Object;)Lo/aP;

    move-result-object p1

    return-object p1

    .line 30
    :cond_0
    invoke-static {}, Lo/aP;->onMessageChannelReady()Lo/aP;

    move-result-object p1

    return-object p1
.end method
