.class public abstract Lo/Foreground$4$4$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Foreground$4$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "extraCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract ICustomTabsCallback(J)Lo/Foreground$4$4$extraCallback;
.end method

.method public abstract extraCallback(J)Lo/Foreground$4$4$extraCallback;
.end method

.method protected abstract extraCallback(Ljava/util/Map;)Lo/Foreground$4$4$extraCallback;
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
.end method

.method public abstract extraCallback(Lo/Foreground$Listener;)Lo/Foreground$4$4$extraCallback;
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Lo/Foreground$4$4$extraCallback;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lo/Foreground$4$4$extraCallback;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method protected abstract onNavigationEvent()Ljava/util/Map;
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

.method public final onNavigationEvent(Ljava/lang/String;I)Lo/Foreground$4$4$extraCallback;
    .locals 1

    .line 108
    invoke-virtual {p0}, Lo/Foreground$4$4$extraCallback;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public abstract onPostMessage(Ljava/lang/Integer;)Lo/Foreground$4$4$extraCallback;
.end method

.method public abstract onPostMessage(Ljava/lang/String;)Lo/Foreground$4$4$extraCallback;
.end method

.method public final onPostMessage(Ljava/lang/String;J)Lo/Foreground$4$4$extraCallback;
    .locals 1

    .line 103
    invoke-virtual {p0}, Lo/Foreground$4$4$extraCallback;->onNavigationEvent()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public abstract onPostMessage()Lo/Foreground$4$4;
.end method
