.class public final Lo/CheckoutSessionResponse;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:I

.field private ICustomTabsService:I

.field private asBinder:I

.field private asInterface:I

.field private extraCallback:Ljava/lang/String;

.field private getInterfaceDescriptor:F

.field private newSession:I

.field private onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onRelationshipValidationResult:Z

.field private onTransact:I

.field private postMessage:Landroid/text/Layout$Alignment;

.field private warmup:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p0}, Lo/CheckoutSessionResponse;->onPostMessage()V

    return-void
.end method

.method private static ICustomTabsCallback(ILjava/lang/String;Ljava/lang/String;I)I
    .locals 1

    .line 314
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 317
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    add-int/2addr p0, p3

    return p0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return p0
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lo/CheckoutSessionResponse;->extraCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)Lo/CheckoutSessionResponse;
    .locals 0

    .line 216
    invoke-static {p1}, Lo/ThirdPartyAuthorizeRequest;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lo/CheckoutSessionResponse;->extraCallback:Ljava/lang/String;

    return-object p0
.end method

.method public final ICustomTabsCallback(Z)Lo/CheckoutSessionResponse;
    .locals 0

    .line 202
    iput p1, p0, Lo/CheckoutSessionResponse;->ICustomTabsService:I

    return-object p0
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lo/CheckoutSessionResponse;->onRelationshipValidationResult:Z

    return v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()F
    .locals 1

    .line 278
    iget v0, p0, Lo/CheckoutSessionResponse;->getInterfaceDescriptor:F

    return v0
.end method

.method public final asBinder()I
    .locals 2

    .line 238
    iget-boolean v0, p0, Lo/CheckoutSessionResponse;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_0

    .line 241
    iget v0, p0, Lo/CheckoutSessionResponse;->asBinder:I

    return v0

    .line 239
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color not defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final asInterface()Z
    .locals 1

    .line 234
    iget-boolean v0, p0, Lo/CheckoutSessionResponse;->ICustomTabsCallback$Stub:Z

    return v0
.end method

.method public final extraCallback(Z)Lo/CheckoutSessionResponse;
    .locals 0

    .line 198
    iput p1, p0, Lo/CheckoutSessionResponse;->ICustomTabsCallback$Stub$Proxy:I

    return-object p0
.end method

.method public final extraCallback()Z
    .locals 2

    .line 194
    iget v0, p0, Lo/CheckoutSessionResponse;->ICustomTabsCallback$Stub$Proxy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final getInterfaceDescriptor()I
    .locals 1

    .line 274
    iget v0, p0, Lo/CheckoutSessionResponse;->warmup:I

    return v0
.end method

.method public final onMessageChannelReady(I)Lo/CheckoutSessionResponse;
    .locals 0

    .line 228
    iput p1, p0, Lo/CheckoutSessionResponse;->asInterface:I

    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Lo/CheckoutSessionResponse;->ICustomTabsCallback$Stub:Z

    return-object p0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lo/CheckoutSessionResponse;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 2

    .line 185
    iget v0, p0, Lo/CheckoutSessionResponse;->onTransact:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()I
    .locals 4

    .line 177
    iget v0, p0, Lo/CheckoutSessionResponse;->ICustomTabsService:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/CheckoutSessionResponse;->newSession:I

    if-ne v0, v1, :cond_0

    return v1

    .line 180
    :cond_0
    iget v0, p0, Lo/CheckoutSessionResponse;->ICustomTabsService:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lo/CheckoutSessionResponse;->newSession:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    return v0
.end method

.method public final onNavigationEvent(I)Lo/CheckoutSessionResponse;
    .locals 0

    .line 245
    iput p1, p0, Lo/CheckoutSessionResponse;->asBinder:I

    const/4 p1, 0x1

    .line 246
    iput-boolean p1, p0, Lo/CheckoutSessionResponse;->onRelationshipValidationResult:Z

    return-object p0
.end method

