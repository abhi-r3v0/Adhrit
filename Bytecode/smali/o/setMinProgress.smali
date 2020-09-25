.class public final Lo/setMinProgress;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/hasMasks;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DH::",
        "Lo/setMaxFrame;",
        ">",
        "Ljava/lang/Object;",
        "Lo/hasMasks;"
    }
.end annotation


# instance fields
.field public ICustomTabsCallback:Lo/setMaxFrame;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TDH;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:Z

.field public extraCallback:Lo/getMinFrame;

.field private onMessageChannelReady:Z

.field final onNavigationEvent:Lo/Attribute;

.field private onPostMessage:Z


# direct methods
.method public constructor <init>(Lo/setMaxFrame;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TDH;)V"
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lo/setMinProgress;->onMessageChannelReady:Z

    .line 45
    iput-boolean p1, p0, Lo/setMinProgress;->onPostMessage:Z

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lo/setMinProgress;->ICustomTabsCallback$Stub:Z

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    .line 51
    invoke-static {}, Lo/Attribute;->onPostMessage()Lo/Attribute;

    move-result-object p1

    iput-object p1, p0, Lo/setMinProgress;->onNavigationEvent:Lo/Attribute;

    return-void
.end method

.method private ICustomTabsCallback()V
    .locals 3

    .line 253
    iget-boolean v0, p0, Lo/setMinProgress;->onMessageChannelReady:Z

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lo/setMinProgress;->onNavigationEvent:Lo/Attribute;

    sget-object v1, Lo/Attribute$onMessageChannelReady;->onRelationshipValidationResult:Lo/Attribute$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lo/setMinProgress;->onMessageChannelReady:Z

    .line 6234
    iget-object v1, p0, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lo/getMinFrame;->asBinder()Lo/setMaxFrame;

    move-result-object v1

    iget-object v2, p0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    invoke-interface {v0}, Lo/getMinFrame;->asInterface()V

    :cond_2
    return-void
.end method

.method private onNavigationEvent()V
    .locals 2

    .line 242
    iget-boolean v0, p0, Lo/setMinProgress;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    return-void

    .line 245
    :cond_0
    iget-object v0, p0, Lo/setMinProgress;->onNavigationEvent:Lo/Attribute;

    sget-object v1, Lo/Attribute$onMessageChannelReady;->onTransact:Lo/Attribute$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    const/4 v0, 0x1

    .line 246
    iput-boolean v0, p0, Lo/setMinProgress;->onMessageChannelReady:Z

    .line 247
    iget-object v0, p0, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/getMinFrame;->asBinder()Lo/setMaxFrame;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    invoke-interface {v0}, Lo/getMinFrame;->ICustomTabsCallback$Stub()V

    :cond_1
    return-void
.end method


# virtual methods
.method ICustomTabsCallback(Lo/hasMasks;)V
    .locals 2

    .line 5226
    iget-object v0, p0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lo/setMaxFrame;->onMessageChannelReady()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 162
    :goto_0
    instance-of v1, v0, Lo/setCompositionTask;

    if-eqz v1, :cond_1

    .line 163
    check-cast v0, Lo/setCompositionTask;

    invoke-interface {v0, p1}, Lo/setCompositionTask;->onNavigationEvent(Lo/hasMasks;)V

    :cond_1
    return-void
.end method

