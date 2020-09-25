.class public abstract Lo/Foreground$4$4;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Foreground$4$4$extraCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback()Lo/Foreground$Listener;
.end method

.method public final ICustomTabsCallback$Stub()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    invoke-virtual {p0}, Lo/Foreground$4$4;->asBinder()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected abstract asBinder()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract extraCallback()J
.end method

.method public final extraCallback(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lo/Foreground$4$4;->asBinder()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public abstract onMessageChannelReady()Ljava/lang/String;
.end method

.method public final onNavigationEvent(Ljava/lang/String;)I
    .locals 1

    .line 53
    invoke-virtual {p0}, Lo/Foreground$4$4;->asBinder()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 54
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    return p1
.end method

.method public abstract onNavigationEvent()J
.end method

.method public final onPostMessage(Ljava/lang/String;)J
    .locals 2

    .line 58
    invoke-virtual {p0}, Lo/Foreground$4$4;->asBinder()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 59
    :cond_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract onPostMessage()Ljava/lang/Integer;
.end method

.method public final onRelationshipValidationResult()Lo/Foreground$4$4$extraCallback;
    .locals 3

    .line 68
    new-instance v0, Lo/Foreground$4$3$3$onPostMessage;

    invoke-direct {v0}, Lo/Foreground$4$3$3$onPostMessage;-><init>()V

    .line 69
    invoke-virtual {p0}, Lo/Foreground$4$4;->onMessageChannelReady()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1130
    iput-object v1, v0, Lo/Foreground$4$3$3$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lo/Foreground$4$4;->onPostMessage()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Foreground$4$4$extraCallback;->onPostMessage(Ljava/lang/Integer;)Lo/Foreground$4$4$extraCallback;

    move-result-object v0

    .line 71
    invoke-virtual {p0}, Lo/Foreground$4$4;->ICustomTabsCallback()Lo/Foreground$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/Foreground$4$4$extraCallback;->extraCallback(Lo/Foreground$Listener;)Lo/Foreground$4$4$extraCallback;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Lo/Foreground$4$4;->extraCallback()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/Foreground$4$4$extraCallback;->extraCallback(J)Lo/Foreground$4$4$extraCallback;

    move-result-object v0

    .line 73
    invoke-virtual {p0}, Lo/Foreground$4$4;->onNavigationEvent()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/Foreground$4$4$extraCallback;->ICustomTabsCallback(J)Lo/Foreground$4$4$extraCallback;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    .line 74
    invoke-virtual {p0}, Lo/Foreground$4$4;->asBinder()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lo/Foreground$4$4$extraCallback;->extraCallback(Ljava/util/Map;)Lo/Foreground$4$4$extraCallback;

    move-result-object v0

    return-object v0

    .line 1128
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null transportName"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
