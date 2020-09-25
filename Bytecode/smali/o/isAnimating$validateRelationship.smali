.class final Lo/isAnimating$validateRelationship;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isAnimating;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/isAnimating;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/isAnimating;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lo/isAnimating$validateRelationship;->onNavigationEvent:Lo/isAnimating;

    iput-object p2, p0, Lo/isAnimating$validateRelationship;->onPostMessage:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 7

    .line 1294
    iget-object v0, p0, Lo/isAnimating$validateRelationship;->onNavigationEvent:Lo/isAnimating;

    invoke-static {v0}, Lo/isAnimating;->asInterface(Lo/isAnimating;)Lo/requestLayout;

    move-result-object v0

    iget-object v1, p0, Lo/isAnimating$validateRelationship;->onPostMessage:Ljava/lang/String;

    const-string v2, "id"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2132
    iget-object v2, v0, Lo/requestLayout;->asBinder:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 2133
    check-cast v2, Ljava/lang/Iterable;

    .line 2155
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_2

    check-cast v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;

    .line 3022
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/win/network/WinItem;->extraCallback:Ljava/lang/String;

    .line 2134
    invoke-static {v5, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2135
    iget-object v1, v0, Lo/requestLayout;->ICustomTabsCallback$Stub:Ljava/lang/String;

    if-eqz v1, :cond_4

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    if-ne v3, v2, :cond_4

    iget-object v0, v0, Lo/requestLayout;->ICustomTabsCallback$Stub:Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_4

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v6

    goto :goto_0

    .line 2441
    :cond_2
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Index overflow has happened."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0

    :cond_3
    const/4 v4, -0x1

    .line 1295
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/isAnimating$validateRelationship;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "win-scroll"

    invoke-static {v1, v0}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v4, :cond_5

    .line 1297
    iget-object v0, p0, Lo/isAnimating$validateRelationship;->onNavigationEvent:Lo/isAnimating;

    invoke-static {v0, v4}, Lo/isAnimating;->onPostMessage(Lo/isAnimating;I)V

    .line 60
    :cond_5
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
