.class Lo/requestPostMessageChannel$onMessageChannelReady;
.super Lo/requestPostMessageChannel$onRelationshipValidationResult;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/requestPostMessageChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field private final onMessageChannelReady:Lo/createItem;


# direct methods
.method constructor <init>(Lo/createItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 433
    invoke-direct {p0, v0}, Lo/requestPostMessageChannel$onRelationshipValidationResult;-><init>(Lo/requestPostMessageChannel$3;)V

    .line 434
    iput-object p1, p0, Lo/requestPostMessageChannel$onMessageChannelReady;->onMessageChannelReady:Lo/createItem;

    return-void
.end method


# virtual methods
.method public ICustomTabsCallback()V
    .locals 1

    .line 444
    iget-object v0, p0, Lo/requestPostMessageChannel$onMessageChannelReady;->onMessageChannelReady:Lo/createItem;

    invoke-virtual {v0}, Lo/createItem;->stop()V

    return-void
.end method

.method public onMessageChannelReady()V
    .locals 1

    .line 439
    iget-object v0, p0, Lo/requestPostMessageChannel$onMessageChannelReady;->onMessageChannelReady:Lo/createItem;

    invoke-virtual {v0}, Lo/createItem;->start()V

    return-void
.end method
