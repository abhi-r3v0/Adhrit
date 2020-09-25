.class final Lo/sendExtras$3;
.super Lo/onActiveChanged;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sendExtras;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Ljava/util/ArrayList;

.field final synthetic asInterface:Lo/sendExtras;

.field final synthetic extraCallback:Ljava/lang/Object;

.field final synthetic onMessageChannelReady:Ljava/lang/Object;

.field final synthetic onNavigationEvent:Ljava/lang/Object;

.field final synthetic onPostMessage:Ljava/util/ArrayList;

.field final synthetic onRelationshipValidationResult:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lo/sendExtras;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lo/sendExtras$3;->asInterface:Lo/sendExtras;

    iput-object p2, p0, Lo/sendExtras$3;->extraCallback:Ljava/lang/Object;

    iput-object p3, p0, Lo/sendExtras$3;->onPostMessage:Ljava/util/ArrayList;

    iput-object p4, p0, Lo/sendExtras$3;->onMessageChannelReady:Ljava/lang/Object;

    iput-object p5, p0, Lo/sendExtras$3;->ICustomTabsCallback:Ljava/util/ArrayList;

    iput-object p6, p0, Lo/sendExtras$3;->onNavigationEvent:Ljava/lang/Object;

    iput-object p7, p0, Lo/sendExtras$3;->onRelationshipValidationResult:Ljava/util/ArrayList;

    invoke-direct {p0}, Lo/onActiveChanged;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/fromQueueItem;)V
    .locals 0

    .line 238
    invoke-virtual {p1, p0}, Lo/fromQueueItem;->onMessageChannelReady(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    return-void
.end method

.method public final onNavigationEvent(Lo/fromQueueItem;)V
    .locals 3

    .line 225
    iget-object p1, p0, Lo/sendExtras$3;->extraCallback:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 226
    iget-object v1, p0, Lo/sendExtras$3;->asInterface:Lo/sendExtras;

    iget-object v2, p0, Lo/sendExtras$3;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lo/getVolumeControl;->onNavigationEvent(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 228
    :cond_0
    iget-object p1, p0, Lo/sendExtras$3;->onMessageChannelReady:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 229
    iget-object v1, p0, Lo/sendExtras$3;->asInterface:Lo/sendExtras;

    iget-object v2, p0, Lo/sendExtras$3;->ICustomTabsCallback:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lo/getVolumeControl;->onNavigationEvent(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 231
    :cond_1
    iget-object p1, p0, Lo/sendExtras$3;->onNavigationEvent:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 232
    iget-object v1, p0, Lo/sendExtras$3;->asInterface:Lo/sendExtras;

    iget-object v2, p0, Lo/sendExtras$3;->onRelationshipValidationResult:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v2, v0}, Lo/getVolumeControl;->onNavigationEvent(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
