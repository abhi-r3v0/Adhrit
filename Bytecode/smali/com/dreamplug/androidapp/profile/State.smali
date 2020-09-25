.class public final Lcom/dreamplug/androidapp/profile/State;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0087\u0008\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/androidapp/profile/State;",
        "",
        "appState",
        "Lcom/dreamplug/androidapp/profile/AppState;",
        "cards",
        "Lcom/dreamplug/androidapp/profile/Cards;",
        "gating",
        "Lcom/dreamplug/androidapp/profile/Gating;",
        "(Lcom/dreamplug/androidapp/profile/AppState;Lcom/dreamplug/androidapp/profile/Cards;Lcom/dreamplug/androidapp/profile/Gating;)V",
        "getAppState",
        "()Lcom/dreamplug/androidapp/profile/AppState;",
        "getCards",
        "()Lcom/dreamplug/androidapp/profile/Cards;",
        "getGating",
        "()Lcom/dreamplug/androidapp/profile/Gating;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final appState:Lcom/dreamplug/androidapp/profile/AppState;
    .annotation runtime Lo/computeStringSize;
        extraCallback = "app_state"
    .end annotation
.end field

.field private final cards:Lcom/dreamplug/androidapp/profile/Cards;

.field private final gating:Lcom/dreamplug/androidapp/profile/Gating;


# direct methods
.method public constructor <init>(Lcom/dreamplug/androidapp/profile/AppState;Lcom/dreamplug/androidapp/profile/Cards;Lcom/dreamplug/androidapp/profile/Gating;)V
    .locals 1

    const-string v0, "appState"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cards"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gating"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dreamplug/androidapp/profile/State;->appState:Lcom/dreamplug/androidapp/profile/AppState;

    iput-object p2, p0, Lcom/dreamplug/androidapp/profile/State;->cards:Lcom/dreamplug/androidapp/profile/Cards;

    iput-object p3, p0, Lcom/dreamplug/androidapp/profile/State;->gating:Lcom/dreamplug/androidapp/profile/Gating;

    return-void
.end method

.method public static synthetic copy$default(Lcom/dreamplug/androidapp/profile/State;Lcom/dreamplug/androidapp/profile/AppState;Lcom/dreamplug/androidapp/profile/Cards;Lcom/dreamplug/androidapp/profile/Gating;ILjava/lang/Object;)Lcom/dreamplug/androidapp/profile/State;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/dreamplug/androidapp/profile/State;->appState:Lcom/dreamplug/androidapp/profile/AppState;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/dreamplug/androidapp/profile/State;->cards:Lcom/dreamplug/androidapp/profile/Cards;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/dreamplug/androidapp/profile/State;->gating:Lcom/dreamplug/androidapp/profile/Gating;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/dreamplug/androidapp/profile/State;->copy(Lcom/dreamplug/androidapp/profile/AppState;Lcom/dreamplug/androidapp/profile/Cards;Lcom/dreamplug/androidapp/profile/Gating;)Lcom/dreamplug/androidapp/profile/State;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/dreamplug/androidapp/profile/AppState;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/profile/State;->appState:Lcom/dreamplug/androidapp/profile/AppState;

    return-object v0
.end method

.method public final component2()Lcom/dreamplug/androidapp/profile/Cards;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/profile/State;->cards:Lcom/dreamplug/androidapp/profile/Cards;

    return-object v0
.end method

.method public final component3()Lcom/dreamplug/androidapp/profile/Gating;
    .locals 1

    iget-object v0, p0, Lcom/dreamplug/androidapp/profile/State;->gating:Lcom/dreamplug/androidapp/profile/Gating;

    return-object v0
.end method

.method public final copy(Lcom/dreamplug/androidapp/profile/AppState;Lcom/dreamplug/androidapp/profile/Cards;Lcom/dreamplug/androidapp/profile/Gating;)Lcom/dreamplug/androidapp/profile/State;
    .locals 1

    const-string v0, "appState"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cards"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gating"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/dreamplug/androidapp/profile/State;

    invoke-direct {v0, p1, p2, p3}, Lcom/dreamplug/androidapp/profile/State;-><init>(Lcom/dreamplug/androidapp/profile/AppState;Lcom/dreamplug/androidapp/profile/Cards;Lcom/dreamplug/androidapp/profile/Gating;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/dreamplug/androidapp/profile/State;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dreamplug/androidapp/profile/State;

    iget-object v0, p0, Lcom/dreamplug/androidapp/profile/State;->appState:Lcom/dreamplug/androidapp/profile/AppState;

    iget-object v1, p1, Lcom/dreamplug/androidapp/profile/State;->appState:Lcom/dreamplug/androidapp/profile/AppState;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/profile/State;->cards:Lcom/dreamplug/androidapp/profile/Cards;

    iget-object v1, p1, Lcom/dreamplug/androidapp/profile/State;->cards:Lcom/dreamplug/androidapp/profile/Cards;

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dreamplug/androidapp/profile/State;->gating:Lcom/dreamplug/androidapp/profile/Gating;

    iget-object p1, p1, Lcom/dreamplug/androidapp/profile/State;->gating:Lcom/dreamplug/androidapp/profile/Gating;

    invoke-static {v0, p1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAppState()Lcom/dreamplug/androidapp/profile/AppState;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/dreamplug/androidapp/profile/State;->appState:Lcom/dreamplug/androidapp/profile/AppState;

    return-object v0
.end method

.method public final getCards()Lcom/dreamplug/androidapp/profile/Cards;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/dreamplug/androidapp/profile/State;->cards:Lcom/dreamplug/androidapp/profile/Cards;

    return-object v0
.end method

.method public final getGating()Lcom/dreamplug/androidapp/profile/Gating;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/dreamplug/androidapp/profile/State;->gating:Lcom/dreamplug/androidapp/profile/Gating;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/dreamplug/androidapp/profile/State;->appState:Lcom/dreamplug/androidapp/profile/AppState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/profile/State;->cards:Lcom/dreamplug/androidapp/profile/Cards;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/dreamplug/androidapp/profile/State;->gating:Lcom/dreamplug/androidapp/profile/Gating;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "State(appState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/dreamplug/androidapp/profile/State;->appState:Lcom/dreamplug/androidapp/profile/AppState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cards="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/profile/State;->cards:Lcom/dreamplug/androidapp/profile/Cards;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", gating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/dreamplug/androidapp/profile/State;->gating:Lcom/dreamplug/androidapp/profile/Gating;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
