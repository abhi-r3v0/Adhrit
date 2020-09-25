.class final Lo/Foreground$4$3$onPostMessage;
.super Lo/OneLinkHttpTask$onNavigationEvent;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Foreground$4$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/isEnableLog;

.field private extraCallback:Lo/OaidClient$Info;

.field private onMessageChannelReady:Lo/getReferrer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getReferrer<",
            "*[B>;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Lo/isLogsDisabledCompletely;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isLogsDisabledCompletely<",
            "*>;"
        }
    .end annotation
.end field

.field private onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 109
    invoke-direct {p0}, Lo/OneLinkHttpTask$onNavigationEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/OneLinkHttpTask;
    .locals 9

    .line 154
    iget-object v0, p0, Lo/Foreground$4$3$onPostMessage;->extraCallback:Lo/OaidClient$Info;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transportContext"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    :cond_0
    iget-object v0, p0, Lo/Foreground$4$3$onPostMessage;->onPostMessage:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transportName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    :cond_1
    iget-object v0, p0, Lo/Foreground$4$3$onPostMessage;->onNavigationEvent:Lo/isLogsDisabledCompletely;

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    :cond_2
    iget-object v0, p0, Lo/Foreground$4$3$onPostMessage;->onMessageChannelReady:Lo/getReferrer;

    if-nez v0, :cond_3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transformer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    :cond_3
    iget-object v0, p0, Lo/Foreground$4$3$onPostMessage;->ICustomTabsCallback:Lo/isEnableLog;

    if-nez v0, :cond_4

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " encoding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 172
    new-instance v0, Lo/Foreground$4$3;

    iget-object v3, p0, Lo/Foreground$4$3$onPostMessage;->extraCallback:Lo/OaidClient$Info;

    iget-object v4, p0, Lo/Foreground$4$3$onPostMessage;->onPostMessage:Ljava/lang/String;

    iget-object v5, p0, Lo/Foreground$4$3$onPostMessage;->onNavigationEvent:Lo/isLogsDisabledCompletely;

    iget-object v6, p0, Lo/Foreground$4$3$onPostMessage;->onMessageChannelReady:Lo/getReferrer;

    iget-object v7, p0, Lo/Foreground$4$3$onPostMessage;->ICustomTabsCallback:Lo/isEnableLog;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lo/Foreground$4$3;-><init>(Lo/OaidClient$Info;Ljava/lang/String;Lo/isLogsDisabledCompletely;Lo/getReferrer;Lo/isEnableLog;B)V

    return-object v0

    .line 170
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/OneLinkHttpTask$onNavigationEvent;
    .locals 1

    if-eqz p1, :cond_0

    .line 124
    iput-object p1, p0, Lo/Foreground$4$3$onPostMessage;->onPostMessage:Ljava/lang/String;

    return-object p0

    .line 122
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null transportName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final extraCallback(Lo/isLogsDisabledCompletely;)Lo/OneLinkHttpTask$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/isLogsDisabledCompletely<",
            "*>;)",
            "Lo/OneLinkHttpTask$onNavigationEvent;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 132
    iput-object p1, p0, Lo/Foreground$4$3$onPostMessage;->onNavigationEvent:Lo/isLogsDisabledCompletely;

    return-object p0

    .line 130
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null event"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onNavigationEvent(Lo/OaidClient$Info;)Lo/OneLinkHttpTask$onNavigationEvent;
    .locals 1

    if-eqz p1, :cond_0

    .line 116
    iput-object p1, p0, Lo/Foreground$4$3$onPostMessage;->extraCallback:Lo/OaidClient$Info;

    return-object p0

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null transportContext"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final onNavigationEvent(Lo/getReferrer;)Lo/OneLinkHttpTask$onNavigationEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getReferrer<",
            "*[B>;)",
            "Lo/OneLinkHttpTask$onNavigationEvent;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 140
    iput-object p1, p0, Lo/Foreground$4$3$onPostMessage;->onMessageChannelReady:Lo/getReferrer;

    return-object p0

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null transformer"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final onPostMessage(Lo/isEnableLog;)Lo/OneLinkHttpTask$onNavigationEvent;
    .locals 1

    if-eqz p1, :cond_0

    .line 148
    iput-object p1, p0, Lo/Foreground$4$3$onPostMessage;->ICustomTabsCallback:Lo/isEnableLog;

    return-object p0

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null encoding"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
