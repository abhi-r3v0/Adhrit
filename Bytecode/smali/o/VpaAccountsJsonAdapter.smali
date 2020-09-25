.class final Lo/VpaAccountsJsonAdapter;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsCallback$Stub$Proxy:F

.field private ICustomTabsService:Lo/VpaAccountsJsonAdapter;

.field private asBinder:I

.field private asInterface:I

.field private extraCallback:Z

.field private getInterfaceDescriptor:Landroid/text/Layout$Alignment;

.field private newSession:Ljava/lang/String;

.field private onMessageChannelReady:Z

.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:I

.field private onRelationshipValidationResult:I

.field private onTransact:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lo/VpaAccountsJsonAdapter;->onRelationshipValidationResult:I

    .line 79
    iput v0, p0, Lo/VpaAccountsJsonAdapter;->asInterface:I

    .line 80
    iput v0, p0, Lo/VpaAccountsJsonAdapter;->ICustomTabsCallback$Stub:I

    .line 81
    iput v0, p0, Lo/VpaAccountsJsonAdapter;->onTransact:I

    .line 82
    iput v0, p0, Lo/VpaAccountsJsonAdapter;->asBinder:I

    return-void
.end method

.method private ICustomTabsCallback(Lo/VpaAccountsJsonAdapter;Z)Lo/VpaAccountsJsonAdapter;
    .locals 2

    if-eqz p1, :cond_8

    .line 199
    iget-boolean v0, p0, Lo/VpaAccountsJsonAdapter;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lo/VpaAccountsJsonAdapter;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 200
    iget v0, p1, Lo/VpaAccountsJsonAdapter;->ICustomTabsCallback:I

    invoke-virtual {p0, v0}, Lo/VpaAccountsJsonAdapter;->onNavigationEvent(I)Lo/VpaAccountsJsonAdapter;

    .line 202
    :cond_0
    iget v0, p0, Lo/VpaAccountsJsonAdapter;->ICustomTabsCallback$Stub:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 203
    iget v0, p1, Lo/VpaAccountsJsonAdapter;->ICustomTabsCallback$Stub:I

    iput v0, p0, Lo/VpaAccountsJsonAdapter;->ICustomTabsCallback$Stub:I

    .line 205
    :cond_1
    iget v0, p0, Lo/VpaAccountsJsonAdapter;->onTransact:I

    if-ne v0, v1, :cond_2

    .line 206
    iget v0, p1, Lo/VpaAccountsJsonAdapter;->onTransact:I

    iput v0, p0, Lo/VpaAccountsJsonAdapter;->onTransact:I

    .line 208
    :cond_2
    iget-object v0, p0, Lo/VpaAccountsJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 209
    iget-object v0, p1, Lo/VpaAccountsJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    iput-object v0, p0, Lo/VpaAccountsJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    .line 211
    :cond_3
    iget v0, p0, Lo/VpaAccountsJsonAdapter;->onRelationshipValidationResult:I

    if-ne v0, v1, :cond_4

    .line 212
    iget v0, p1, Lo/VpaAccountsJsonAdapter;->onRelationshipValidationResult:I

    iput v0, p0, Lo/VpaAccountsJsonAdapter;->onRelationshipValidationResult:I

    .line 214
    :cond_4
    iget v0, p0, Lo/VpaAccountsJsonAdapter;->asInterface:I

    if-ne v0, v1, :cond_5

    .line 215
    iget v0, p1, Lo/VpaAccountsJsonAdapter;->asInterface:I

    iput v0, p0, Lo/VpaAccountsJsonAdapter;->asInterface:I

    .line 217
    :cond_5
    iget-object v0, p0, Lo/VpaAccountsJsonAdapter;->getInterfaceDescriptor:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_6

    .line 218
    iget-object v0, p1, Lo/VpaAccountsJsonAdapter;->getInterfaceDescriptor:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lo/VpaAccountsJsonAdapter;->getInterfaceDescriptor:Landroid/text/Layout$Alignment;

    .line 220
    :cond_6
    iget v0, p0, Lo/VpaAccountsJsonAdapter;->asBinder:I

    if-ne v0, v1, :cond_7

    .line 221
    iget v0, p1, Lo/VpaAccountsJsonAdapter;->asBinder:I

    iput v0, p0, Lo/VpaAccountsJsonAdapter;->asBinder:I

    .line 222
    iget v0, p1, Lo/VpaAccountsJsonAdapter;->ICustomTabsCallback$Stub$Proxy:F

    iput v0, p0, Lo/VpaAccountsJsonAdapter;->ICustomTabsCallback$Stub$Proxy:F

    :cond_7
    if-eqz p2, :cond_8

    .line 225
    iget-boolean p2, p0, Lo/VpaAccountsJsonAdapter;->extraCallback:Z

    if-nez p2, :cond_8

    iget-boolean p2, p1, Lo/VpaAccountsJsonAdapter;->extraCallback:Z

    if-eqz p2, :cond_8

    .line 226
    iget p1, p1, Lo/VpaAccountsJsonAdapter;->onPostMessage:I

    invoke-virtual {p0, p1}, Lo/VpaAccountsJsonAdapter;->extraCallback(I)Lo/VpaAccountsJsonAdapter;

    :cond_8
    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(Z)Lo/VpaAccountsJsonAdapter;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/VpaAccountsJsonAdapter;->ICustomTabsService:Lo/VpaAccountsJsonAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 105
    iput p1, p0, Lo/VpaAccountsJsonAdapter;->onRelationshipValidationResult:I

    return-object p0
