.class public final Lo/Header$onNavigationEvent;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "onNavigationEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/Header$onNavigationEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field private final ICustomTabsCallback$Stub:I

.field private final ICustomTabsCallback$Stub$Proxy:I

.field private final asBinder:I

.field private final asInterface:I

.field private final extraCallback:I

.field public final onMessageChannelReady:Z

.field private final onNavigationEvent:Z

.field private final onPostMessage:Lo/Header$onMessageChannelReady;

.field private final onRelationshipValidationResult:I

.field private final onTransact:Z


# direct methods
.method public constructor <init>(Lo/p$a;Lo/Header$onMessageChannelReady;I)V
    .locals 4

    .line 2521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2522
    iput-object p2, p0, Lo/Header$onNavigationEvent;->onPostMessage:Lo/Header$onMessageChannelReady;

    .line 2523
    iget-object v0, p1, Lo/p$a;->cancel:Ljava/lang/String;

    invoke-static {v0}, Lo/Header;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/Header$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2524
    invoke-static {p3, v0}, Lo/Header;->extraCallback(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lo/Header$onNavigationEvent;->onNavigationEvent:Z

    .line 2525
    iget-object p3, p2, Lo/InstrumentAction;->IPostMessageService:Ljava/lang/String;

    .line 2526
    invoke-static {p1, p3, v0}, Lo/Header;->ICustomTabsCallback(Lo/p$a;Ljava/lang/String;Z)I

    move-result p3

    iput p3, p0, Lo/Header$onNavigationEvent;->extraCallback:I

    .line 2530
    iget p3, p1, Lo/p$a;->onMessageChannelReady:I

    const/4 v1, 0x1

    and-int/2addr p3, v1

    if-eqz p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iput-boolean p3, p0, Lo/Header$onNavigationEvent;->onTransact:Z

    .line 2531
    iget p3, p1, Lo/p$a;->ICustomTabsService$Stub:I

    iput p3, p0, Lo/Header$onNavigationEvent;->onRelationshipValidationResult:I

    .line 2532
    iget p3, p1, Lo/p$a;->validateRelationship:I

    iput p3, p0, Lo/Header$onNavigationEvent;->asInterface:I

    .line 2533
    iget p3, p1, Lo/p$a;->extraCallback:I

    iput p3, p0, Lo/Header$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:I

    .line 2534
    iget p3, p1, Lo/p$a;->extraCallback:I

    const/4 v2, -0x1

    if-eq p3, v2, :cond_1

    iget p3, p1, Lo/p$a;->extraCallback:I

    iget v3, p2, Lo/Header$onMessageChannelReady;->newSession:I

    if-gt p3, v3, :cond_2

    :cond_1
    iget p3, p1, Lo/p$a;->ICustomTabsService$Stub:I

    if-eq p3, v2, :cond_3

    iget p3, p1, Lo/p$a;->ICustomTabsService$Stub:I

    iget p2, p2, Lo/Header$onMessageChannelReady;->warmup:I

    if-gt p3, p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    iput-boolean v1, p0, Lo/Header$onNavigationEvent;->onMessageChannelReady:Z

    .line 2538
    invoke-static {}, Lo/ThirdPartyAuthorizeRequest;->ICustomTabsCallback()[Ljava/lang/String;

    move-result-object p2

    const p3, 0x7fffffff

    const/4 v1, 0x0

    .line 2541
    :goto_2
    array-length v2, p2

    if-ge v1, v2, :cond_5

    .line 2542
    aget-object v2, p2, v1

    .line 2543
    invoke-static {p1, v2, v0}, Lo/Header;->ICustomTabsCallback(Lo/p$a;Ljava/lang/String;Z)I

    move-result v2

    if-lez v2, :cond_4

    move p3, v1

    move v0, v2

    goto :goto_3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2551
    :cond_5
    :goto_3
    iput p3, p0, Lo/Header$onNavigationEvent;->ICustomTabsCallback$Stub:I

    .line 2552
    iput v0, p0, Lo/Header$onNavigationEvent;->asBinder:I

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/Header$onNavigationEvent;)I
    .locals 4

    .line 2564
    iget-boolean v0, p0, Lo/Header$onNavigationEvent;->onNavigationEvent:Z

    iget-boolean v1, p1, Lo/Header$onNavigationEvent;->onNavigationEvent:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v3

    .line 2567
    :cond_1
    iget v0, p0, Lo/Header$onNavigationEvent;->extraCallback:I

    iget v1, p1, Lo/Header$onNavigationEvent;->extraCallback:I

    if-eq v0, v1, :cond_2

    .line 2568
    invoke-static {v0, v1}, Lo/Header;->onNavigationEvent(II)I

    move-result p1

    return p1

    .line 2570
    :cond_2
    iget-boolean v0, p0, Lo/Header$onNavigationEvent;->onMessageChannelReady:Z

    iget-boolean v1, p1, Lo/Header$onNavigationEvent;->onMessageChannelReady:Z

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v3

    .line 2573
    :cond_4
    iget-object v0, p0, Lo/Header$onNavigationEvent;->onPostMessage:Lo/Header$onMessageChannelReady;

    iget-boolean v0, v0, Lo/Header$onMessageChannelReady;->extraCommand:Z

    if-eqz v0, :cond_6

    .line 2574
    iget v0, p0, Lo/Header$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:I

    iget v1, p1, Lo/Header$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:I

    invoke-static {v0, v1}, Lo/Header;->onMessageChannelReady(II)I

    move-result v0

    if-eqz v0, :cond_6

    if-lez v0, :cond_5

    return v3

    :cond_5
    return v2

    .line 2579
    :cond_6
    iget-boolean v0, p0, Lo/Header$onNavigationEvent;->onTransact:Z

    iget-boolean v1, p1, Lo/Header$onNavigationEvent;->onTransact:Z

    if-eq v0, v1, :cond_8

    if-eqz v0, :cond_7

    return v2

    :cond_7
    return v3

    .line 2582
    :cond_8
    iget v0, p0, Lo/Header$onNavigationEvent;->ICustomTabsCallback$Stub:I

    iget v1, p1, Lo/Header$onNavigationEvent;->ICustomTabsCallback$Stub:I

    if-eq v0, v1, :cond_9

    .line 2583
    invoke-static {v0, v1}, Lo/Header;->onNavigationEvent(II)I

    move-result p1

    neg-int p1, p1

    return p1

    .line 2585
    :cond_9
    iget v0, p0, Lo/Header$onNavigationEvent;->asBinder:I

    iget v1, p1, Lo/Header$onNavigationEvent;->asBinder:I

    if-eq v0, v1, :cond_a

    .line 2586
    invoke-static {v0, v1}, Lo/Header;->onNavigationEvent(II)I

    move-result p1

    return p1

    .line 2590
    :cond_a
    iget-boolean v0, p0, Lo/Header$onNavigationEvent;->onMessageChannelReady:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lo/Header$onNavigationEvent;->onNavigationEvent:Z

    if-eqz v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, -0x1

    .line 2591
    :goto_0
    iget v0, p0, Lo/Header$onNavigationEvent;->onRelationshipValidationResult:I

    iget v1, p1, Lo/Header$onNavigationEvent;->onRelationshipValidationResult:I

    if-eq v0, v1, :cond_c

    .line 2592
    invoke-static {v0, v1}, Lo/Header;->onNavigationEvent(II)I

    move-result p1

    :goto_1
    mul-int v2, v2, p1

    return v2

    .line 2594
    :cond_c
    iget v0, p0, Lo/Header$onNavigationEvent;->asInterface:I

    iget v1, p1, Lo/Header$onNavigationEvent;->asInterface:I

    if-eq v0, v1, :cond_d

    .line 2595
    invoke-static {v0, v1}, Lo/Header;->onNavigationEvent(II)I

    move-result p1

    goto :goto_1

    .line 2597
    :cond_d
    iget-object v0, p0, Lo/Header$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v1, p1, Lo/Header$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v0, v1}, Lo/ThirdPartyAuthorizeRequest;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2599
    iget v0, p0, Lo/Header$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:I

    iget p1, p1, Lo/Header$onNavigationEvent;->ICustomTabsCallback$Stub$Proxy:I

    invoke-static {v0, p1}, Lo/Header;->onNavigationEvent(II)I

    move-result p1

    goto :goto_1

    :cond_e
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2502
    check-cast p1, Lo/Header$onNavigationEvent;

    invoke-virtual {p0, p1}, Lo/Header$onNavigationEvent;->ICustomTabsCallback(Lo/Header$onNavigationEvent;)I

    move-result p1

    return p1
.end method
