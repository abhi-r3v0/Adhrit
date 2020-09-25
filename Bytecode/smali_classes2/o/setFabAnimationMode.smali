.class final Lo/setFabAnimationMode;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ICustomTabsCallback:Ljava/lang/String;

.field private ICustomTabsCallback$Stub:J

.field private ICustomTabsCallback$Stub$Proxy:J

.field private ICustomTabsService:J

.field private ICustomTabsService$Stub:J

.field private ICustomTabsService$Stub$Proxy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private INotificationSideChannel:Ljava/lang/String;

.field private INotificationSideChannel$Stub:J

.field private INotificationSideChannel$Stub$Proxy:Z

.field private IPostMessageService:Ljava/lang/String;

.field private IPostMessageService$Stub:J

.field private IPostMessageService$Stub$Proxy:J

.field private asBinder:Ljava/lang/String;

.field private asInterface:J

.field private cancel:J

.field private cancelAll:J

.field private final extraCallback:Lo/setCheckedIcon;

.field private extraCommand:Ljava/lang/Boolean;

.field private getDefaultImpl:J

.field private getInterfaceDescriptor:Ljava/lang/String;

.field private mayLaunchUrl:J

.field private newSession:Z

.field private notify:J

.field private final onMessageChannelReady:Ljava/lang/String;

.field private onNavigationEvent:Ljava/lang/String;

.field private onPostMessage:Ljava/lang/String;

.field private onRelationshipValidationResult:J

.field private onTransact:Ljava/lang/String;

.field private postMessage:Z

.field private requestPostMessageChannel:Ljava/lang/String;

.field private updateVisuals:Z

.field private validateRelationship:J

.field private warmup:J


