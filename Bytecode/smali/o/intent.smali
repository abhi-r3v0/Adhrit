.class public final Lo/intent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/intent$onPostMessage;,
        Lo/intent$extraCallback;,
        Lo/intent$onNavigationEvent;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Z

.field final ICustomTabsCallback$Stub:I

.field final ICustomTabsCallback$Stub$Proxy:Z

.field final ICustomTabsService:Lo/intent$extraCallback;

.field final ICustomTabsService$Stub:Z

.field ICustomTabsService$Stub$Proxy:Z

.field final INotificationSideChannel:I

.field public IPostMessageService:Z

.field public final IPostMessageService$Stub:Z

.field asBinder:Z

.field final asInterface:Z

.field public final cancel:Z

.field final extraCallback:Lo/ArrayCreatingInputMerger$extraCallback;

.field final extraCommand:J

.field final getInterfaceDescriptor:Z

.field final mayLaunchUrl:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final newSession:Lo/setPivotX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/setPivotX<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final onMessageChannelReady:Z

.field final onNavigationEvent:Lo/ArrayCreatingInputMerger;

.field final onPostMessage:Z

.field final onRelationshipValidationResult:I

.field final onTransact:I

.field final postMessage:I

.field final requestPostMessageChannel:Z

.field final updateVisuals:Z

.field public validateRelationship:Z

.field final warmup:Z


# direct methods
.method private constructor <init>(Lo/intent$onNavigationEvent;)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lo/intent;->ICustomTabsCallback:Z

    const/4 v1, 0x0

    .line 67
    iput-object v1, p0, Lo/intent;->extraCallback:Lo/ArrayCreatingInputMerger$extraCallback;

    .line 68
    iput-boolean v0, p0, Lo/intent;->onPostMessage:Z

    .line 69
    iput-object v1, p0, Lo/intent;->onNavigationEvent:Lo/ArrayCreatingInputMerger;

    .line 70
    iput-boolean v0, p0, Lo/intent;->onMessageChannelReady:Z

    .line 71
    iput-boolean v0, p0, Lo/intent;->asInterface:Z

    .line 72
    iput v0, p0, Lo/intent;->onRelationshipValidationResult:I

    .line 73
    iput v0, p0, Lo/intent;->ICustomTabsCallback$Stub:I

    .line 74
    iput-boolean v0, p0, Lo/intent;->asBinder:Z

    .line 9212
    iget v2, p1, Lo/intent$onNavigationEvent;->onMessageChannelReady:I

    .line 75
    iput v2, p0, Lo/intent;->onTransact:I

    .line 76
    iput-boolean v0, p0, Lo/intent;->ICustomTabsCallback$Stub$Proxy:Z

    .line 77
    iput-boolean v0, p0, Lo/intent;->getInterfaceDescriptor:Z

    .line 79
    new-instance v2, Lo/intent$onPostMessage;

    invoke-direct {v2}, Lo/intent$onPostMessage;-><init>()V

    iput-object v2, p0, Lo/intent;->ICustomTabsService:Lo/intent$extraCallback;

    .line 83
    iput-object v1, p0, Lo/intent;->newSession:Lo/setPivotX;

    .line 84
    iput-boolean v0, p0, Lo/intent;->warmup:Z

    .line 85
    iput-boolean v0, p0, Lo/intent;->updateVisuals:Z

    .line 86
    iput v0, p0, Lo/intent;->postMessage:I

    .line 87
    iget-object v1, p1, Lo/intent$onNavigationEvent;->extraCallback:Lo/setPivotX;

    iput-object v1, p0, Lo/intent;->mayLaunchUrl:Lo/setPivotX;

    .line 88
    iput-boolean v0, p0, Lo/intent;->requestPostMessageChannel:Z

    const-wide/16 v1, 0x0

    .line 89
    iput-wide v1, p0, Lo/intent;->extraCommand:J

    .line 90
    iput-boolean v0, p0, Lo/intent;->ICustomTabsService$Stub$Proxy:Z

    .line 91
    iput-boolean v0, p0, Lo/intent;->IPostMessageService:Z

    .line 92
    iget-boolean v1, p1, Lo/intent$onNavigationEvent;->ICustomTabsCallback:Z

    iput-boolean v1, p0, Lo/intent;->validateRelationship:Z

    .line 93
    iget-boolean v1, p1, Lo/intent$onNavigationEvent;->onNavigationEvent:Z

    iput-boolean v1, p0, Lo/intent;->ICustomTabsService$Stub:Z

    .line 94
    iput-boolean v0, p0, Lo/intent;->IPostMessageService$Stub:Z

    .line 95
    iput-boolean v0, p0, Lo/intent;->cancel:Z

    .line 17212
    iget p1, p1, Lo/intent$onNavigationEvent;->onPostMessage:I

    .line 96
    iput p1, p0, Lo/intent;->INotificationSideChannel:I

    return-void
.end method

.method synthetic constructor <init>(Lo/intent$onNavigationEvent;B)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lo/intent;-><init>(Lo/intent$onNavigationEvent;)V

    return-void
.end method