.end method

.method public final ICustomTabsCallback()Z
    .locals 2

    .line 100
    iget v0, p0, Lo/VpaAccountsJsonAdapter;->onRelationshipValidationResult:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final ICustomTabsCallback$Stub()Z
    .locals 1

    .line 156
    iget-boolean v0, p0, Lo/VpaAccountsJsonAdapter;->onMessageChannelReady:Z

    return v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()F
    .locals 1

    .line 265
    iget v0, p0, Lo/VpaAccountsJsonAdapter;->ICustomTabsCallback$Stub$Proxy:F

    return v0
.end method

.method public final asBinder()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lo/VpaAccountsJsonAdapter;->newSession:Ljava/lang/String;

    return-object v0
.end method

.method public final asInterface()Z
    .locals 1

    .line 173
    iget-boolean v0, p0, Lo/VpaAccountsJsonAdapter;->extraCallback:Z

    return v0
.end method

.method public final extraCallback(I)Lo/VpaAccountsJsonAdapter;
    .locals 0

    .line 167
    iput p1, p0, Lo/VpaAccountsJsonAdapter;->onPostMessage:I

    const/4 p1, 0x1

    .line 168
    iput-boolean p1, p0, Lo/VpaAccountsJsonAdapter;->extraCallback:Z

    return-object p0
.end method

.method public final extraCallback(Landroid/text/Layout$Alignment;)Lo/VpaAccountsJsonAdapter;
    .locals 0

    .line 246
    iput-object p1, p0, Lo/VpaAccountsJsonAdapter;->getInterfaceDescriptor:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method public final extraCallback(Ljava/lang/String;)Lo/VpaAccountsJsonAdapter;
    .locals 1

    .line 136
    iget-object v0, p0, Lo/VpaAccountsJsonAdapter;->ICustomTabsService:Lo/VpaAccountsJsonAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 137
    iput-object p1, p0, Lo/VpaAccountsJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    return-object p0
.end method

.method public final extraCallback()Z
    .locals 2

    .line 110
    iget v0, p0, Lo/VpaAccountsJsonAdapter;->asInterface:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onMessageChannelReady()I
    .locals 2

    .line 142
    iget-boolean v0, p0, Lo/VpaAccountsJsonAdapter;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 145
    iget v0, p0, Lo/VpaAccountsJsonAdapter;->ICustomTabsCallback:I

    return v0

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Font color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final onMessageChannelReady(F)Lo/VpaAccountsJsonAdapter;
    .locals 0

    .line 251
    iput p1, p0, Lo/VpaAccountsJsonAdapter;->ICustomTabsCallback$Stub$Proxy:F

    return-object p0
.end method