# direct methods
.method constructor <init>(Lo/setCheckedIcon;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lo/extraCallback$onNavigationEvent;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 5
    iput-object p2, p0, Lo/setFabAnimationMode;->onMessageChannelReady:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object p1

    invoke-virtual {p1}, Lo/setChipTextResource;->ICustomTabsCallback()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 17
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 18
    iget-object v0, p0, Lo/setFabAnimationMode;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsCallback(J)V
    .locals 4

    .line 121
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 122
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 123
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-wide v1, p0, Lo/setFabAnimationMode;->ICustomTabsService:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 124
    iput-wide p1, p0, Lo/setFabAnimationMode;->ICustomTabsService:J

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 49
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 50
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 51
    :cond_0
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-object v1, p0, Lo/setFabAnimationMode;->IPostMessageService:Ljava/lang/String;

    invoke-static {v1, p1}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 52
    iput-object p1, p0, Lo/setFabAnimationMode;->IPostMessageService:Ljava/lang/String;

    return-void
.end method

.method public final ICustomTabsCallback$Stub()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 63
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 64
    iget-object v0, p0, Lo/setFabAnimationMode;->asBinder:Ljava/lang/String;

    return-object v0
.end method

.method public final ICustomTabsCallback$Stub(J)V
    .locals 4

    .line 162
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 163
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 164
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-wide v1, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 165
    iput-wide p1, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub:J

    return-void
.end method

.method public final ICustomTabsCallback$Stub(Ljava/lang/String;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 90
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 91
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-object v1, p0, Lo/setFabAnimationMode;->onTransact:Ljava/lang/String;

    invoke-static {v1, p1}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 92
    iput-object p1, p0, Lo/setFabAnimationMode;->onTransact:Ljava/lang/String;

    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy()J
    .locals 2

    .line 110
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 111
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 112
    iget-wide v0, p0, Lo/setFabAnimationMode;->warmup:J

    return-wide v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy(J)V
    .locals 4

    .line 203
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 204
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 205
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-wide v1, p0, Lo/setFabAnimationMode;->cancelAll:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 206
    iput-wide p1, p0, Lo/setFabAnimationMode;->cancelAll:J

    return-void
.end method

.method public final ICustomTabsService()J
    .locals 2

    .line 78
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 79
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 80
    iget-wide v0, p0, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub:J

    return-wide v0
.end method

.method public final ICustomTabsService(J)V
    .locals 4

    .line 195
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 196
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 197
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-wide v1, p0, Lo/setFabAnimationMode;->IPostMessageService$Stub$Proxy:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 198
    iput-wide p1, p0, Lo/setFabAnimationMode;->IPostMessageService$Stub$Proxy:J

    return-void
.end method

.method public final ICustomTabsService$Stub()V
    .locals 5

    .line 167
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 168
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 169
    iget-wide v0, p0, Lo/setFabAnimationMode;->onRelationshipValidationResult:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 171
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    invoke-virtual {v0}, Lo/setCheckedIcon;->mayLaunchUrl()Lo/HideBottomViewOnScrollBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lo/HideBottomViewOnScrollBehavior;->asInterface()Lo/setFabAlignmentMode;

    move-result-object v0

    iget-object v1, p0, Lo/setFabAnimationMode;->onMessageChannelReady:Ljava/lang/String;

    invoke-static {v1}, Lo/HideBottomViewOnScrollBehavior;->onPostMessage(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Bundle index overflow. appId"

    invoke-virtual {v0, v2, v1}, Lo/setFabAlignmentMode;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Object;)V

    const-wide/16 v0, 0x0

    :cond_0
    const/4 v2, 0x1

    .line 173
    iput-boolean v2, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 174
    iput-wide v0, p0, Lo/setFabAnimationMode;->onRelationshipValidationResult:J

    return-void
.end method

.method public final ICustomTabsService$Stub$Proxy()J
    .locals 2

    .line 176
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 177
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 178
    iget-wide v0, p0, Lo/setFabAnimationMode;->ICustomTabsService$Stub:J

    return-wide v0
.end method

.method public final INotificationSideChannel()J
    .locals 2

    .line 200
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 201
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 202
    iget-wide v0, p0, Lo/setFabAnimationMode;->cancelAll:J

    return-wide v0
.end method

.method public final INotificationSideChannel$Default()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 254
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 255
    iget-boolean v0, p0, Lo/setFabAnimationMode;->postMessage:Z

    return v0
.end method

.method public final INotificationSideChannel$Stub()Z
    .locals 1

    .line 245
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 246
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 247
    iget-boolean v0, p0, Lo/setFabAnimationMode;->updateVisuals:Z

    return v0
.end method

.method public final INotificationSideChannel$Stub$Proxy()Ljava/lang/Boolean;
    .locals 1

    .line 261
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 262
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 263
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCommand:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final IPostMessageService()J
    .locals 2

    .line 159
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 160
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 161
    iget-wide v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub:J

    return-wide v0
.end method

.method public final IPostMessageService$Stub()J
    .locals 2

    .line 184
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 185
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 186
    iget-wide v0, p0, Lo/setFabAnimationMode;->IPostMessageService$Stub:J

    return-wide v0
.end method

.method public final IPostMessageService$Stub$Proxy()J
    .locals 2

    .line 208
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 209
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 210
    iget-wide v0, p0, Lo/setFabAnimationMode;->cancel:J

    return-wide v0
.end method

.method public final IconCompatParcelizer()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 270
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 271
    iget-object v0, p0, Lo/setFabAnimationMode;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    return-object v0
.end method

.method public final asBinder()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 55
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 56
    iget-object v0, p0, Lo/setFabAnimationMode;->onPostMessage:Ljava/lang/String;

    return-object v0
.end method

.method public final asBinder(J)V
    .locals 4

    .line 129
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 130
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 131
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-wide v1, p0, Lo/setFabAnimationMode;->validateRelationship:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 132
    iput-wide p1, p0, Lo/setFabAnimationMode;->validateRelationship:J

    return-void
.end method

.method public final asInterface()J
    .locals 2

    .line 70
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 71
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 72
    iget-wide v0, p0, Lo/setFabAnimationMode;->asInterface:J

    return-wide v0
.end method

.method public final asInterface(J)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 142
    :goto_0
    invoke-static {v2}, Lo/extraCallback$onNavigationEvent;->onMessageChannelReady(Z)V

    .line 143
    iget-object v2, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 144
    invoke-virtual {v2}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v2

    invoke-virtual {v2}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 145
    iget-boolean v2, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-wide v3, p0, Lo/setFabAnimationMode;->onRelationshipValidationResult:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    or-int/2addr v0, v2

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 146
    iput-wide p1, p0, Lo/setFabAnimationMode;->onRelationshipValidationResult:J

    return-void
.end method

.method public final asInterface(Ljava/lang/String;)V
    .locals 2

    .line 65
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 66
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 67
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-object v1, p0, Lo/setFabAnimationMode;->asBinder:Ljava/lang/String;

    invoke-static {v1, p1}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 68
    iput-object p1, p0, Lo/setFabAnimationMode;->asBinder:Ljava/lang/String;

    return-void
.end method

.method public final cancel()J
    .locals 2

    .line 216
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 217
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 218
    iget-wide v0, p0, Lo/setFabAnimationMode;->notify:J

    return-wide v0
.end method

.method public final cancelAll()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 225
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 226
    iget-object v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel:Ljava/lang/String;

    return-object v0
.end method

.method public final extraCallback()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 28
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 29
    iget-object v0, p0, Lo/setFabAnimationMode;->ICustomTabsCallback:Ljava/lang/String;

    return-object v0
.end method

.method public final extraCallback(J)V
    .locals 4

    .line 113
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 114
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 115
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-wide v1, p0, Lo/setFabAnimationMode;->warmup:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 116
    iput-wide p1, p0, Lo/setFabAnimationMode;->warmup:J

    return-void
.end method

.method public final extraCallback(Ljava/lang/Boolean;)V
    .locals 2

    .line 264
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 265
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 266
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-object v1, p0, Lo/setFabAnimationMode;->extraCommand:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/Boolean;Ljava/lang/Boolean;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 267
    iput-object p1, p0, Lo/setFabAnimationMode;->extraCommand:Ljava/lang/Boolean;

    return-void
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 2

    .line 57
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 58
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 59
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-object v1, p0, Lo/setFabAnimationMode;->onPostMessage:Ljava/lang/String;

    invoke-static {v1, p1}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 60
    iput-object p1, p0, Lo/setFabAnimationMode;->onPostMessage:Ljava/lang/String;

    return-void
.end method

.method public final extraCallback(Z)V
    .locals 2

    .line 256
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 257
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 258
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-boolean v1, p0, Lo/setFabAnimationMode;->postMessage:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 259
    iput-boolean p1, p0, Lo/setFabAnimationMode;->postMessage:Z

    return-void
.end method

.method public final extraCommand()J
    .locals 2

    .line 118
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 119
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 120
    iget-wide v0, p0, Lo/setFabAnimationMode;->ICustomTabsService:J

    return-wide v0
.end method

.method public final extraCommand(J)V
    .locals 4

    .line 240
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 241
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 242
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-wide v1, p0, Lo/setFabAnimationMode;->mayLaunchUrl:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 243
    iput-wide p1, p0, Lo/setFabAnimationMode;->mayLaunchUrl:J

    return-void
.end method

.method public final getDefaultImpl()Ljava/lang/String;
    .locals 2

    .line 227
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 228
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 229
    iget-object v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel:Ljava/lang/String;

    const/4 v1, 0x0

    .line 230
    invoke-virtual {p0, v1}, Lo/setFabAnimationMode;->onTransact(Ljava/lang/String;)V

    return-object v0
.end method

.method public final getInterfaceDescriptor()J
    .locals 2

    .line 94
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 95
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 96
    iget-wide v0, p0, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub$Proxy:J

    return-wide v0
.end method

.method public final getInterfaceDescriptor(J)V
    .locals 4

    .line 211
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 212
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 213
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-wide v1, p0, Lo/setFabAnimationMode;->cancel:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 214
    iput-wide p1, p0, Lo/setFabAnimationMode;->cancel:J

    return-void
.end method

.method public final mayLaunchUrl()J
    .locals 2

    .line 148
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 149
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 150
    iget-wide v0, p0, Lo/setFabAnimationMode;->onRelationshipValidationResult:J

    return-wide v0
.end method

.method public final newSession()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 87
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 88
    iget-object v0, p0, Lo/setFabAnimationMode;->onTransact:Ljava/lang/String;

    return-object v0
.end method

.method public final newSession(J)V
    .locals 4

    .line 187
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 188
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 189
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-wide v1, p0, Lo/setFabAnimationMode;->IPostMessageService$Stub:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 190
    iput-wide p1, p0, Lo/setFabAnimationMode;->IPostMessageService$Stub:J

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 1

    .line 12
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 13
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    return-void
.end method

.method public final onMessageChannelReady(J)V
    .locals 4

    .line 81
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 82
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 83
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-wide v1, p0, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 84
    iput-wide p1, p0, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub:J

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 2

    .line 39
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 40
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 41
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 42
    :cond_0
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-object v1, p0, Lo/setFabAnimationMode;->requestPostMessageChannel:Ljava/lang/String;

    invoke-static {v1, p1}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 43
    iput-object p1, p0, Lo/setFabAnimationMode;->requestPostMessageChannel:Ljava/lang/String;

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 2

    .line 137
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 138
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 139
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-boolean v1, p0, Lo/setFabAnimationMode;->newSession:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 140
    iput-boolean p1, p0, Lo/setFabAnimationMode;->newSession:Z

    return-void
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 20
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 21
    iget-object v0, p0, Lo/setFabAnimationMode;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method public final onNavigationEvent(J)V
    .locals 4

    .line 97
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 98
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 99
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-wide v1, p0, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub$Proxy:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 100
    iput-wide p1, p0, Lo/setFabAnimationMode;->ICustomTabsCallback$Stub$Proxy:J

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 31
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 32
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 33
    :cond_0
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-object v1, p0, Lo/setFabAnimationMode;->ICustomTabsCallback:Ljava/lang/String;

    invoke-static {v1, p1}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 34
    iput-object p1, p0, Lo/setFabAnimationMode;->ICustomTabsCallback:Ljava/lang/String;

    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 2

    .line 248
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 249
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 250
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-boolean v1, p0, Lo/setFabAnimationMode;->updateVisuals:Z

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 251
    iput-boolean p1, p0, Lo/setFabAnimationMode;->updateVisuals:Z

    return-void
.end method

.method public final onPostMessage(J)V
    .locals 4

    .line 73
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 74
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 75
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-wide v1, p0, Lo/setFabAnimationMode;->asInterface:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 76
    iput-wide p1, p0, Lo/setFabAnimationMode;->asInterface:J

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;)V
    .locals 2

    .line 22
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 23
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 24
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-object v1, p0, Lo/setFabAnimationMode;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v1, p1}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 25
    iput-object p1, p0, Lo/setFabAnimationMode;->onNavigationEvent:Ljava/lang/String;

    return-void
