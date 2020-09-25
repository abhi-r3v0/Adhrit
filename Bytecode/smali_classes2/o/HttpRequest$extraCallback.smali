.class final Lo/HttpRequest$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/QueueFile$1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/QueueFile$1<",
        "Lo/HttpRequest$onNavigationEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    check-cast p1, Lo/HttpRequest$onNavigationEvent;

    check-cast p2, Lo/QueueFile$Element;

    invoke-virtual {p0, p1, p2}, Lo/HttpRequest$extraCallback;->encode(Lo/HttpRequest$onNavigationEvent;Lo/QueueFile$Element;)V

    return-void
.end method

.method public final encode(Lo/HttpRequest$onNavigationEvent;Lo/QueueFile$Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/firebase/encoders/EncodingException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p1}, Lo/HttpRequest$onNavigationEvent;->getFirelogAnalyticsEvent()Lo/HttpRequest;

    move-result-object p1

    const-string v0, "messaging_client_event"

    .line 4
    invoke-interface {p2, v0, p1}, Lo/QueueFile$Element;->add(Ljava/lang/String;Ljava/lang/Object;)Lo/QueueFile$Element;

    return-void
.end method
