.class final Lo/setCheckedIconEnabledResource;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Ljava/lang/String;

.field private final synthetic extraCallback:Lo/setChipIconSize;

.field private final synthetic onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic onNavigationEvent:Ljava/lang/String;

.field private final synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lo/setChipIconSize;Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lo/setCheckedIconEnabledResource;->extraCallback:Lo/setChipIconSize;

    iput-object p2, p0, Lo/setCheckedIconEnabledResource;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lo/setCheckedIconEnabledResource;->onNavigationEvent:Ljava/lang/String;

    iput-object p4, p0, Lo/setCheckedIconEnabledResource;->ICustomTabsCallback:Ljava/lang/String;

    iput-object p5, p0, Lo/setCheckedIconEnabledResource;->onPostMessage:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lo/setCheckedIconEnabledResource;->extraCallback:Lo/setChipIconSize;

    iget-object v0, v0, Lo/setChipIconSize;->validateRelationship:Lo/setCheckedIcon;

    .line 3
    invoke-virtual {v0}, Lo/setCheckedIcon;->IPostMessageService$Stub()Lo/setChipSpacingResource;

    move-result-object v0

    iget-object v1, p0, Lo/setCheckedIconEnabledResource;->onMessageChannelReady:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lo/setCheckedIconEnabledResource;->onNavigationEvent:Ljava/lang/String;

    iget-object v3, p0, Lo/setCheckedIconEnabledResource;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v4, p0, Lo/setCheckedIconEnabledResource;->onPostMessage:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1, v2, v3, v4}, Lo/setChipSpacingResource;->onMessageChannelReady(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
