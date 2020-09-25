.class final Lo/getFromSharedPrefs$extraCallback$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getFromSharedPrefs$extraCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "extraCallback"
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:I

.field private asBinder:Z

.field private asInterface:Z

.field private extraCallback:I

.field private getInterfaceDescriptor:I

.field private newSession:I

.field private onMessageChannelReady:Z

.field private onNavigationEvent:Z

.field private onPostMessage:Lo/setViewPool$extraCallback;

.field private onRelationshipValidationResult:Z

.field private onTransact:I

.field private requestPostMessageChannel:I

.field private warmup:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/getFromSharedPrefs$5;)V
    .locals 0

    .line 473
    invoke-direct {p0}, Lo/getFromSharedPrefs$extraCallback$extraCallback;-><init>()V

    return-void
.end method

.method private ICustomTabsCallback(Lo/getFromSharedPrefs$extraCallback$extraCallback;)Z
    .locals 3

    .line 545
    iget-boolean v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onMessageChannelReady:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p1, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onMessageChannelReady:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->ICustomTabsCallback$Stub:I

    iget v2, p1, Lo/getFromSharedPrefs$extraCallback$extraCallback;->ICustomTabsCallback$Stub:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onTransact:I

    iget v2, p1, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onTransact:I

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->asInterface:Z

    iget-boolean v2, p1, Lo/getFromSharedPrefs$extraCallback$extraCallback;->asInterface:Z

    if-ne v0, v2, :cond_4

    iget-boolean v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->asBinder:Z

    iget-boolean v2, p1, Lo/getFromSharedPrefs$extraCallback$extraCallback;->asBinder:Z

    if-ne v0, v2, :cond_4

    :cond_0
    iget v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->extraCallback:I

    iget v2, p1, Lo/getFromSharedPrefs$extraCallback$extraCallback;->extraCallback:I

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    :cond_1
    iget-object v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onPostMessage:Lo/setViewPool$extraCallback;

    iget v0, v0, Lo/setViewPool$extraCallback;->ICustomTabsService:I

    if-nez v0, :cond_2

    iget-object v0, p1, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onPostMessage:Lo/setViewPool$extraCallback;

    iget v0, v0, Lo/setViewPool$extraCallback;->ICustomTabsService:I

    if-nez v0, :cond_2

    iget v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->ICustomTabsService:I

    iget v2, p1, Lo/getFromSharedPrefs$extraCallback$extraCallback;->ICustomTabsService:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->getInterfaceDescriptor:I

    iget v2, p1, Lo/getFromSharedPrefs$extraCallback$extraCallback;->getInterfaceDescriptor:I

    if-ne v0, v2, :cond_4

    :cond_2
    iget-object v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onPostMessage:Lo/setViewPool$extraCallback;

    iget v0, v0, Lo/setViewPool$extraCallback;->ICustomTabsService:I

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onPostMessage:Lo/setViewPool$extraCallback;

    iget v0, v0, Lo/setViewPool$extraCallback;->ICustomTabsService:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->newSession:I

    iget v2, p1, Lo/getFromSharedPrefs$extraCallback$extraCallback;->newSession:I

    if-ne v0, v2, :cond_4

    iget v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->requestPostMessageChannel:I

    iget v2, p1, Lo/getFromSharedPrefs$extraCallback$extraCallback;->requestPostMessageChannel:I

    if-ne v0, v2, :cond_4

    :cond_3
    iget-boolean v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->warmup:Z

    iget-boolean v2, p1, Lo/getFromSharedPrefs$extraCallback$extraCallback;->warmup:Z

    if-ne v0, v2, :cond_4

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    iget v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->ICustomTabsCallback$Stub$Proxy:I

    iget p1, p1, Lo/getFromSharedPrefs$extraCallback$extraCallback;->ICustomTabsCallback$Stub$Proxy:I

    if-eq v0, p1, :cond_5

    :cond_4
    return v1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic onPostMessage(Lo/getFromSharedPrefs$extraCallback$extraCallback;Lo/getFromSharedPrefs$extraCallback$extraCallback;)Z
    .locals 0

    .line 473
    invoke-direct {p0, p1}, Lo/getFromSharedPrefs$extraCallback$extraCallback;->ICustomTabsCallback(Lo/getFromSharedPrefs$extraCallback$extraCallback;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x0

    .line 497
    iput-boolean v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onNavigationEvent:Z

    .line 498
    iput-boolean v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onMessageChannelReady:Z

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 0

    .line 502
    iput p1, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->ICustomTabsCallback:I

    const/4 p1, 0x1

    .line 503
    iput-boolean p1, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onNavigationEvent:Z

    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 2

    .line 540
    iget-boolean v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onNavigationEvent:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->ICustomTabsCallback:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final onPostMessage(Lo/setViewPool$extraCallback;IIIIZZZZIIIII)V
    .locals 0

    .line 521
    iput-object p1, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onPostMessage:Lo/setViewPool$extraCallback;

    .line 522
    iput p2, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->extraCallback:I

    .line 523
    iput p3, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->ICustomTabsCallback:I

    .line 524
    iput p4, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->ICustomTabsCallback$Stub:I

    .line 525
    iput p5, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onTransact:I

    .line 526
    iput-boolean p6, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->asInterface:Z

    .line 527
    iput-boolean p7, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onRelationshipValidationResult:Z

    .line 528
    iput-boolean p8, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->asBinder:Z

    .line 529
    iput-boolean p9, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->warmup:Z

    .line 530
    iput p10, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->ICustomTabsCallback$Stub$Proxy:I

    .line 531
    iput p11, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->ICustomTabsService:I

    .line 532
    iput p12, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->getInterfaceDescriptor:I

    .line 533
    iput p13, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->newSession:I

    .line 534
    iput p14, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->requestPostMessageChannel:I

    const/4 p1, 0x1

    .line 535
    iput-boolean p1, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onMessageChannelReady:Z

    .line 536
    iput-boolean p1, p0, Lo/getFromSharedPrefs$extraCallback$extraCallback;->onNavigationEvent:Z

    return-void
.end method