.end method

.method public final onPostMessage(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 273
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 274
    iget-object v0, p0, Lo/setFabAnimationMode;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    invoke-static {v0, p1}, Lo/setHelperTextEnabled;->ICustomTabsCallback(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    if-eqz p1, :cond_0

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lo/setFabAnimationMode;->ICustomTabsService$Stub$Proxy:Ljava/util/List;

    :cond_1
    return-void
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 10
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 11
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    return v0
.end method

.method public final onRelationshipValidationResult()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 37
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 38
    iget-object v0, p0, Lo/setFabAnimationMode;->requestPostMessageChannel:Ljava/lang/String;

    return-object v0
.end method

.method public final onRelationshipValidationResult(J)V
    .locals 4

    .line 154
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 155
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 156
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-wide v1, p0, Lo/setFabAnimationMode;->getDefaultImpl:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 157
    iput-wide p1, p0, Lo/setFabAnimationMode;->getDefaultImpl:J

    return-void
.end method

.method public final onRelationshipValidationResult(Ljava/lang/String;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 106
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 107
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-object v1, p0, Lo/setFabAnimationMode;->getInterfaceDescriptor:Ljava/lang/String;

    invoke-static {v1, p1}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 108
    iput-object p1, p0, Lo/setFabAnimationMode;->getInterfaceDescriptor:Ljava/lang/String;

    return-void
.end method

.method public final onTransact()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 46
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 47
    iget-object v0, p0, Lo/setFabAnimationMode;->IPostMessageService:Ljava/lang/String;

    return-object v0
.end method

.method public final onTransact(J)V
    .locals 4

    .line 179
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 180
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 181
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-wide v1, p0, Lo/setFabAnimationMode;->ICustomTabsService$Stub:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 182
    iput-wide p1, p0, Lo/setFabAnimationMode;->ICustomTabsService$Stub:J

    return-void
.end method

.method public final onTransact(Ljava/lang/String;)V
    .locals 2

    .line 232
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 233
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 234
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-object v1, p0, Lo/setFabAnimationMode;->INotificationSideChannel:Ljava/lang/String;

    invoke-static {v1, p1}, Lo/setHelperTextEnabled;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 235
    iput-object p1, p0, Lo/setFabAnimationMode;->INotificationSideChannel:Ljava/lang/String;

    return-void
.end method

.method public final postMessage()J
    .locals 2

    .line 151
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 152
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 153
    iget-wide v0, p0, Lo/setFabAnimationMode;->getDefaultImpl:J

    return-wide v0
.end method

.method public final requestPostMessageChannel()Z
    .locals 1

    .line 134
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 135
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 136
    iget-boolean v0, p0, Lo/setFabAnimationMode;->newSession:Z

    return v0
.end method

.method public final setDefaultImpl()J
    .locals 2

    .line 237
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 238
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 239
    iget-wide v0, p0, Lo/setFabAnimationMode;->mayLaunchUrl:J

    return-wide v0
.end method

.method public final updateVisuals()J
    .locals 2

    .line 126
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 127
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 128
    iget-wide v0, p0, Lo/setFabAnimationMode;->validateRelationship:J

    return-wide v0
.end method

.method public final validateRelationship()J
    .locals 2

    .line 192
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 193
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 194
    iget-wide v0, p0, Lo/setFabAnimationMode;->IPostMessageService$Stub$Proxy:J

    return-wide v0
.end method

.method public final warmup()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 103
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 104
    iget-object v0, p0, Lo/setFabAnimationMode;->getInterfaceDescriptor:Ljava/lang/String;

    return-object v0
.end method

.method public final warmup(J)V
    .locals 4

    .line 219
    iget-object v0, p0, Lo/setFabAnimationMode;->extraCallback:Lo/setCheckedIcon;

    .line 220
    invoke-virtual {v0}, Lo/setCheckedIcon;->postMessage()Lo/setShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {v0}, Lo/setChipTextResource;->ICustomTabsCallback()V

    .line 221
    iget-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    iget-wide v1, p0, Lo/setFabAnimationMode;->notify:J

    cmp-long v3, v1, p1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput-boolean v0, p0, Lo/setFabAnimationMode;->INotificationSideChannel$Stub$Proxy:Z

    .line 222
    iput-wide p1, p0, Lo/setFabAnimationMode;->notify:J

    return-void
.end method
