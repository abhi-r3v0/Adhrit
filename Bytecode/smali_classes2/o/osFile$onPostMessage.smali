.class final Lo/osFile$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/osFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onPostMessage"
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
.field ICustomTabsCallback:I

.field extraCallback:I

.field onNavigationEvent:I

.field onPostMessage:Lo/osFile$onRelationshipValidationResult;
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

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final onPostMessage(Lo/osFile$onRelationshipValidationResult;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 687
    iput-object v0, p1, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    iput-object v0, p1, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    iput-object v0, p1, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    const/4 v0, 0x1

    .line 688
    iput v0, p1, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    .line 691
    iget v1, p0, Lo/osFile$onPostMessage;->ICustomTabsCallback:I

    if-lez v1, :cond_0

    iget v2, p0, Lo/osFile$onPostMessage;->extraCallback:I

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_0

    add-int/2addr v2, v0

    .line 692
    iput v2, p0, Lo/osFile$onPostMessage;->extraCallback:I

    sub-int/2addr v1, v0

    .line 693
    iput v1, p0, Lo/osFile$onPostMessage;->ICustomTabsCallback:I

    .line 694
    iget v1, p0, Lo/osFile$onPostMessage;->onNavigationEvent:I

    add-int/2addr v1, v0

    iput v1, p0, Lo/osFile$onPostMessage;->onNavigationEvent:I

    .line 697
    :cond_0
    iget-object v1, p0, Lo/osFile$onPostMessage;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    iput-object v1, p1, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 698
    iput-object p1, p0, Lo/osFile$onPostMessage;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    .line 699
    iget p1, p0, Lo/osFile$onPostMessage;->extraCallback:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/osFile$onPostMessage;->extraCallback:I

    .line 702
    iget v1, p0, Lo/osFile$onPostMessage;->ICustomTabsCallback:I

    if-lez v1, :cond_1

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_1

    add-int/2addr p1, v0

    .line 703
    iput p1, p0, Lo/osFile$onPostMessage;->extraCallback:I

    sub-int/2addr v1, v0

    .line 704
    iput v1, p0, Lo/osFile$onPostMessage;->ICustomTabsCallback:I

    .line 705
    iget p1, p0, Lo/osFile$onPostMessage;->onNavigationEvent:I

    add-int/2addr p1, v0

    iput p1, p0, Lo/osFile$onPostMessage;->onNavigationEvent:I

    :cond_1
    const/4 p1, 0x4

    .line 721
    :goto_0
    iget v1, p0, Lo/osFile$onPostMessage;->extraCallback:I

    add-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    .line 722
    iget v1, p0, Lo/osFile$onPostMessage;->onNavigationEvent:I

    if-nez v1, :cond_2

    .line 724
    iget-object v1, p0, Lo/osFile$onPostMessage;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    .line 725
    iget-object v2, v1, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 726
    iget-object v3, v2, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 727
    iget-object v4, v3, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    iput-object v4, v2, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 728
    iput-object v2, p0, Lo/osFile$onPostMessage;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    .line 730
    iput-object v3, v2, Lo/osFile$onRelationshipValidationResult;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    .line 731
    iput-object v1, v2, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    .line 732
    iget v4, v1, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    add-int/2addr v4, v0

    iput v4, v2, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    .line 733
    iput-object v2, v3, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 734
    iput-object v2, v1, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    if-ne v1, v0, :cond_3

    .line 737
    iget-object v1, p0, Lo/osFile$onPostMessage;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    .line 738
    iget-object v3, v1, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 739
    iput-object v3, p0, Lo/osFile$onPostMessage;->onPostMessage:Lo/osFile$onRelationshipValidationResult;

    .line 741
    iput-object v1, v3, Lo/osFile$onRelationshipValidationResult;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    .line 742
    iget v4, v1, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    add-int/2addr v4, v0

    iput v4, v3, Lo/osFile$onRelationshipValidationResult;->onRelationshipValidationResult:I

    .line 743
    iput-object v3, v1, Lo/osFile$onRelationshipValidationResult;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 744
    iput v2, p0, Lo/osFile$onPostMessage;->onNavigationEvent:I

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    .line 746
    iput v2, p0, Lo/osFile$onPostMessage;->onNavigationEvent:I

    :cond_4
    :goto_1
    shl-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
