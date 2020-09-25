.class public final Lo/onContextItemSelected$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/call;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onContextItemSelected;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onPostMessage"
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentListAdapter$Companion;",
        "",
        "()V",
        "ITEM_HEADER",
        "",
        "ITEM_INSTRUMENT",
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
.field private final ICustomTabsCallback:Lo/CreateOneLinkHttpTask$ResponseListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/CreateOneLinkHttpTask$ResponseListener;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/onContextItemSelected$onPostMessage;->ICustomTabsCallback:Lo/CreateOneLinkHttpTask$ResponseListener;

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 2000
    iget-object v0, p0, Lo/onContextItemSelected$onPostMessage;->ICustomTabsCallback:Lo/CreateOneLinkHttpTask$ResponseListener;

    check-cast p1, Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;

    .line 3000
    invoke-virtual {v0, p1}, Lo/CreateOneLinkHttpTask$ResponseListener;->onNavigationEvent(Lo/CreateOneLinkHttpTask$ResponseListener$ICustomTabsCallback;)Lo/CreateOneLinkHttpTask$ResponseListener$onPostMessage;

    move-result-object p1

    return-object p1
.end method
