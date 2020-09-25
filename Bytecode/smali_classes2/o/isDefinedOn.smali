.class public final Lo/isDefinedOn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/currentHashLength;


# instance fields
.field private ICustomTabsCallback:Ljava/lang/reflect/Method;

.field private asInterface:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lo/startChild;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Ljava/lang/String;

.field public volatile onMessageChannelReady:Lo/currentHashLength;

.field private onNavigationEvent:Lo/ensureRange;

.field private onPostMessage:Ljava/lang/Boolean;

.field private final onRelationshipValidationResult:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Queue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Lo/startChild;",
            ">;Z)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lo/isDefinedOn;->extraCallback:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lo/isDefinedOn;->asInterface:Ljava/util/Queue;

    .line 61
    iput-boolean p3, p0, Lo/isDefinedOn;->onRelationshipValidationResult:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lo/isDefinedOn;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 2

    .line 2333
    iget-object v0, p0, Lo/isDefinedOn;->onMessageChannelReady:Lo/currentHashLength;

    if-eqz v0, :cond_0

    .line 2334
    iget-object v0, p0, Lo/isDefinedOn;->onMessageChannelReady:Lo/currentHashLength;

    goto :goto_0

    .line 2336
    :cond_0
    iget-boolean v0, p0, Lo/isDefinedOn;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_1

    .line 2337
    sget-object v0, Lo/finishHashing;->onPostMessage:Lo/finishHashing;

    goto :goto_0

    .line 2344
    :cond_1
    iget-object v0, p0, Lo/isDefinedOn;->onNavigationEvent:Lo/ensureRange;

    if-nez v0, :cond_2

    .line 2345
    new-instance v0, Lo/ensureRange;

    iget-object v1, p0, Lo/isDefinedOn;->asInterface:Ljava/util/Queue;

    invoke-direct {v0, p0, v1}, Lo/ensureRange;-><init>(Lo/isDefinedOn;Ljava/util/Queue;)V

    iput-object v0, p0, Lo/isDefinedOn;->onNavigationEvent:Lo/ensureRange;

    .line 2347
    :cond_2
    iget-object v0, p0, Lo/isDefinedOn;->onNavigationEvent:Lo/ensureRange;

    .line 121
    :goto_0
    invoke-interface {v0, p1}, Lo/currentHashLength;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 312
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 315
    :cond_1
    check-cast p1, Lo/isDefinedOn;

    .line 317
    iget-object v2, p0, Lo/isDefinedOn;->extraCallback:Ljava/lang/String;

    iget-object p1, p1, Lo/isDefinedOn;->extraCallback:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public final extraCallback()Z
    .locals 5

    .line 359
    iget-object v0, p0, Lo/isDefinedOn;->onPostMessage:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 360
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 363
    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/isDefinedOn;->onMessageChannelReady:Lo/currentHashLength;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "log"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Lo/endChild;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lo/isDefinedOn;->ICustomTabsCallback:Ljava/lang/reflect/Method;

    .line 364
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v0, p0, Lo/isDefinedOn;->onPostMessage:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lo/isDefinedOn;->onPostMessage:Ljava/lang/Boolean;

    .line 368
    :goto_0
    iget-object v0, p0, Lo/isDefinedOn;->onPostMessage:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 325
    iget-object v0, p0, Lo/isDefinedOn;->extraCallback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 3333
    iget-object v0, p0, Lo/isDefinedOn;->onMessageChannelReady:Lo/currentHashLength;

    if-eqz v0, :cond_0

    .line 3334
    iget-object v0, p0, Lo/isDefinedOn;->onMessageChannelReady:Lo/currentHashLength;

    goto :goto_0

    .line 3336
    :cond_0
    iget-boolean v0, p0, Lo/isDefinedOn;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_1

    .line 3337
    sget-object v0, Lo/finishHashing;->onPostMessage:Lo/finishHashing;

    goto :goto_0

    .line 3344
    :cond_1
    iget-object v0, p0, Lo/isDefinedOn;->onNavigationEvent:Lo/ensureRange;

    if-nez v0, :cond_2

    .line 3345
    new-instance v0, Lo/ensureRange;

    iget-object v1, p0, Lo/isDefinedOn;->asInterface:Ljava/util/Queue;

    invoke-direct {v0, p0, v1}, Lo/ensureRange;-><init>(Lo/isDefinedOn;Ljava/util/Queue;)V

    iput-object v0, p0, Lo/isDefinedOn;->onNavigationEvent:Lo/ensureRange;

    .line 3347
    :cond_2
    iget-object v0, p0, Lo/isDefinedOn;->onNavigationEvent:Lo/ensureRange;

    .line 281
    :goto_0
    invoke-interface {v0, p1, p2}, Lo/currentHashLength;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onPostMessage(Lo/endChild;)V
    .locals 4

    .line 372
    invoke-virtual {p0}, Lo/isDefinedOn;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    :try_start_0
    iget-object v0, p0, Lo/isDefinedOn;->ICustomTabsCallback:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lo/isDefinedOn;->onMessageChannelReady:Lo/currentHashLength;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public final onPostMessage()Z
    .locals 2

    .line 1333
    iget-object v0, p0, Lo/isDefinedOn;->onMessageChannelReady:Lo/currentHashLength;

    if-eqz v0, :cond_0

    .line 1334
    iget-object v0, p0, Lo/isDefinedOn;->onMessageChannelReady:Lo/currentHashLength;

    goto :goto_0

    .line 1336
    :cond_0
    iget-boolean v0, p0, Lo/isDefinedOn;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_1

    .line 1337
    sget-object v0, Lo/finishHashing;->onPostMessage:Lo/finishHashing;

    goto :goto_0

    .line 1344
    :cond_1
    iget-object v0, p0, Lo/isDefinedOn;->onNavigationEvent:Lo/ensureRange;

    if-nez v0, :cond_2

    .line 1345
    new-instance v0, Lo/ensureRange;

    iget-object v1, p0, Lo/isDefinedOn;->asInterface:Ljava/util/Queue;

    invoke-direct {v0, p0, v1}, Lo/ensureRange;-><init>(Lo/isDefinedOn;Ljava/util/Queue;)V

    iput-object v0, p0, Lo/isDefinedOn;->onNavigationEvent:Lo/ensureRange;

    .line 1347
    :cond_2
    iget-object v0, p0, Lo/isDefinedOn;->onNavigationEvent:Lo/ensureRange;

    .line 117
    :goto_0
    invoke-interface {v0}, Lo/currentHashLength;->onPostMessage()Z

    move-result v0

    return v0
.end method
