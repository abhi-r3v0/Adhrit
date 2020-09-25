.class public final Lo/onCreate;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:Z

.field public onMessageChannelReady:Z

.field public onNavigationEvent:Z

.field public onPostMessage:Z


# direct methods
.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-boolean p1, p0, Lo/onCreate;->onPostMessage:Z

    .line 34
    iput-boolean p2, p0, Lo/onCreate;->onNavigationEvent:Z

    .line 35
    iput-boolean p3, p0, Lo/onCreate;->onMessageChannelReady:Z

    .line 36
    iput-boolean p4, p0, Lo/onCreate;->ICustomTabsCallback:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 80
    :cond_0
    instance-of v1, p1, Lo/onCreate;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 83
    :cond_1
    check-cast p1, Lo/onCreate;

    .line 84
    iget-boolean v1, p0, Lo/onCreate;->onPostMessage:Z

    iget-boolean v3, p1, Lo/onCreate;->onPostMessage:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lo/onCreate;->onNavigationEvent:Z

    iget-boolean v3, p1, Lo/onCreate;->onNavigationEvent:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lo/onCreate;->onMessageChannelReady:Z

    iget-boolean v3, p1, Lo/onCreate;->onMessageChannelReady:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lo/onCreate;->ICustomTabsCallback:Z

    iget-boolean p1, p1, Lo/onCreate;->ICustomTabsCallback:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    .line 93
    iget-boolean v0, p0, Lo/onCreate;->onPostMessage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 94
    :goto_0
    iget-boolean v1, p0, Lo/onCreate;->onNavigationEvent:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x10

    .line 95
    :cond_1
    iget-boolean v1, p0, Lo/onCreate;->onMessageChannelReady:Z

    if-eqz v1, :cond_2

    add-int/lit16 v0, v0, 0x100

    .line 96
    :cond_2
    iget-boolean v1, p0, Lo/onCreate;->ICustomTabsCallback:Z

    if-eqz v1, :cond_3

    add-int/lit16 v0, v0, 0x1000

    :cond_3
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 103
    iget-boolean v1, p0, Lo/onCreate;->onPostMessage:Z

    .line 104
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lo/onCreate;->onNavigationEvent:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lo/onCreate;->onMessageChannelReady:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lo/onCreate;->ICustomTabsCallback:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "[ Connected=%b Validated=%b Metered=%b NotRoaming=%b ]"

    .line 103
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
