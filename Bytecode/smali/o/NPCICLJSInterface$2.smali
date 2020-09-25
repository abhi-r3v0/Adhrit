.class final Lo/NPCICLJSInterface$2;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ICustomTabsCallback:J

.field public ICustomTabsCallback$Stub:I

.field public ICustomTabsCallback$Stub$Proxy:Lo/NPCICLJSInterface$3;

.field public ICustomTabsService:[J

.field public asBinder:[I

.field public asInterface:[J

.field public extraCallback:J

.field public extraCommand:J

.field public getInterfaceDescriptor:Z

.field public mayLaunchUrl:Lo/DreamAppGlideModule;

.field public newSession:[Z

.field public onMessageChannelReady:Lo/populateHMAC;

.field public onNavigationEvent:I

.field public onPostMessage:J

.field public onRelationshipValidationResult:[I

.field public onTransact:[I

.field public postMessage:Z

.field public requestPostMessageChannel:I

.field public warmup:[Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 1

    .line 159
    iget-object v0, p0, Lo/NPCICLJSInterface$2;->mayLaunchUrl:Lo/DreamAppGlideModule;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/DreamAppGlideModule;->onPostMessage()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 160
    :cond_0
    new-instance v0, Lo/DreamAppGlideModule;

    invoke-direct {v0, p1}, Lo/DreamAppGlideModule;-><init>(I)V

    iput-object v0, p0, Lo/NPCICLJSInterface$2;->mayLaunchUrl:Lo/DreamAppGlideModule;

    .line 162
    :cond_1
    iput p1, p0, Lo/NPCICLJSInterface$2;->requestPostMessageChannel:I

    const/4 p1, 0x1

    .line 163
    iput-boolean p1, p0, Lo/NPCICLJSInterface$2;->getInterfaceDescriptor:Z

    .line 164
    iput-boolean p1, p0, Lo/NPCICLJSInterface$2;->postMessage:Z

    return-void
.end method

.method public final ICustomTabsCallback(Lo/Event$Action;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lo/NPCICLJSInterface$2;->mayLaunchUrl:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v1, p0, Lo/NPCICLJSInterface$2;->requestPostMessageChannel:I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v2, v1}, Lo/Event$Action;->onPostMessage([BII)V

    .line 174
    iget-object p1, p0, Lo/NPCICLJSInterface$2;->mayLaunchUrl:Lo/DreamAppGlideModule;

    invoke-virtual {p1, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 175
    iput-boolean v2, p0, Lo/NPCICLJSInterface$2;->postMessage:Z

    return-void
.end method

.method public final extraCallback(I)J
    .locals 5

    .line 190
    iget-object v0, p0, Lo/NPCICLJSInterface$2;->ICustomTabsService:[J

    aget-wide v1, v0, p1

    iget-object v0, p0, Lo/NPCICLJSInterface$2;->onRelationshipValidationResult:[I

    aget p1, v0, p1

    int-to-long v3, p1

    add-long/2addr v1, v3

    return-wide v1
.end method

.method public final onMessageChannelReady(II)V
    .locals 1

    .line 131
    iput p1, p0, Lo/NPCICLJSInterface$2;->onNavigationEvent:I

    .line 132
    iput p2, p0, Lo/NPCICLJSInterface$2;->ICustomTabsCallback$Stub:I

    .line 133
    iget-object v0, p0, Lo/NPCICLJSInterface$2;->onTransact:[I

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 134
    :cond_0
    new-array v0, p1, [J

    iput-object v0, p0, Lo/NPCICLJSInterface$2;->asInterface:[J

    .line 135
    new-array p1, p1, [I

    iput-object p1, p0, Lo/NPCICLJSInterface$2;->onTransact:[I

    .line 137
    :cond_1
    iget-object p1, p0, Lo/NPCICLJSInterface$2;->asBinder:[I

    if-eqz p1, :cond_2

    array-length p1, p1

    if-ge p1, p2, :cond_3

    :cond_2
    mul-int/lit8 p2, p2, 0x7d

    .line 140
    div-int/lit8 p2, p2, 0x64

    .line 141
    new-array p1, p2, [I

    iput-object p1, p0, Lo/NPCICLJSInterface$2;->asBinder:[I

    .line 142
    new-array p1, p2, [I

    iput-object p1, p0, Lo/NPCICLJSInterface$2;->onRelationshipValidationResult:[I

    .line 143
    new-array p1, p2, [J

    iput-object p1, p0, Lo/NPCICLJSInterface$2;->ICustomTabsService:[J

    .line 144
    new-array p1, p2, [Z

    iput-object p1, p0, Lo/NPCICLJSInterface$2;->newSession:[Z

    .line 145
    new-array p1, p2, [Z

    iput-object p1, p0, Lo/NPCICLJSInterface$2;->warmup:[Z

    :cond_3
    return-void
.end method

.method public final onNavigationEvent(Lo/DreamAppGlideModule;)V
    .locals 3

    .line 184
    iget-object v0, p0, Lo/NPCICLJSInterface$2;->mayLaunchUrl:Lo/DreamAppGlideModule;

    iget-object v0, v0, Lo/DreamAppGlideModule;->onNavigationEvent:[B

    iget v1, p0, Lo/NPCICLJSInterface$2;->requestPostMessageChannel:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lo/DreamAppGlideModule;->onMessageChannelReady([BII)V

    .line 185
    iget-object p1, p0, Lo/NPCICLJSInterface$2;->mayLaunchUrl:Lo/DreamAppGlideModule;

    invoke-virtual {p1, v2}, Lo/DreamAppGlideModule;->onMessageChannelReady(I)V

    .line 186
    iput-boolean v2, p0, Lo/NPCICLJSInterface$2;->postMessage:Z

    return-void
.end method

.method public final onNavigationEvent(I)Z
    .locals 1

    .line 195
    iget-boolean v0, p0, Lo/NPCICLJSInterface$2;->getInterfaceDescriptor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/NPCICLJSInterface$2;->warmup:[Z

    aget-boolean p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage()V
    .locals 3

    const/4 v0, 0x0

    .line 115
    iput v0, p0, Lo/NPCICLJSInterface$2;->onNavigationEvent:I

    const-wide/16 v1, 0x0

    .line 116
    iput-wide v1, p0, Lo/NPCICLJSInterface$2;->extraCommand:J

    .line 117
    iput-boolean v0, p0, Lo/NPCICLJSInterface$2;->getInterfaceDescriptor:Z

    .line 118
    iput-boolean v0, p0, Lo/NPCICLJSInterface$2;->postMessage:Z

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Lo/NPCICLJSInterface$2;->ICustomTabsCallback$Stub$Proxy:Lo/NPCICLJSInterface$3;

    return-void
.end method
