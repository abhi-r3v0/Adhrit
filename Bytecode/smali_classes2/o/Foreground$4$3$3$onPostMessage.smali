.class public final Lo/Foreground$4$3$3$onPostMessage;
.super Lo/Foreground$4$4$extraCallback;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Foreground$4$3$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation


# instance fields
.field private ICustomTabsCallback:Ljava/lang/Integer;

.field private extraCallback:Ljava/lang/Long;

.field public onMessageChannelReady:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Lo/Foreground$Listener;

.field private onRelationshipValidationResult:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lo/Foreground$4$4$extraCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(J)Lo/Foreground$4$4$extraCallback;
    .locals 0

    .line 153
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/Foreground$4$3$3$onPostMessage;->onRelationshipValidationResult:Ljava/lang/Long;

    return-object p0
.end method

.method public final extraCallback(J)Lo/Foreground$4$4$extraCallback;
    .locals 0

    .line 148
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lo/Foreground$4$3$3$onPostMessage;->extraCallback:Ljava/lang/Long;

    return-object p0
.end method

.method protected final extraCallback(Ljava/util/Map;)Lo/Foreground$4$4$extraCallback;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/Foreground$4$4$extraCallback;"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lo/Foreground$4$3$3$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    return-object p0
.end method

.method public final extraCallback(Lo/Foreground$Listener;)Lo/Foreground$4$4$extraCallback;
    .locals 1

    if-eqz p1, :cond_0

    .line 143
    iput-object p1, p0, Lo/Foreground$4$3$3$onPostMessage;->onPostMessage:Lo/Foreground$Listener;

    return-object p0

    .line 141
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null encodedPayload"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final onNavigationEvent()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lo/Foreground$4$3$3$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    .line 167
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Property \"autoMetadata\" has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onPostMessage(Ljava/lang/Integer;)Lo/Foreground$4$4$extraCallback;
    .locals 0

    .line 135
    iput-object p1, p0, Lo/Foreground$4$3$3$onPostMessage;->ICustomTabsCallback:Ljava/lang/Integer;

    return-object p0
.end method

.method public final onPostMessage(Ljava/lang/String;)Lo/Foreground$4$4$extraCallback;
    .locals 1

    if-eqz p1, :cond_0

    .line 130
    iput-object p1, p0, Lo/Foreground$4$3$3$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    return-object p0

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null transportName"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onPostMessage()Lo/Foreground$4$4;
    .locals 12

    .line 174
    iget-object v0, p0, Lo/Foreground$4$3$3$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " transportName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    :cond_0
    iget-object v0, p0, Lo/Foreground$4$3$3$onPostMessage;->onPostMessage:Lo/Foreground$Listener;

    if-nez v0, :cond_1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " encodedPayload"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 180
    :cond_1
    iget-object v0, p0, Lo/Foreground$4$3$3$onPostMessage;->extraCallback:Ljava/lang/Long;

    if-nez v0, :cond_2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " eventMillis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 183
    :cond_2
    iget-object v0, p0, Lo/Foreground$4$3$3$onPostMessage;->onRelationshipValidationResult:Ljava/lang/Long;

    if-nez v0, :cond_3

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uptimeMillis"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    :cond_3
    iget-object v0, p0, Lo/Foreground$4$3$3$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    if-nez v0, :cond_4

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " autoMetadata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 192
    new-instance v0, Lo/Foreground$4$3$3;

    iget-object v3, p0, Lo/Foreground$4$3$3$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    iget-object v4, p0, Lo/Foreground$4$3$3$onPostMessage;->ICustomTabsCallback:Ljava/lang/Integer;

    iget-object v5, p0, Lo/Foreground$4$3$3$onPostMessage;->onPostMessage:Lo/Foreground$Listener;

    iget-object v1, p0, Lo/Foreground$4$3$3$onPostMessage;->extraCallback:Ljava/lang/Long;

    .line 196
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    iget-object v1, p0, Lo/Foreground$4$3$3$onPostMessage;->onRelationshipValidationResult:Ljava/lang/Long;

    .line 197
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    iget-object v10, p0, Lo/Foreground$4$3$3$onPostMessage;->onMessageChannelReady:Ljava/util/Map;

    const/4 v11, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v11}, Lo/Foreground$4$3$3;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lo/Foreground$Listener;JJLjava/util/Map;B)V

    return-object v0

    .line 190
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
