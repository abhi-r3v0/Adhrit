.class public final Lo/decodeStream;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/EligibilityPayload$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lo/calculateConfig<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lo/EligibilityPayload$onNavigationEvent<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/getInBitmapString;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Lo/EligibilityPayload$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/EligibilityPayload$onNavigationEvent<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/EligibilityPayload$onNavigationEvent;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/EligibilityPayload$onNavigationEvent<",
            "+TT;>;",
            "Ljava/util/List<",
            "Lo/getInBitmapString;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lo/decodeStream;->onNavigationEvent:Lo/EligibilityPayload$onNavigationEvent;

    .line 41
    iput-object p2, p0, Lo/decodeStream;->extraCallback:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Landroid/net/Uri;Ljava/io/InputStream;)Lo/calculateConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lo/decodeStream;->onNavigationEvent:Lo/EligibilityPayload$onNavigationEvent;

    invoke-interface {v0, p1, p2}, Lo/EligibilityPayload$onNavigationEvent;->onPostMessage(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/calculateConfig;

    .line 47
    iget-object p2, p0, Lo/decodeStream;->extraCallback:Ljava/util/List;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lo/decodeStream;->extraCallback:Ljava/util/List;

    invoke-interface {p1, p2}, Lo/calculateConfig;->onNavigationEvent(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/calculateConfig;

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final synthetic onPostMessage(Landroid/net/Uri;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2}, Lo/decodeStream;->onMessageChannelReady(Landroid/net/Uri;Ljava/io/InputStream;)Lo/calculateConfig;

    move-result-object p1

    return-object p1
.end method
