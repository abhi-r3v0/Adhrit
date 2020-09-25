.class public final Lo/setInstantiation;
.super Lo/getInitialPrefetchItemCount$extraCallback;


# instance fields
.field public final onMessageChannelReady:J

.field public final onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:I

.field public final onRelationshipValidationResult:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lo/getInitialPrefetchItemCount$extraCallback;-><init>(ILjava/lang/String;)V

    iput p3, p0, Lo/setInstantiation;->onPostMessage:I

    iput-wide p4, p0, Lo/setInstantiation;->onMessageChannelReady:J

    iput-object p6, p0, Lo/setInstantiation;->onNavigationEvent:Ljava/lang/String;

    iput-object p7, p0, Lo/setInstantiation;->onRelationshipValidationResult:Ljava/lang/String;

    return-void
.end method
