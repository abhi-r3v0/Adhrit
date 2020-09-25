.class public final Lo/removeListens;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/onDataUpdate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/onDataUpdate<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final onPostMessage:Lo/onDataPush$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/onDataPush$onNavigationEvent<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lo/onDataPush$onNavigationEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onDataPush$onNavigationEvent<",
            "TT;>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lo/removeListens;->onPostMessage:Lo/onDataPush$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lo/removeListens;->onPostMessage:Lo/onDataPush$onNavigationEvent;

    invoke-static {v0, p1}, Lo/onDataPush;->extraCallback(Lo/onDataPush$onNavigationEvent;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onPostMessage()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lo/removeListens;->onPostMessage:Lo/onDataPush$onNavigationEvent;

    invoke-static {v0}, Lo/onDataPush;->ICustomTabsCallback(Lo/onDataPush$onNavigationEvent;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