.method public final extraCallback()V
    .locals 2

    .line 85
    iget-object v0, p0, Lo/setMinProgress;->onNavigationEvent:Lo/Attribute;

    sget-object v1, Lo/Attribute$onMessageChannelReady;->ICustomTabsCallback$Stub$Proxy:Lo/Attribute$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lo/setMinProgress;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 1264
    iget-boolean v0, p0, Lo/setMinProgress;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    .line 1265
    invoke-direct {p0}, Lo/setMinProgress;->onNavigationEvent()V

    return-void

    .line 1267
    :cond_0
    invoke-direct {p0}, Lo/setMinProgress;->ICustomTabsCallback()V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 5

    .line 141
    iget-boolean v0, p0, Lo/setMinProgress;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    return-void

    .line 147
    :cond_0
    const-class v0, Lo/Attribute;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 150
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    iget-object v2, p0, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    .line 151
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const-string v2, "%x: Draw requested for a non-attached controller %x. %s"

    .line 147
    invoke-static {v0, v2, v1}, Lo/setTranslateX;->ICustomTabsCallback(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    iput-boolean v3, p0, Lo/setMinProgress;->onPostMessage:Z

    .line 155
    iput-boolean v3, p0, Lo/setMinProgress;->ICustomTabsCallback$Stub:Z

    if-eqz v3, :cond_1

    if-eqz v3, :cond_1

    .line 4265
    invoke-direct {p0}, Lo/setMinProgress;->onNavigationEvent()V

    return-void

    .line 4267
    :cond_1
    invoke-direct {p0}, Lo/setMinProgress;->ICustomTabsCallback()V

    return-void
.end method

.method public final onNavigationEvent(Lo/getMinFrame;)V
    .locals 3

    .line 169
    iget-boolean v0, p0, Lo/setMinProgress;->onMessageChannelReady:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lo/setMinProgress;->ICustomTabsCallback()V

    .line 5234
    :cond_0
    iget-object v1, p0, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lo/getMinFrame;->asBinder()Lo/setMaxFrame;

    move-result-object v1

    iget-object v2, p0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 176
    iget-object v1, p0, Lo/setMinProgress;->onNavigationEvent:Lo/Attribute;

    sget-object v2, Lo/Attribute$onMessageChannelReady;->ICustomTabsCallback:Lo/Attribute$onMessageChannelReady;

    invoke-virtual {v1, v2}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    .line 177
    iget-object v1, p0, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lo/getMinFrame;->onNavigationEvent(Lo/setMaxFrame;)V

    .line 179
    :cond_2
    iput-object p1, p0, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    if-eqz p1, :cond_3

    .line 181
    iget-object p1, p0, Lo/setMinProgress;->onNavigationEvent:Lo/Attribute;

    sget-object v1, Lo/Attribute$onMessageChannelReady;->onNavigationEvent:Lo/Attribute$onMessageChannelReady;

    invoke-virtual {p1, v1}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    .line 182
    iget-object p1, p0, Lo/setMinProgress;->extraCallback:Lo/getMinFrame;

    iget-object v1, p0, Lo/setMinProgress;->ICustomTabsCallback:Lo/setMaxFrame;

    invoke-interface {p1, v1}, Lo/getMinFrame;->onNavigationEvent(Lo/setMaxFrame;)V

    goto :goto_1

    .line 184
    :cond_3
    iget-object p1, p0, Lo/setMinProgress;->onNavigationEvent:Lo/Attribute;

    sget-object v1, Lo/Attribute$onMessageChannelReady;->onMessageChannelReady:Lo/Attribute$onMessageChannelReady;

    invoke-virtual {p1, v1}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    :goto_1
    if-eqz v0, :cond_4

    .line 188
    invoke-direct {p0}, Lo/setMinProgress;->onNavigationEvent()V

    :cond_4
    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 2

    .line 129
    iget-boolean v0, p0, Lo/setMinProgress;->ICustomTabsCallback$Stub:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lo/setMinProgress;->onNavigationEvent:Lo/Attribute;

    if-eqz p1, :cond_1

    sget-object v1, Lo/Attribute$onMessageChannelReady;->updateVisuals:Lo/Attribute$onMessageChannelReady;

    goto :goto_0

    :cond_1
    sget-object v1, Lo/Attribute$onMessageChannelReady;->requestPostMessageChannel:Lo/Attribute$onMessageChannelReady;

    :goto_0
    invoke-virtual {v0, v1}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    .line 133
    iput-boolean p1, p0, Lo/setMinProgress;->ICustomTabsCallback$Stub:Z

    .line 3264
    iget-boolean v0, p0, Lo/setMinProgress;->onPostMessage:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 3265
    invoke-direct {p0}, Lo/setMinProgress;->onNavigationEvent()V

    return-void

    .line 3267
    :cond_2
    invoke-direct {p0}, Lo/setMinProgress;->ICustomTabsCallback()V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 108
    iget-object v0, p0, Lo/setMinProgress;->onNavigationEvent:Lo/Attribute;

    sget-object v1, Lo/Attribute$onMessageChannelReady;->extraCommand:Lo/Attribute$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/Attribute;->extraCallback(Lo/Attribute$onMessageChannelReady;)V

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lo/setMinProgress;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 2264
    iget-boolean v0, p0, Lo/setMinProgress;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    .line 2265
    invoke-direct {p0}, Lo/setMinProgress;->onNavigationEvent()V

    return-void

    .line 2267
    :cond_0
    invoke-direct {p0}, Lo/setMinProgress;->ICustomTabsCallback()V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 7119
    new-instance v0, Lo/setPivotY$onMessageChannelReady;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/setPivotY$onMessageChannelReady;-><init>(Ljava/lang/String;B)V

    .line 273
    iget-boolean v1, p0, Lo/setMinProgress;->onMessageChannelReady:Z

    const-string v2, "controllerAttached"

    .line 274
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Z)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-boolean v1, p0, Lo/setMinProgress;->onPostMessage:Z

    const-string v2, "holderAttached"

    .line 275
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Z)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-boolean v1, p0, Lo/setMinProgress;->ICustomTabsCallback$Stub:Z

    const-string v2, "drawableVisible"

    .line 276
    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->onNavigationEvent(Ljava/lang/String;Z)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    iget-object v1, p0, Lo/setMinProgress;->onNavigationEvent:Lo/Attribute;

    .line 277
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "events"

    invoke-virtual {v0, v2, v1}, Lo/setPivotY$onMessageChannelReady;->extraCallback(Ljava/lang/String;Ljava/lang/Object;)Lo/setPivotY$onMessageChannelReady;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
