.class Lo/getVolumeAttributes$onRelationshipValidationResult;
.super Lo/getVolumeAttributes$asInterface;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getVolumeAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onRelationshipValidationResult"
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/getLong;

.field private onMessageChannelReady:Lo/getLong;

.field private onPostMessage:Lo/getLong;


# direct methods
.method constructor <init>(Lo/getVolumeAttributes;Landroid/view/WindowInsets;)V
    .locals 0

    .line 794
    invoke-direct {p0, p1, p2}, Lo/getVolumeAttributes$asInterface;-><init>(Lo/getVolumeAttributes;Landroid/view/WindowInsets;)V

    const/4 p1, 0x0

    .line 789
    iput-object p1, p0, Lo/getVolumeAttributes$onRelationshipValidationResult;->ICustomTabsCallback:Lo/getLong;

    .line 790
    iput-object p1, p0, Lo/getVolumeAttributes$onRelationshipValidationResult;->onMessageChannelReady:Lo/getLong;

    .line 791
    iput-object p1, p0, Lo/getVolumeAttributes$onRelationshipValidationResult;->onPostMessage:Lo/getLong;

    return-void
.end method

.method constructor <init>(Lo/getVolumeAttributes;Lo/getVolumeAttributes$onRelationshipValidationResult;)V
    .locals 0

    .line 798
    invoke-direct {p0, p1, p2}, Lo/getVolumeAttributes$asInterface;-><init>(Lo/getVolumeAttributes;Lo/getVolumeAttributes$asInterface;)V

    const/4 p1, 0x0

    .line 789
    iput-object p1, p0, Lo/getVolumeAttributes$onRelationshipValidationResult;->ICustomTabsCallback:Lo/getLong;

    .line 790
    iput-object p1, p0, Lo/getVolumeAttributes$onRelationshipValidationResult;->onMessageChannelReady:Lo/getLong;

    .line 791
    iput-object p1, p0, Lo/getVolumeAttributes$onRelationshipValidationResult;->onPostMessage:Lo/getLong;

    return-void
.end method


# virtual methods
.method extraCallback(IIII)Lo/getVolumeAttributes;
    .locals 1

    .line 832
    iget-object v0, p0, Lo/getVolumeAttributes$asBinder;->onNavigationEvent:Landroid/view/WindowInsets;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p1

    invoke-static {p1}, Lo/getVolumeAttributes;->onPostMessage(Landroid/view/WindowInsets;)Lo/getVolumeAttributes;

    move-result-object p1

    return-object p1
.end method