.method public final onNavigationEvent(Z)Lo/CheckoutSessionResponse;
    .locals 0

    .line 207
    iput p1, p0, Lo/CheckoutSessionResponse;->newSession:I

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lo/CheckoutSessionResponse;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 152
    iget-object v0, p0, Lo/CheckoutSessionResponse;->ICustomTabsCallback:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/CheckoutSessionResponse;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/CheckoutSessionResponse;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/CheckoutSessionResponse;->onMessageChannelReady:Ljava/lang/String;

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    .line 159
    :cond_1
    iget-object v0, p0, Lo/CheckoutSessionResponse;->ICustomTabsCallback:Ljava/lang/String;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v0, p1, v2}, Lo/CheckoutSessionResponse;->ICustomTabsCallback(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 160
    iget-object v0, p0, Lo/CheckoutSessionResponse;->onNavigationEvent:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p1, v0, p2, v2}, Lo/CheckoutSessionResponse;->ICustomTabsCallback(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    .line 161
    iget-object p2, p0, Lo/CheckoutSessionResponse;->onMessageChannelReady:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {p1, p2, p4, v0}, Lo/CheckoutSessionResponse;->ICustomTabsCallback(ILjava/lang/String;Ljava/lang/String;I)I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    .line 162
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lo/CheckoutSessionResponse;->onPostMessage:Ljava/util/List;

    invoke-interface {p2, p3}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    .line 165
    :cond_2
    iget-object p2, p0, Lo/CheckoutSessionResponse;->onPostMessage:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    shl-int/2addr p2, v2

    add-int/2addr p1, p2

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method public final onPostMessage()V
    .locals 2

    const-string v0, ""

    .line 101
    iput-object v0, p0, Lo/CheckoutSessionResponse;->ICustomTabsCallback:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lo/CheckoutSessionResponse;->onNavigationEvent:Ljava/lang/String;

    .line 103
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lo/CheckoutSessionResponse;->onPostMessage:Ljava/util/List;

    .line 104
    iput-object v0, p0, Lo/CheckoutSessionResponse;->onMessageChannelReady:Ljava/lang/String;

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lo/CheckoutSessionResponse;->extraCallback:Ljava/lang/String;

    const/4 v1, 0x0

    .line 106
    iput-boolean v1, p0, Lo/CheckoutSessionResponse;->ICustomTabsCallback$Stub:Z

    .line 107
    iput-boolean v1, p0, Lo/CheckoutSessionResponse;->onRelationshipValidationResult:Z

    const/4 v1, -0x1

    .line 108
    iput v1, p0, Lo/CheckoutSessionResponse;->onTransact:I

    .line 109
    iput v1, p0, Lo/CheckoutSessionResponse;->ICustomTabsCallback$Stub$Proxy:I

    .line 110
    iput v1, p0, Lo/CheckoutSessionResponse;->ICustomTabsService:I

    .line 111
    iput v1, p0, Lo/CheckoutSessionResponse;->newSession:I

    .line 112
    iput v1, p0, Lo/CheckoutSessionResponse;->warmup:I

    .line 113
    iput-object v0, p0, Lo/CheckoutSessionResponse;->postMessage:Landroid/text/Layout$Alignment;

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lo/CheckoutSessionResponse;->onMessageChannelReady:Ljava/lang/String;

    return-void
.end method

.method public final onPostMessage([Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lo/CheckoutSessionResponse;->onPostMessage:Ljava/util/List;

    return-void
.end method

.method public final onRelationshipValidationResult()Landroid/text/Layout$Alignment;
    .locals 1

    .line 255
    iget-object v0, p0, Lo/CheckoutSessionResponse;->postMessage:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public final onTransact()I
    .locals 2

    .line 221
    iget-boolean v0, p0, Lo/CheckoutSessionResponse;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    .line 224
    iget v0, p0, Lo/CheckoutSessionResponse;->asInterface:I

    return v0

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color not defined"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
