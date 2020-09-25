.class final Lo/findViewHolderForAdapterPosition$onRelationshipValidationResult;
.super Lo/isUserInitiated;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/findViewHolderForAdapterPosition;->onNavigationEvent(Lo/setSessionPersistenceKey;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003H\u0086@"
    }
    d2 = {
        "waitTillLayoutComplete",
        "",
        "continuation",
        "Lkotlin/coroutines/Continuation;",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Ljava/lang/Object;

.field private synthetic extraCallback:Lo/findViewHolderForAdapterPosition;

.field onMessageChannelReady:I

.field synthetic onPostMessage:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lo/findViewHolderForAdapterPosition;Lo/setSessionPersistenceKey;)V
    .locals 0

    iput-object p1, p0, Lo/findViewHolderForAdapterPosition$onRelationshipValidationResult;->extraCallback:Lo/findViewHolderForAdapterPosition;

    invoke-direct {p0, p2}, Lo/isUserInitiated;-><init>(Lo/setSessionPersistenceKey;)V

    return-void
.end method


# virtual methods
.method public final extraCallback(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lo/findViewHolderForAdapterPosition$onRelationshipValidationResult;->onPostMessage:Ljava/lang/Object;

    iget p1, p0, Lo/findViewHolderForAdapterPosition$onRelationshipValidationResult;->onMessageChannelReady:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lo/findViewHolderForAdapterPosition$onRelationshipValidationResult;->onMessageChannelReady:I

    iget-object p1, p0, Lo/findViewHolderForAdapterPosition$onRelationshipValidationResult;->extraCallback:Lo/findViewHolderForAdapterPosition;

    invoke-virtual {p1, p0}, Lo/findViewHolderForAdapterPosition;->onNavigationEvent(Lo/setSessionPersistenceKey;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
