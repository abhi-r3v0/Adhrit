.class final Lo/Foreground$4$3;
.super Lo/OneLinkHttpTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Foreground$4$3$onPostMessage;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/isLogsDisabledCompletely;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isLogsDisabledCompletely<",
            "*>;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/getReferrer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrer<",
            "*[B>;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/OaidClient$Info;

.field private final onNavigationEvent:Lo/isEnableLog;

.field private final onPostMessage:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lo/OaidClient$Info;Ljava/lang/String;Lo/isLogsDisabledCompletely;Lo/getReferrer;Lo/isEnableLog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/OaidClient$Info;",
            "Ljava/lang/String;",
            "Lo/isLogsDisabledCompletely<",
            "*>;",
            "Lo/getReferrer<",
            "*[B>;",
            "Lo/isEnableLog;",
            ")V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Lo/OneLinkHttpTask;-><init>()V

    .line 28
    iput-object p1, p0, Lo/Foreground$4$3;->onMessageChannelReady:Lo/OaidClient$Info;

    .line 29
    iput-object p2, p0, Lo/Foreground$4$3;->onPostMessage:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lo/Foreground$4$3;->ICustomTabsCallback:Lo/isLogsDisabledCompletely;

    .line 31
    iput-object p4, p0, Lo/Foreground$4$3;->extraCallback:Lo/getReferrer;

    .line 32
    iput-object p5, p0, Lo/Foreground$4$3;->onNavigationEvent:Lo/isEnableLog;

    return-void
.end method

.method synthetic constructor <init>(Lo/OaidClient$Info;Ljava/lang/String;Lo/isLogsDisabledCompletely;Lo/getReferrer;Lo/isEnableLog;B)V
    .locals 0

    .line 10
    invoke-direct/range {p0 .. p5}, Lo/Foreground$4$3;-><init>(Lo/OaidClient$Info;Ljava/lang/String;Lo/isLogsDisabledCompletely;Lo/getReferrer;Lo/isEnableLog;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/OaidClient$Info;
    .locals 1

    .line 37
    iget-object v0, p0, Lo/Foreground$4$3;->onMessageChannelReady:Lo/OaidClient$Info;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 76
    :cond_0
    instance-of v1, p1, Lo/OneLinkHttpTask;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 77
    check-cast p1, Lo/OneLinkHttpTask;

    .line 78
    iget-object v1, p0, Lo/Foreground$4$3;->onMessageChannelReady:Lo/OaidClient$Info;

    invoke-virtual {p1}, Lo/OneLinkHttpTask;->ICustomTabsCallback()Lo/OaidClient$Info;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/Foreground$4$3;->onPostMessage:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lo/OneLinkHttpTask;->onPostMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/Foreground$4$3;->ICustomTabsCallback:Lo/isLogsDisabledCompletely;

    .line 80
    invoke-virtual {p1}, Lo/OneLinkHttpTask;->extraCallback()Lo/isLogsDisabledCompletely;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/Foreground$4$3;->extraCallback:Lo/getReferrer;

    .line 81
    invoke-virtual {p1}, Lo/OneLinkHttpTask;->onMessageChannelReady()Lo/getReferrer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/Foreground$4$3;->onNavigationEvent:Lo/isEnableLog;

    .line 82
    invoke-virtual {p1}, Lo/OneLinkHttpTask;->onNavigationEvent()Lo/isEnableLog;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method final extraCallback()Lo/isLogsDisabledCompletely;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/isLogsDisabledCompletely<",
            "*>;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lo/Foreground$4$3;->ICustomTabsCallback:Lo/isLogsDisabledCompletely;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    .line 91
    iget-object v0, p0, Lo/Foreground$4$3;->onMessageChannelReady:Lo/OaidClient$Info;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    .line 93
    iget-object v2, p0, Lo/Foreground$4$3;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 95
    iget-object v2, p0, Lo/Foreground$4$3;->ICustomTabsCallback:Lo/isLogsDisabledCompletely;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 97
    iget-object v2, p0, Lo/Foreground$4$3;->extraCallback:Lo/getReferrer;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    .line 99
    iget-object v1, p0, Lo/Foreground$4$3;->onNavigationEvent:Lo/isEnableLog;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method final onMessageChannelReady()Lo/getReferrer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/getReferrer<",
            "*[B>;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lo/Foreground$4$3;->extraCallback:Lo/getReferrer;

    return-object v0
.end method

.method public final onNavigationEvent()Lo/isEnableLog;
    .locals 1

    .line 57
    iget-object v0, p0, Lo/Foreground$4$3;->onNavigationEvent:Lo/isEnableLog;

    return-object v0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/Foreground$4$3;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SendRequest{transportContext="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo/Foreground$4$3;->onMessageChannelReady:Lo/OaidClient$Info;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transportName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Foreground$4$3;->onPostMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Foreground$4$3;->ICustomTabsCallback:Lo/isLogsDisabledCompletely;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transformer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Foreground$4$3;->extraCallback:Lo/getReferrer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", encoding="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo/Foreground$4$3;->onNavigationEvent:Lo/isEnableLog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
