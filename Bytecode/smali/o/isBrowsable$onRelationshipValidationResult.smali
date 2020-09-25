.class final Lo/isBrowsable$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isBrowsable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onRelationshipValidationResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Lo/isBrowsable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isBrowsable<",
            "TV;>;"
        }
    .end annotation
.end field

.field final onPostMessage:Lo/getBatteryLevel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/getBatteryLevel<",
            "+TV;>;"
        }
    .end annotation
.end field


# virtual methods
.method public final run()V
    .locals 3

    .line 274
    iget-object v0, p0, Lo/isBrowsable$onRelationshipValidationResult;->ICustomTabsCallback:Lo/isBrowsable;

    iget-object v0, v0, Lo/isBrowsable;->onNavigationEvent:Ljava/lang/Object;

    if-eq v0, p0, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lo/isBrowsable$onRelationshipValidationResult;->onPostMessage:Lo/getBatteryLevel;

    invoke-static {v0}, Lo/isBrowsable;->ICustomTabsCallback(Lo/getBatteryLevel;)Ljava/lang/Object;

    move-result-object v0

    .line 279
    sget-object v1, Lo/isBrowsable;->onMessageChannelReady:Lo/isBrowsable$onMessageChannelReady;

    iget-object v2, p0, Lo/isBrowsable$onRelationshipValidationResult;->ICustomTabsCallback:Lo/isBrowsable;

    invoke-virtual {v1, v2, p0, v0}, Lo/isBrowsable$onMessageChannelReady;->extraCallback(Lo/isBrowsable;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lo/isBrowsable$onRelationshipValidationResult;->ICustomTabsCallback:Lo/isBrowsable;

    invoke-static {v0}, Lo/isBrowsable;->extraCallback(Lo/isBrowsable;)V

    :cond_1
    return-void
.end method
