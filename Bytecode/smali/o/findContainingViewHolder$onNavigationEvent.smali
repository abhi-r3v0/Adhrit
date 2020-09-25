.class final Lo/findContainingViewHolder$onNavigationEvent;
.super Lo/isUserInitiated;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findContainingViewHolder;->onPostMessage(Ljava/lang/String;ZLo/getServerTime;Lo/setSessionPersistenceKey;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\"\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u00072\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nH\u0086@"
    }
    d2 = {
        "spinAndStopAt",
        "",
        "number",
        "",
        "setResult",
        "",
        "onComplete",
        "Lkotlin/Function0;",
        "",
        "continuation",
        "Lkotlin/coroutines/Continuation;"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field synthetic ICustomTabsCallback:Ljava/lang/Object;

.field ICustomTabsCallback$Stub:Ljava/lang/Object;

.field ICustomTabsCallback$Stub$Proxy:Ljava/lang/Object;

.field asBinder:Ljava/lang/Object;

.field asInterface:Ljava/lang/Object;

.field extraCallback:Ljava/lang/Object;

.field getInterfaceDescriptor:I

.field newSession:Z

.field onMessageChannelReady:Ljava/lang/Object;

.field onNavigationEvent:I

.field onPostMessage:Ljava/lang/Object;

.field onRelationshipValidationResult:Ljava/lang/Object;

.field onTransact:Ljava/lang/Object;

.field private synthetic warmup:Lo/findContainingViewHolder;


# direct methods
.method constructor <init>(Lo/findContainingViewHolder;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/findContainingViewHolder$onNavigationEvent;->warmup:Lo/findContainingViewHolder;

    invoke-direct {p0, p2}, Lo/isUserInitiated;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iput-object p1, p0, Lo/findContainingViewHolder$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/Object;

    iget p1, p0, Lo/findContainingViewHolder$onNavigationEvent;->onNavigationEvent:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lo/findContainingViewHolder$onNavigationEvent;->onNavigationEvent:I

    iget-object p1, p0, Lo/findContainingViewHolder$onNavigationEvent;->warmup:Lo/findContainingViewHolder;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v0, p0}, Lo/findContainingViewHolder;->onPostMessage(Ljava/lang/String;ZLo/getServerTime;Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
