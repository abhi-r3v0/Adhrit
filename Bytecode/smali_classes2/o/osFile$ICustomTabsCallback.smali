.class abstract Lo/osFile$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/osFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "ICustomTabsCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private synthetic extraCallback:Lo/osFile;

.field private onNavigationEvent:Lo/osFile$onRelationshipValidationResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private onPostMessage:I


# direct methods
.method constructor <init>(Lo/osFile;)V
    .locals 0

    .line 760
    iput-object p1, p0, Lo/osFile$ICustomTabsCallback;->extraCallback:Lo/osFile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 761
    iget-object p1, p0, Lo/osFile$ICustomTabsCallback;->extraCallback:Lo/osFile;

    iget-object p1, p1, Lo/osFile;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    iget-object p1, p1, Lo/osFile$onRelationshipValidationResult;->extraCallback:Lo/osFile$onRelationshipValidationResult;

    iput-object p1, p0, Lo/osFile$ICustomTabsCallback;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    const/4 p1, 0x0

    .line 762
    iput-object p1, p0, Lo/osFile$ICustomTabsCallback;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 763
    iget-object p1, p0, Lo/osFile$ICustomTabsCallback;->extraCallback:Lo/osFile;

    iget p1, p1, Lo/osFile;->extraCallback:I

    iput p1, p0, Lo/osFile$ICustomTabsCallback;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .line 766
    iget-object v0, p0, Lo/osFile$ICustomTabsCallback;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    iget-object v1, p0, Lo/osFile$ICustomTabsCallback;->extraCallback:Lo/osFile;

    iget-object v1, v1, Lo/osFile;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final onNavigationEvent()Lo/osFile$onRelationshipValidationResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo/osFile$onRelationshipValidationResult<",
            "TK;TV;>;"
        }
    .end annotation

    .line 770
    iget-object v0, p0, Lo/osFile$ICustomTabsCallback;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    .line 771
    iget-object v1, p0, Lo/osFile$ICustomTabsCallback;->extraCallback:Lo/osFile;

    iget-object v1, v1, Lo/osFile;->onMessageChannelReady:Lo/osFile$onRelationshipValidationResult;

    if-eq v0, v1, :cond_1

    .line 774
    iget-object v1, p0, Lo/osFile$ICustomTabsCallback;->extraCallback:Lo/osFile;

    iget v1, v1, Lo/osFile;->extraCallback:I

    iget v2, p0, Lo/osFile$ICustomTabsCallback;->onPostMessage:I

    if-ne v1, v2, :cond_0

    .line 777
    iget-object v1, v0, Lo/osFile$onRelationshipValidationResult;->extraCallback:Lo/osFile$onRelationshipValidationResult;

    iput-object v1, p0, Lo/osFile$ICustomTabsCallback;->ICustomTabsCallback:Lo/osFile$onRelationshipValidationResult;

    .line 778
    iput-object v0, p0, Lo/osFile$ICustomTabsCallback;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    return-object v0

    .line 775
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 772
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 3

    .line 782
    iget-object v0, p0, Lo/osFile$ICustomTabsCallback;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    if-eqz v0, :cond_0

    .line 785
    iget-object v1, p0, Lo/osFile$ICustomTabsCallback;->extraCallback:Lo/osFile;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lo/osFile;->onMessageChannelReady(Lo/osFile$onRelationshipValidationResult;Z)V

    const/4 v0, 0x0

    .line 786
    iput-object v0, p0, Lo/osFile$ICustomTabsCallback;->onNavigationEvent:Lo/osFile$onRelationshipValidationResult;

    .line 787
    iget-object v0, p0, Lo/osFile$ICustomTabsCallback;->extraCallback:Lo/osFile;

    iget v0, v0, Lo/osFile;->extraCallback:I

    iput v0, p0, Lo/osFile$ICustomTabsCallback;->onPostMessage:I

    return-void

    .line 783
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