.method public final onMessageChannelReady(Z)Lo/VpaAccountsJsonAdapter;
    .locals 1

    .line 114
    iget-object v0, p0, Lo/VpaAccountsJsonAdapter;->ICustomTabsService:Lo/VpaAccountsJsonAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 115
    iput p1, p0, Lo/VpaAccountsJsonAdapter;->asInterface:I

    return-object p0
.end method

.method public final onNavigationEvent()I
    .locals 4

    .line 92
    iget v0, p0, Lo/VpaAccountsJsonAdapter;->ICustomTabsCallback$Stub:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lo/VpaAccountsJsonAdapter;->onTransact:I

    if-ne v0, v1, :cond_0

    return v1

    .line 95
    :cond_0
    iget v0, p0, Lo/VpaAccountsJsonAdapter;->ICustomTabsCallback$Stub:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lo/VpaAccountsJsonAdapter;->onTransact:I

    if-ne v3, v2, :cond_2

    const/4 v1, 0x2

    :cond_2
    or-int/2addr v0, v1

    return v0
.end method

.method public final onNavigationEvent(I)Lo/VpaAccountsJsonAdapter;
    .locals 2

    .line 149
    iget-object v0, p0, Lo/VpaAccountsJsonAdapter;->ICustomTabsService:Lo/VpaAccountsJsonAdapter;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 150
    iput p1, p0, Lo/VpaAccountsJsonAdapter;->ICustomTabsCallback:I

    .line 151
    iput-boolean v1, p0, Lo/VpaAccountsJsonAdapter;->onMessageChannelReady:Z

    return-object p0
.end method

.method public final onNavigationEvent(Ljava/lang/String;)Lo/VpaAccountsJsonAdapter;
    .locals 0

    .line 233
    iput-object p1, p0, Lo/VpaAccountsJsonAdapter;->newSession:Ljava/lang/String;

    return-object p0
.end method

.method public final onNavigationEvent(Lo/VpaAccountsJsonAdapter;)Lo/VpaAccountsJsonAdapter;
    .locals 1

    const/4 v0, 0x1

    .line 194
    invoke-direct {p0, p1, v0}, Lo/VpaAccountsJsonAdapter;->ICustomTabsCallback(Lo/VpaAccountsJsonAdapter;Z)Lo/VpaAccountsJsonAdapter;

    move-result-object p1

    return-object p1
.end method

.method public final onNavigationEvent(Z)Lo/VpaAccountsJsonAdapter;
    .locals 1

    .line 120
    iget-object v0, p0, Lo/VpaAccountsJsonAdapter;->ICustomTabsService:Lo/VpaAccountsJsonAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 121
    iput p1, p0, Lo/VpaAccountsJsonAdapter;->ICustomTabsCallback$Stub:I

    return-object p0
.end method

.method public final onPostMessage()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lo/VpaAccountsJsonAdapter;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage(I)Lo/VpaAccountsJsonAdapter;
    .locals 0

    .line 256
    iput p1, p0, Lo/VpaAccountsJsonAdapter;->asBinder:I

    return-object p0
.end method

.method public final onPostMessage(Z)Lo/VpaAccountsJsonAdapter;
    .locals 1

    .line 126
    iget-object v0, p0, Lo/VpaAccountsJsonAdapter;->ICustomTabsService:Lo/VpaAccountsJsonAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 127
    iput p1, p0, Lo/VpaAccountsJsonAdapter;->onTransact:I

    return-object p0
.end method

.method public final onRelationshipValidationResult()Landroid/text/Layout$Alignment;
    .locals 1

    .line 242
    iget-object v0, p0, Lo/VpaAccountsJsonAdapter;->getInterfaceDescriptor:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public final onTransact()I
    .locals 2

    .line 160
    iget-boolean v0, p0, Lo/VpaAccountsJsonAdapter;->extraCallback:Z

    if-eqz v0, :cond_0

    .line 163
    iget v0, p0, Lo/VpaAccountsJsonAdapter;->onPostMessage:I

    return v0

    .line 161
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Background color has not been defined."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final warmup()I
    .locals 1

    .line 261
    iget v0, p0, Lo/VpaAccountsJsonAdapter;->asBinder:I

    return v0
.end method
