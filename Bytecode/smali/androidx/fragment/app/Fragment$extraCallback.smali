.class Landroidx/fragment/app/Fragment$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/fragment/app/Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field ICustomTabsCallback:I

.field ICustomTabsCallback$Stub:Ljava/lang/Object;

.field ICustomTabsCallback$Stub$Proxy:Ljava/lang/Boolean;

.field ICustomTabsService:Lo/build;

.field asBinder:Ljava/lang/Object;

.field asInterface:Ljava/lang/Object;

.field extraCallback:I

.field getInterfaceDescriptor:Lo/build;

.field mayLaunchUrl:Z

.field newSession:Ljava/lang/Object;

.field onMessageChannelReady:Landroid/view/View;

.field onNavigationEvent:I

.field onPostMessage:Landroid/animation/Animator;

.field onRelationshipValidationResult:Ljava/lang/Object;

.field onTransact:Ljava/lang/Object;

.field postMessage:Z

.field requestPostMessageChannel:Landroidx/fragment/app/Fragment$onNavigationEvent;

.field warmup:Ljava/lang/Boolean;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 3086
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3106
    iput-object v0, p0, Landroidx/fragment/app/Fragment$extraCallback;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    .line 3107
    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/fragment/app/Fragment$extraCallback;->asInterface:Ljava/lang/Object;

    .line 3108
    iput-object v0, p0, Landroidx/fragment/app/Fragment$extraCallback;->onRelationshipValidationResult:Ljava/lang/Object;

    .line 3109
    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/fragment/app/Fragment$extraCallback;->onTransact:Ljava/lang/Object;

    .line 3110
    iput-object v0, p0, Landroidx/fragment/app/Fragment$extraCallback;->asBinder:Ljava/lang/Object;

    .line 3111
    sget-object v1, Landroidx/fragment/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/fragment/app/Fragment$extraCallback;->newSession:Ljava/lang/Object;

    .line 3115
    iput-object v0, p0, Landroidx/fragment/app/Fragment$extraCallback;->getInterfaceDescriptor:Lo/build;

    .line 3116
    iput-object v0, p0, Landroidx/fragment/app/Fragment$extraCallback;->ICustomTabsService:Lo/build;

    return-void
.end method
