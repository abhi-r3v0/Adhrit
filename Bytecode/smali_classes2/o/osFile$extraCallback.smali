.class final Lo/osFile$extraCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/osFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field onNavigationEvent:Lo/osFile$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .line 622
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/osFile$onRelationshipValidationResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;"
        }
    .end annotation

    .line 636
    iget-object v0, p0, Lo/osFile$extraCallback;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 641
    :cond_0
    iget-object v2, v0, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 642
    iput-object v1, v0, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 643
    iget-object v1, v0, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    :goto_0
    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    if-eqz v2, :cond_1

    .line 644
    iput-object v1, v2, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 643
    iget-object v1, v2, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    goto :goto_0

    .line 647
    :cond_1
    iput-object v1, p0, Lo/osFile$extraCallback;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    return-object v0
.end method
