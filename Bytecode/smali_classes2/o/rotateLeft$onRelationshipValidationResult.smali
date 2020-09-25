.class final Lo/rotateLeft$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/verifyInsideTransaction$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/rotateLeft;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "onRelationshipValidationResult"
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/rotateLeft;

.field private onPostMessage:Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent<",
            "TRespT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lo/rotateLeft;Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent<",
            "TRespT;>;)V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lo/rotateLeft$onRelationshipValidationResult;->onNavigationEvent:Lo/rotateLeft;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p2, p0, Lo/rotateLeft$onRelationshipValidationResult;->onPostMessage:Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;

    return-void
.end method

.method synthetic constructor <init>(Lo/rotateLeft;Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;B)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lo/rotateLeft$onRelationshipValidationResult;-><init>(Lo/rotateLeft;Lo/resetPreviouslyActiveTrackedQueries$onNavigationEvent;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/verifyInsideTransaction;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lo/rotateLeft$onRelationshipValidationResult;->onNavigationEvent:Lo/rotateLeft;

    invoke-static {v0}, Lo/rotateLeft;->onPostMessage(Lo/rotateLeft;)Lo/colorFlip;

    move-result-object v0

    invoke-static {p1}, Lo/saveNested;->onPostMessage(Lo/verifyInsideTransaction;)Lo/emptyMap;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/colorFlip;->onMessageChannelReady(Lo/emptyMap;)V

    return-void
.end method
