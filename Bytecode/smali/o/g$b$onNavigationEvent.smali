.class public final Lo/g$b$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:I

.field private ICustomTabsService:Z

.field private asBinder:Z

.field private asInterface:I

.field private extraCallback:Lo/SessionDataJsonAdapter;

.field private onMessageChannelReady:I

.field private onNavigationEvent:I

.field private onPostMessage:I

.field private onRelationshipValidationResult:I

.field private onTransact:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a98

    .line 106
    iput v0, p0, Lo/g$b$onNavigationEvent;->ICustomTabsCallback:I

    const v0, 0xc350

    .line 107
    iput v0, p0, Lo/g$b$onNavigationEvent;->onPostMessage:I

    .line 108
    iput v0, p0, Lo/g$b$onNavigationEvent;->onMessageChannelReady:I

    const/16 v0, 0x9c4

    .line 109
    iput v0, p0, Lo/g$b$onNavigationEvent;->onNavigationEvent:I

    const/16 v0, 0x1388

    .line 110
    iput v0, p0, Lo/g$b$onNavigationEvent;->onRelationshipValidationResult:I

    const/4 v0, -0x1

    .line 111
    iput v0, p0, Lo/g$b$onNavigationEvent;->ICustomTabsCallback$Stub:I

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lo/g$b$onNavigationEvent;->onTransact:Z

    const/4 v0, 0x0

    .line 113
    iput v0, p0, Lo/g$b$onNavigationEvent;->asInterface:I

    .line 114
    iput-boolean v0, p0, Lo/g$b$onNavigationEvent;->asBinder:Z

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()Lo/g$b;
    .locals 14

    .line 218
    iget-boolean v0, p0, Lo/g$b$onNavigationEvent;->ICustomTabsService:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    .line 219
    iput-boolean v1, p0, Lo/g$b$onNavigationEvent;->ICustomTabsService:Z

    .line 220
    iget-object v0, p0, Lo/g$b$onNavigationEvent;->extraCallback:Lo/SessionDataJsonAdapter;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lo/SessionDataJsonAdapter;

    const/high16 v2, 0x10000

    invoke-direct {v0, v1, v2}, Lo/SessionDataJsonAdapter;-><init>(ZI)V

    iput-object v0, p0, Lo/g$b$onNavigationEvent;->extraCallback:Lo/SessionDataJsonAdapter;

    .line 223
    :cond_0
    new-instance v0, Lo/g$b;

    iget-object v4, p0, Lo/g$b$onNavigationEvent;->extraCallback:Lo/SessionDataJsonAdapter;

    iget v5, p0, Lo/g$b$onNavigationEvent;->ICustomTabsCallback:I

    iget v6, p0, Lo/g$b$onNavigationEvent;->onPostMessage:I

    iget v7, p0, Lo/g$b$onNavigationEvent;->onMessageChannelReady:I

    iget v8, p0, Lo/g$b$onNavigationEvent;->onNavigationEvent:I

    iget v9, p0, Lo/g$b$onNavigationEvent;->onRelationshipValidationResult:I

    iget v10, p0, Lo/g$b$onNavigationEvent;->ICustomTabsCallback$Stub:I

    iget-boolean v11, p0, Lo/g$b$onNavigationEvent;->onTransact:Z

    iget v12, p0, Lo/g$b$onNavigationEvent;->asInterface:I

    iget-boolean v13, p0, Lo/g$b$onNavigationEvent;->asBinder:Z

    move-object v3, v0

    invoke-direct/range {v3 .. v13}, Lo/g$b;-><init>(Lo/SessionDataJsonAdapter;IIIIIIZIZ)V

    return-object v0
.end method

.method public final onPostMessage(IIII)Lo/g$b$onNavigationEvent;
    .locals 4

    .line 150
    iget-boolean v0, p0, Lo/g$b$onNavigationEvent;->ICustomTabsService:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lo/CheckoutContainerFragment$addFragment$2$$special$$inlined$executeOnResume$1;->ICustomTabsCallback(Z)V

    const-string v0, "0"

    const-string v1, "bufferForPlaybackMs"

    const/4 v2, 0x0

    .line 151
    invoke-static {p3, v2, v1, v0}, Lo/g$b;->extraCallback(IILjava/lang/String;Ljava/lang/String;)V

    const-string v3, "bufferForPlaybackAfterRebufferMs"

    .line 152
    invoke-static {p4, v2, v3, v0}, Lo/g$b;->extraCallback(IILjava/lang/String;Ljava/lang/String;)V

    const-string v0, "minBufferMs"

    .line 154
    invoke-static {p1, p3, v0, v1}, Lo/g$b;->extraCallback(IILjava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {p1, p4, v0, v3}, Lo/g$b;->extraCallback(IILjava/lang/String;Ljava/lang/String;)V

    const-string v1, "maxBufferMs"

    .line 160
    invoke-static {p2, p1, v1, v0}, Lo/g$b;->extraCallback(IILjava/lang/String;Ljava/lang/String;)V

    .line 161
    iput p1, p0, Lo/g$b$onNavigationEvent;->ICustomTabsCallback:I

    .line 162
    iput p1, p0, Lo/g$b$onNavigationEvent;->onPostMessage:I

    .line 163
    iput p2, p0, Lo/g$b$onNavigationEvent;->onMessageChannelReady:I

    .line 164
    iput p3, p0, Lo/g$b$onNavigationEvent;->onNavigationEvent:I

    .line 165
    iput p4, p0, Lo/g$b$onNavigationEvent;->onRelationshipValidationResult:I

    return-object p0
.end method
