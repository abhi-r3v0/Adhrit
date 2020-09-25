.class public final Lo/Header$extraCallback;
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
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lo/Header$extraCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Z

.field private final asBinder:I

.field private final asInterface:Z

.field private final extraCallback:Z

.field public final onMessageChannelReady:Z

.field private final onNavigationEvent:I

.field private final onPostMessage:Z

.field private final onRelationshipValidationResult:I


# direct methods
.method public constructor <init>(Lo/p$a;Lo/Header$onMessageChannelReady;ILjava/lang/String;)V
    .locals 4

    .line 2661
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2663
    invoke-static {p3, v0}, Lo/Header;->extraCallback(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lo/Header$extraCallback;->onPostMessage:Z

    .line 2664
    iget p3, p1, Lo/p$a;->onMessageChannelReady:I

    iget v1, p2, Lo/InstrumentAction;->IPostMessageService$Stub$Proxy:I

    not-int v1, v1

    and-int/2addr p3, v1

    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2666
    :goto_0
    iput-boolean v1, p0, Lo/Header$extraCallback;->ICustomTabsCallback:Z

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    .line 2668
    :goto_1
    iget-object v1, p2, Lo/InstrumentAction;->notify:Ljava/lang/String;

    iget-boolean v3, p2, Lo/InstrumentAction;->cancelAll:Z

    .line 2669
    invoke-static {p1, v1, v3}, Lo/Header;->ICustomTabsCallback(Lo/p$a;Ljava/lang/String;Z)I

    move-result v1

    iput v1, p0, Lo/Header$extraCallback;->onNavigationEvent:I

    .line 2671
    iget v1, p1, Lo/p$a;->ICustomTabsCallback:I

    iget v3, p2, Lo/InstrumentAction;->cancel:I

    and-int/2addr v1, v3

    .line 2672
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v1

    iput v1, p0, Lo/Header$extraCallback;->asBinder:I

    .line 2673
    iget v1, p1, Lo/p$a;->ICustomTabsCallback:I

    and-int/lit16 v1, v1, 0x440

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iput-boolean v1, p0, Lo/Header$extraCallback;->asInterface:Z

    .line 2678
    iget v1, p0, Lo/Header$extraCallback;->onNavigationEvent:I

    if-lez v1, :cond_3

    if-eqz p3, :cond_4

    :cond_3
    iget v1, p0, Lo/Header$extraCallback;->onNavigationEvent:I

    if-nez v1, :cond_5

    if-eqz p3, :cond_5

    :cond_4
    const/4 v1, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    iput-boolean v1, p0, Lo/Header$extraCallback;->extraCallback:Z

    .line 2681
    invoke-static {p4}, Lo/Header;->ICustomTabsCallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    .line 2683
    :goto_4
    invoke-static {p1, p4, v1}, Lo/Header;->ICustomTabsCallback(Lo/p$a;Ljava/lang/String;Z)I

    move-result p1

    iput p1, p0, Lo/Header$extraCallback;->onRelationshipValidationResult:I

    .line 2684
    iget p1, p0, Lo/Header$extraCallback;->onNavigationEvent:I

    if-gtz p1, :cond_8

    iget-object p1, p2, Lo/InstrumentAction;->notify:Ljava/lang/String;

    if-nez p1, :cond_7

    iget p1, p0, Lo/Header$extraCallback;->asBinder:I

    if-gtz p1, :cond_8

    :cond_7
    iget-boolean p1, p0, Lo/Header$extraCallback;->ICustomTabsCallback:Z

    if-nez p1, :cond_8

    if-eqz p3, :cond_9

    iget p1, p0, Lo/Header$extraCallback;->onRelationshipValidationResult:I

    if-lez p1, :cond_9

    :cond_8
    const/4 v0, 0x1

    :cond_9
    iput-boolean v0, p0, Lo/Header$extraCallback;->onMessageChannelReady:Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/Header$extraCallback;)I
    .locals 5

    .line 2700
    iget-boolean v0, p0, Lo/Header$extraCallback;->onPostMessage:Z

    iget-boolean v1, p1, Lo/Header$extraCallback;->onPostMessage:Z

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    return v3

    .line 2703
    :cond_1
    iget v0, p0, Lo/Header$extraCallback;->onNavigationEvent:I

    iget v1, p1, Lo/Header$extraCallback;->onNavigationEvent:I

    if-eq v0, v1, :cond_2

    .line 2704
    invoke-static {v0, v1}, Lo/Header;->onNavigationEvent(II)I

    move-result p1

    return p1

    .line 2706
    :cond_2
    iget v0, p0, Lo/Header$extraCallback;->asBinder:I

    iget v1, p1, Lo/Header$extraCallback;->asBinder:I

    if-eq v0, v1, :cond_3

    .line 2707
    invoke-static {v0, v1}, Lo/Header;->onNavigationEvent(II)I

    move-result p1

    return p1

    .line 2709
    :cond_3
    iget-boolean v1, p0, Lo/Header$extraCallback;->ICustomTabsCallback:Z

    iget-boolean v4, p1, Lo/Header$extraCallback;->ICustomTabsCallback:Z

    if-eq v1, v4, :cond_5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    return v3

    .line 2712
    :cond_5
    iget-boolean v1, p0, Lo/Header$extraCallback;->extraCallback:Z

    iget-boolean v4, p1, Lo/Header$extraCallback;->extraCallback:Z

    if-eq v1, v4, :cond_7

    if-eqz v1, :cond_6

    return v2

    :cond_6
    return v3

    .line 2715
    :cond_7
    iget v1, p0, Lo/Header$extraCallback;->onRelationshipValidationResult:I

    iget v4, p1, Lo/Header$extraCallback;->onRelationshipValidationResult:I

    if-eq v1, v4, :cond_8

    .line 2716
    invoke-static {v1, v4}, Lo/Header;->onNavigationEvent(II)I

    move-result p1

    return p1

    :cond_8
    if-nez v0, :cond_a

    .line 2718
    iget-boolean v0, p0, Lo/Header$extraCallback;->asInterface:Z

    iget-boolean p1, p1, Lo/Header$extraCallback;->asInterface:Z

    if-eq v0, p1, :cond_a

    if-eqz v0, :cond_9

    return v3

    :cond_9
    return v2

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2641
    check-cast p1, Lo/Header$extraCallback;

    invoke-virtual {p0, p1}, Lo/Header$extraCallback;->ICustomTabsCallback(Lo/Header$extraCallback;)I

    move-result p1

    return p1
.end method
